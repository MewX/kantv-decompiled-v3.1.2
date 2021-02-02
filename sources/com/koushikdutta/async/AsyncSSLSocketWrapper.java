package com.koushikdutta.async;

import android.os.Build.VERSION;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.util.Allocator;
import com.koushikdutta.async.wrapper.AsyncSocketWrapper;
import java.nio.ByteBuffer;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLEngineResult.HandshakeStatus;
import javax.net.ssl.SSLEngineResult.Status;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class AsyncSSLSocketWrapper implements AsyncSocketWrapper, AsyncSSLSocket {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static SSLContext defaultSSLContext;
    boolean clientMode;
    final DataCallback dataCallback = new DataCallback() {
        final Allocator allocator = new Allocator().setMinAlloc(8192);
        final ByteBufferList buffered = new ByteBufferList();

        public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            if (!AsyncSSLSocketWrapper.this.mUnwrapping) {
                try {
                    AsyncSSLSocketWrapper.this.mUnwrapping = true;
                    byteBufferList.get(this.buffered);
                    if (this.buffered.hasRemaining()) {
                        this.buffered.add(this.buffered.getAll());
                    }
                    ByteBuffer byteBuffer = ByteBufferList.EMPTY_BYTEBUFFER;
                    while (true) {
                        if (byteBuffer.remaining() == 0 && this.buffered.size() > 0) {
                            byteBuffer = this.buffered.remove();
                        }
                        int remaining = byteBuffer.remaining();
                        int remaining2 = AsyncSSLSocketWrapper.this.pending.remaining();
                        ByteBuffer allocate = this.allocator.allocate();
                        SSLEngineResult unwrap = AsyncSSLSocketWrapper.this.engine.unwrap(byteBuffer, allocate);
                        AsyncSSLSocketWrapper.this.addToPending(AsyncSSLSocketWrapper.this.pending, allocate);
                        this.allocator.track((long) (AsyncSSLSocketWrapper.this.pending.remaining() - remaining2));
                        int i = -1;
                        if (unwrap.getStatus() == Status.BUFFER_OVERFLOW) {
                            this.allocator.setMinAlloc(this.allocator.getMinAlloc() * 2);
                        } else if (unwrap.getStatus() == Status.BUFFER_UNDERFLOW) {
                            this.buffered.addFirst(byteBuffer);
                            if (this.buffered.size() <= 1) {
                                break;
                            }
                            this.buffered.addFirst(this.buffered.getAll());
                            byteBuffer = ByteBufferList.EMPTY_BYTEBUFFER;
                        } else {
                            i = remaining;
                        }
                        AsyncSSLSocketWrapper.this.handleHandshakeStatus(unwrap.getHandshakeStatus());
                        if (byteBuffer.remaining() == i && remaining2 == AsyncSSLSocketWrapper.this.pending.remaining()) {
                            this.buffered.addFirst(byteBuffer);
                            break;
                        }
                    }
                    AsyncSSLSocketWrapper.this.onDataAvailable();
                } catch (SSLException e) {
                    e.printStackTrace();
                    AsyncSSLSocketWrapper.this.report(e);
                } catch (Throwable th) {
                    AsyncSSLSocketWrapper.this.mUnwrapping = false;
                    throw th;
                }
                AsyncSSLSocketWrapper.this.mUnwrapping = false;
            }
        }
    };
    SSLEngine engine;
    boolean finishedHandshake;
    HandshakeCallback handshakeCallback;
    HostnameVerifier hostnameVerifier;
    DataCallback mDataCallback;
    CompletedCallback mEndCallback;
    Exception mEndException;
    boolean mEnded;
    private String mHost;
    private int mPort;
    BufferedDataSink mSink;
    AsyncSocket mSocket;
    boolean mUnwrapping;
    private boolean mWrapping;
    WritableCallback mWriteableCallback;
    X509Certificate[] peerCertificates;
    final ByteBufferList pending = new ByteBufferList();
    TrustManager[] trustManagers;
    ByteBufferList writeList = new ByteBufferList();

    public interface HandshakeCallback {
        void onHandshakeCompleted(Exception exc, AsyncSSLSocket asyncSSLSocket);
    }

    public String charset() {
        return null;
    }

    static {
        try {
            if (VERSION.SDK_INT > 15) {
                defaultSSLContext = SSLContext.getInstance("Default");
                return;
            }
            throw new Exception();
        } catch (Exception e) {
            try {
                defaultSSLContext = SSLContext.getInstance("TLS");
                defaultSSLContext.init(null, new TrustManager[]{new X509TrustManager() {
                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    public X509Certificate[] getAcceptedIssuers() {
                        return new X509Certificate[0];
                    }

                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                        for (X509Certificate x509Certificate : x509CertificateArr) {
                            if (!(x509Certificate == null || x509Certificate.getCriticalExtensionOIDs() == null)) {
                                x509Certificate.getCriticalExtensionOIDs().remove("2.5.29.15");
                            }
                        }
                    }
                }}, null);
            } catch (Exception e2) {
                e.printStackTrace();
                e2.printStackTrace();
            }
        }
    }

    public static SSLContext getDefaultSSLContext() {
        return defaultSSLContext;
    }

    public static void handshake(AsyncSocket asyncSocket, String str, int i, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier2, boolean z, HandshakeCallback handshakeCallback2) {
        final HandshakeCallback handshakeCallback3 = handshakeCallback2;
        AsyncSSLSocketWrapper asyncSSLSocketWrapper = new AsyncSSLSocketWrapper(asyncSocket, str, i, sSLEngine, trustManagerArr, hostnameVerifier2, z);
        asyncSSLSocketWrapper.handshakeCallback = handshakeCallback3;
        AnonymousClass2 r1 = new CompletedCallback() {
            public void onCompleted(Exception exc) {
                if (exc != null) {
                    handshakeCallback3.onHandshakeCompleted(exc, null);
                } else {
                    handshakeCallback3.onHandshakeCompleted(new SSLException("socket closed during handshake"), null);
                }
            }
        };
        AsyncSocket asyncSocket2 = asyncSocket;
        asyncSocket.setClosedCallback(r1);
        try {
            asyncSSLSocketWrapper.engine.beginHandshake();
            asyncSSLSocketWrapper.handleHandshakeStatus(asyncSSLSocketWrapper.engine.getHandshakeStatus());
        } catch (SSLException e) {
            asyncSSLSocketWrapper.report(e);
        }
    }

    private AsyncSSLSocketWrapper(AsyncSocket asyncSocket, String str, int i, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier2, boolean z) {
        this.mSocket = asyncSocket;
        this.hostnameVerifier = hostnameVerifier2;
        this.clientMode = z;
        this.trustManagers = trustManagerArr;
        this.engine = sSLEngine;
        this.mHost = str;
        this.mPort = i;
        this.engine.setUseClientMode(z);
        this.mSink = new BufferedDataSink(asyncSocket);
        this.mSink.setWriteableCallback(new WritableCallback() {
            public void onWriteable() {
                if (AsyncSSLSocketWrapper.this.mWriteableCallback != null) {
                    AsyncSSLSocketWrapper.this.mWriteableCallback.onWriteable();
                }
            }
        });
        this.mSocket.setEndCallback(new CompletedCallback() {
            public void onCompleted(Exception exc) {
                if (!AsyncSSLSocketWrapper.this.mEnded) {
                    AsyncSSLSocketWrapper asyncSSLSocketWrapper = AsyncSSLSocketWrapper.this;
                    asyncSSLSocketWrapper.mEnded = true;
                    asyncSSLSocketWrapper.mEndException = exc;
                    if (!asyncSSLSocketWrapper.pending.hasRemaining() && AsyncSSLSocketWrapper.this.mEndCallback != null) {
                        AsyncSSLSocketWrapper.this.mEndCallback.onCompleted(exc);
                    }
                }
            }
        });
        this.mSocket.setDataCallback(this.dataCallback);
    }

    public void onDataAvailable() {
        Util.emitAllData(this, this.pending);
        if (this.mEnded && !this.pending.hasRemaining()) {
            CompletedCallback completedCallback = this.mEndCallback;
            if (completedCallback != null) {
                completedCallback.onCompleted(this.mEndException);
            }
        }
    }

    public SSLEngine getSSLEngine() {
        return this.engine;
    }

    /* access modifiers changed from: 0000 */
    public void addToPending(ByteBufferList byteBufferList, ByteBuffer byteBuffer) {
        byteBuffer.flip();
        if (byteBuffer.hasRemaining()) {
            byteBufferList.add(byteBuffer);
        } else {
            ByteBufferList.reclaim(byteBuffer);
        }
    }

    public void end() {
        this.mSocket.end();
    }

    public String getHost() {
        return this.mHost;
    }

    public int getPort() {
        return this.mPort;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:39:?, code lost:
        r10.finishedHandshake = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00d5, code lost:
        if (r3 != false) goto L_0x00e9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00d7, code lost:
        r11 = new com.koushikdutta.async.AsyncSSLException(r5);
        report(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00e3, code lost:
        if (r11.getIgnore() == false) goto L_0x00e6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00e6, code lost:
        throw r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0105, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0106, code lost:
        report(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x010a, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x010b, code lost:
        report(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x010f, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0116, code lost:
        throw new java.lang.RuntimeException(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0105 A[ExcHandler: AsyncSSLException (r11v3 'e' com.koushikdutta.async.AsyncSSLException A[CUSTOM_DECLARE]), Splitter:B:9:0x0024] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x010f A[ExcHandler: NoSuchAlgorithmException (r11v1 'e' java.security.NoSuchAlgorithmException A[CUSTOM_DECLARE]), Splitter:B:9:0x0024] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void handleHandshakeStatus(javax.net.ssl.SSLEngineResult.HandshakeStatus r11) {
        /*
            r10 = this;
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_TASK
            if (r11 != r0) goto L_0x000d
            javax.net.ssl.SSLEngine r0 = r10.engine
            java.lang.Runnable r0 = r0.getDelegatedTask()
            r0.run()
        L_0x000d:
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_WRAP
            if (r11 != r0) goto L_0x0016
            com.koushikdutta.async.ByteBufferList r0 = r10.writeList
            r10.write(r0)
        L_0x0016:
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NEED_UNWRAP
            if (r11 != r0) goto L_0x0024
            com.koushikdutta.async.callback.DataCallback r11 = r10.dataCallback
            com.koushikdutta.async.ByteBufferList r0 = new com.koushikdutta.async.ByteBufferList
            r0.<init>()
            r11.onDataAvailable(r10, r0)
        L_0x0024:
            boolean r11 = r10.finishedHandshake     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            if (r11 != 0) goto L_0x010e
            javax.net.ssl.SSLEngine r11 = r10.engine     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r11 = r11.getHandshakeStatus()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            if (r11 == r0) goto L_0x003c
            javax.net.ssl.SSLEngine r11 = r10.engine     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r11 = r11.getHandshakeStatus()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLEngineResult$HandshakeStatus r0 = javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            if (r11 != r0) goto L_0x010e
        L_0x003c:
            boolean r11 = r10.clientMode     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r0 = 1
            r1 = 0
            if (r11 == 0) goto L_0x00e7
            javax.net.ssl.TrustManager[] r11 = r10.trustManagers     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            if (r11 != 0) goto L_0x0058
            java.lang.String r11 = javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            javax.net.ssl.TrustManagerFactory r11 = javax.net.ssl.TrustManagerFactory.getInstance(r11)     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r2 = r1
            java.security.KeyStore r2 = (java.security.KeyStore) r2     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r11.init(r2)     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            javax.net.ssl.TrustManager[] r11 = r11.getTrustManagers()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
        L_0x0058:
            int r2 = r11.length     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r3 = 0
            r5 = r1
            r4 = 0
        L_0x005c:
            if (r4 >= r2) goto L_0x00d3
            r6 = r11[r4]     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            javax.net.ssl.X509TrustManager r6 = (javax.net.ssl.X509TrustManager) r6     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLEngine r7 = r10.engine     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLSession r7 = r7.getSession()     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.security.cert.Certificate[] r7 = r7.getPeerCertificates()     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.security.cert.X509Certificate[] r7 = (java.security.cert.X509Certificate[]) r7     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.security.cert.X509Certificate[] r7 = (java.security.cert.X509Certificate[]) r7     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r10.peerCertificates = r7     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.security.cert.X509Certificate[] r7 = r10.peerCertificates     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r8 = "SSL"
            r6.checkServerTrusted(r7, r8)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r6 = r10.mHost     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            if (r6 == 0) goto L_0x00cb
            javax.net.ssl.HostnameVerifier r6 = r10.hostnameVerifier     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            if (r6 != 0) goto L_0x009c
            org.apache.http.conn.ssl.StrictHostnameVerifier r6 = new org.apache.http.conn.ssl.StrictHostnameVerifier     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r6.<init>()     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r7 = r10.mHost     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.security.cert.X509Certificate[] r8 = r10.peerCertificates     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r8 = r8[r3]     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String[] r8 = org.apache.http.conn.ssl.StrictHostnameVerifier.getCNs(r8)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.security.cert.X509Certificate[] r9 = r10.peerCertificates     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r9 = r9[r3]     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String[] r9 = org.apache.http.conn.ssl.StrictHostnameVerifier.getDNSSubjectAlts(r9)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r6.verify(r7, r8, r9)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            goto L_0x00cb
        L_0x009c:
            javax.net.ssl.HostnameVerifier r6 = r10.hostnameVerifier     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r7 = r10.mHost     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLEngine r8 = r10.engine     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            javax.net.ssl.SSLSession r8 = r8.getSession()     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            boolean r6 = r6.verify(r7, r8)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            if (r6 == 0) goto L_0x00ad
            goto L_0x00cb
        L_0x00ad:
            javax.net.ssl.SSLException r5 = new javax.net.ssl.SSLException     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r6.<init>()     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r7 = "hostname <"
            r6.append(r7)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r7 = r10.mHost     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r6.append(r7)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r7 = "> has been denied"
            r6.append(r7)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            java.lang.String r6 = r6.toString()     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            r5.<init>(r6)     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
            throw r5     // Catch:{ GeneralSecurityException -> 0x00cf, SSLException -> 0x00cd, NoSuchAlgorithmException -> 0x010f, AsyncSSLException -> 0x0105 }
        L_0x00cb:
            r3 = 1
            goto L_0x00d3
        L_0x00cd:
            r5 = move-exception
            goto L_0x00d0
        L_0x00cf:
            r5 = move-exception
        L_0x00d0:
            int r4 = r4 + 1
            goto L_0x005c
        L_0x00d3:
            r10.finishedHandshake = r0     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            if (r3 != 0) goto L_0x00e9
            com.koushikdutta.async.AsyncSSLException r11 = new com.koushikdutta.async.AsyncSSLException     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r11.<init>(r5)     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r10.report(r11)     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            boolean r0 = r11.getIgnore()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            if (r0 == 0) goto L_0x00e6
            goto L_0x00e9
        L_0x00e6:
            throw r11     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
        L_0x00e7:
            r10.finishedHandshake = r0     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
        L_0x00e9:
            com.koushikdutta.async.AsyncSSLSocketWrapper$HandshakeCallback r11 = r10.handshakeCallback     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r11.onHandshakeCompleted(r1, r10)     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r10.handshakeCallback = r1     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            com.koushikdutta.async.AsyncSocket r11 = r10.mSocket     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r11.setClosedCallback(r1)     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            com.koushikdutta.async.AsyncServer r11 = r10.getServer()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            com.koushikdutta.async.AsyncSSLSocketWrapper$6 r0 = new com.koushikdutta.async.AsyncSSLSocketWrapper$6     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r0.<init>()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r11.post(r0)     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            r10.onDataAvailable()     // Catch:{ NoSuchAlgorithmException -> 0x010f, GeneralSecurityException -> 0x010a, AsyncSSLException -> 0x0105 }
            goto L_0x010e
        L_0x0105:
            r11 = move-exception
            r10.report(r11)
            goto L_0x010e
        L_0x010a:
            r11 = move-exception
            r10.report(r11)
        L_0x010e:
            return
        L_0x010f:
            r11 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r11)
            goto L_0x0117
        L_0x0116:
            throw r0
        L_0x0117:
            goto L_0x0116
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.AsyncSSLSocketWrapper.handleHandshakeStatus(javax.net.ssl.SSLEngineResult$HandshakeStatus):void");
    }

    /* access modifiers changed from: 0000 */
    public int calculateAlloc(int i) {
        int i2 = (i * 3) / 2;
        if (i2 == 0) {
            return 8192;
        }
        return i2;
    }

    public void write(ByteBufferList byteBufferList) {
        if (!this.mWrapping && this.mSink.remaining() <= 0) {
            this.mWrapping = true;
            ByteBuffer obtain = ByteBufferList.obtain(calculateAlloc(byteBufferList.remaining()));
            SSLEngineResult sSLEngineResult = null;
            do {
                if (this.finishedHandshake && byteBufferList.remaining() == 0) {
                    break;
                }
                int remaining = byteBufferList.remaining();
                try {
                    ByteBuffer[] allArray = byteBufferList.getAllArray();
                    sSLEngineResult = this.engine.wrap(allArray, obtain);
                    byteBufferList.addAll(allArray);
                    obtain.flip();
                    this.writeList.add(obtain);
                    if (this.writeList.remaining() > 0) {
                        this.mSink.write(this.writeList);
                    }
                    int capacity = obtain.capacity();
                    try {
                        if (sSLEngineResult.getStatus() == Status.BUFFER_OVERFLOW) {
                            obtain = ByteBufferList.obtain(capacity * 2);
                            remaining = -1;
                        } else {
                            obtain = ByteBufferList.obtain(calculateAlloc(byteBufferList.remaining()));
                            handleHandshakeStatus(sSLEngineResult.getHandshakeStatus());
                        }
                    } catch (SSLException e) {
                        e = e;
                        obtain = null;
                        report(e);
                        if (this.mSink.remaining() != 0) {
                            this.mWrapping = false;
                            ByteBufferList.reclaim(obtain);
                        }
                    }
                } catch (SSLException e2) {
                    e = e2;
                }
                if (remaining == byteBufferList.remaining() && (sSLEngineResult == null || sSLEngineResult.getHandshakeStatus() != HandshakeStatus.NEED_WRAP)) {
                    break;
                }
            } while (this.mSink.remaining() != 0);
            this.mWrapping = false;
            ByteBufferList.reclaim(obtain);
        }
    }

    public void setWriteableCallback(WritableCallback writableCallback) {
        this.mWriteableCallback = writableCallback;
    }

    public WritableCallback getWriteableCallback() {
        return this.mWriteableCallback;
    }

    /* access modifiers changed from: private */
    public void report(Exception exc) {
        HandshakeCallback handshakeCallback2 = this.handshakeCallback;
        if (handshakeCallback2 != null) {
            this.handshakeCallback = null;
            this.mSocket.setDataCallback(new NullDataCallback());
            this.mSocket.end();
            this.mSocket.setClosedCallback(null);
            this.mSocket.close();
            handshakeCallback2.onHandshakeCompleted(exc, null);
            return;
        }
        CompletedCallback endCallback = getEndCallback();
        if (endCallback != null) {
            endCallback.onCompleted(exc);
        }
    }

    public void setDataCallback(DataCallback dataCallback2) {
        this.mDataCallback = dataCallback2;
    }

    public DataCallback getDataCallback() {
        return this.mDataCallback;
    }

    public boolean isChunked() {
        return this.mSocket.isChunked();
    }

    public boolean isOpen() {
        return this.mSocket.isOpen();
    }

    public void close() {
        this.mSocket.close();
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.mSocket.setClosedCallback(completedCallback);
    }

    public CompletedCallback getClosedCallback() {
        return this.mSocket.getClosedCallback();
    }

    public void setEndCallback(CompletedCallback completedCallback) {
        this.mEndCallback = completedCallback;
    }

    public CompletedCallback getEndCallback() {
        return this.mEndCallback;
    }

    public void pause() {
        this.mSocket.pause();
    }

    public void resume() {
        this.mSocket.resume();
        onDataAvailable();
    }

    public boolean isPaused() {
        return this.mSocket.isPaused();
    }

    public AsyncServer getServer() {
        return this.mSocket.getServer();
    }

    public AsyncSocket getSocket() {
        return this.mSocket;
    }

    public DataEmitter getDataEmitter() {
        return this.mSocket;
    }

    public X509Certificate[] getPeerCertificates() {
        return this.peerCertificates;
    }
}
