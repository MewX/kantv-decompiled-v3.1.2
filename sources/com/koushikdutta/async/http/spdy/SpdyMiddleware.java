package com.koushikdutta.async.http.spdy;

import android.net.Uri;
import android.text.TextUtils;
import com.koushikdutta.async.AsyncSSLSocket;
import com.koushikdutta.async.AsyncSSLSocketWrapper.HandshakeCallback;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.MultiFuture;
import com.koushikdutta.async.future.SimpleCancellable;
import com.koushikdutta.async.future.TransformFuture;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.GetSocketData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnExchangeHeaderData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnRequestSentData;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.AsyncSSLEngineConfigurator;
import com.koushikdutta.async.http.AsyncSSLSocketMiddleware;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import com.koushikdutta.async.http.spdy.AsyncSpdyConnection.SpdySocket;
import com.koushikdutta.async.util.Charsets;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpVersions;

public class SpdyMiddleware extends AsyncSSLSocketMiddleware {
    private static final NoSpdyException NO_SPDY = new NoSpdyException();
    Field alpnProtocols;
    Hashtable<String, SpdyConnectionWaiter> connections = new Hashtable<>();
    boolean initialized;
    Method nativeGetAlpnNegotiatedProtocol;
    Method nativeGetNpnNegotiatedProtocol;
    Field npnProtocols;
    Field peerHost;
    Field peerPort;
    boolean spdyEnabled;
    Field sslNativePointer;
    Field sslParameters;
    Field useSni;

    private static class NoSpdyException extends Exception {
        private NoSpdyException() {
        }
    }

    private static class SpdyConnectionWaiter extends MultiFuture<AsyncSpdyConnection> {
        SimpleCancellable originalCancellable;

        private SpdyConnectionWaiter() {
            this.originalCancellable = new SimpleCancellable();
        }
    }

    public SpdyMiddleware(AsyncHttpClient asyncHttpClient) {
        super(asyncHttpClient);
        addEngineConfigurator(new AsyncSSLEngineConfigurator() {
            public SSLEngine createEngine(SSLContext sSLContext, String str, int i) {
                return null;
            }

            public void configureEngine(SSLEngine sSLEngine, GetSocketData getSocketData, String str, int i) {
                SpdyMiddleware.this.configure(sSLEngine, getSocketData, str, i);
            }
        });
    }

    /* access modifiers changed from: private */
    public void configure(SSLEngine sSLEngine, GetSocketData getSocketData, String str, int i) {
        if (!this.initialized && this.spdyEnabled) {
            this.initialized = true;
            try {
                this.peerHost = sSLEngine.getClass().getSuperclass().getDeclaredField("peerHost");
                this.peerPort = sSLEngine.getClass().getSuperclass().getDeclaredField("peerPort");
                this.sslParameters = sSLEngine.getClass().getDeclaredField("sslParameters");
                this.npnProtocols = this.sslParameters.getType().getDeclaredField("npnProtocols");
                this.alpnProtocols = this.sslParameters.getType().getDeclaredField("alpnProtocols");
                this.useSni = this.sslParameters.getType().getDeclaredField("useSni");
                this.sslNativePointer = sSLEngine.getClass().getDeclaredField("sslNativePointer");
                StringBuilder sb = new StringBuilder();
                sb.append(this.sslParameters.getType().getPackage().getName());
                sb.append(".NativeCrypto");
                String sb2 = sb.toString();
                this.nativeGetNpnNegotiatedProtocol = Class.forName(sb2, true, this.sslParameters.getType().getClassLoader()).getDeclaredMethod("SSL_get_npn_negotiated_protocol", new Class[]{Long.TYPE});
                this.nativeGetAlpnNegotiatedProtocol = Class.forName(sb2, true, this.sslParameters.getType().getClassLoader()).getDeclaredMethod("SSL_get0_alpn_selected", new Class[]{Long.TYPE});
                this.peerHost.setAccessible(true);
                this.peerPort.setAccessible(true);
                this.sslParameters.setAccessible(true);
                this.npnProtocols.setAccessible(true);
                this.alpnProtocols.setAccessible(true);
                this.useSni.setAccessible(true);
                this.sslNativePointer.setAccessible(true);
                this.nativeGetNpnNegotiatedProtocol.setAccessible(true);
                this.nativeGetAlpnNegotiatedProtocol.setAccessible(true);
            } catch (Exception unused) {
                this.sslParameters = null;
                this.npnProtocols = null;
                this.alpnProtocols = null;
                this.useSni = null;
                this.sslNativePointer = null;
                this.nativeGetNpnNegotiatedProtocol = null;
                this.nativeGetAlpnNegotiatedProtocol = null;
            }
        }
        if (canSpdyRequest(getSocketData) && this.sslParameters != null) {
            try {
                byte[] concatLengthPrefixed = concatLengthPrefixed(Protocol.SPDY_3);
                this.peerHost.set(sSLEngine, str);
                this.peerPort.set(sSLEngine, Integer.valueOf(i));
                Object obj = this.sslParameters.get(sSLEngine);
                this.alpnProtocols.set(obj, concatLengthPrefixed);
                this.useSni.set(obj, Boolean.valueOf(true));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean getSpdyEnabled() {
        return this.spdyEnabled;
    }

    public void setSpdyEnabled(boolean z) {
        this.spdyEnabled = z;
    }

    public void setSSLContext(SSLContext sSLContext) {
        super.setSSLContext(sSLContext);
        this.initialized = false;
    }

    static byte[] concatLengthPrefixed(Protocol... protocolArr) {
        ByteBuffer allocate = ByteBuffer.allocate(8192);
        for (Protocol protocol : protocolArr) {
            if (protocol != Protocol.HTTP_1_0) {
                allocate.put((byte) protocol.toString().length());
                allocate.put(protocol.toString().getBytes(Charsets.UTF_8));
            }
        }
        allocate.flip();
        return new ByteBufferList(allocate).getAllByteArray();
    }

    private static String requestPath(Uri uri) {
        String encodedPath = uri.getEncodedPath();
        String str = "/";
        if (encodedPath == null) {
            encodedPath = str;
        } else if (!encodedPath.startsWith(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(encodedPath);
            encodedPath = sb.toString();
        }
        if (TextUtils.isEmpty(uri.getEncodedQuery())) {
            return encodedPath;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(encodedPath);
        sb2.append("?");
        sb2.append(uri.getEncodedQuery());
        return sb2.toString();
    }

    /* access modifiers changed from: private */
    public void noSpdy(String str) {
        SpdyConnectionWaiter spdyConnectionWaiter = (SpdyConnectionWaiter) this.connections.remove(str);
        if (spdyConnectionWaiter != null) {
            spdyConnectionWaiter.setComplete((Exception) NO_SPDY);
        }
    }

    /* access modifiers changed from: private */
    public void invokeConnect(String str, ConnectCallback connectCallback, Exception exc, AsyncSSLSocket asyncSSLSocket) {
        SpdyConnectionWaiter spdyConnectionWaiter = (SpdyConnectionWaiter) this.connections.get(str);
        if (spdyConnectionWaiter == null || spdyConnectionWaiter.originalCancellable.setComplete()) {
            connectCallback.onConnectCompleted(exc, asyncSSLSocket);
        }
    }

    /* access modifiers changed from: protected */
    public HandshakeCallback createHandshakeCallback(final GetSocketData getSocketData, final ConnectCallback connectCallback) {
        final String str = (String) getSocketData.state.get("spdykey");
        if (str == null) {
            return super.createHandshakeCallback(getSocketData, connectCallback);
        }
        return new HandshakeCallback() {
            public void onHandshakeCompleted(Exception exc, AsyncSSLSocket asyncSSLSocket) {
                getSocketData.request.logv("checking spdy handshake");
                if (exc != null || SpdyMiddleware.this.nativeGetAlpnNegotiatedProtocol == null) {
                    SpdyMiddleware.this.invokeConnect(str, connectCallback, exc, asyncSSLSocket);
                    SpdyMiddleware.this.noSpdy(str);
                    return;
                }
                try {
                    long longValue = ((Long) SpdyMiddleware.this.sslNativePointer.get(asyncSSLSocket.getSSLEngine())).longValue();
                    byte[] bArr = (byte[]) SpdyMiddleware.this.nativeGetAlpnNegotiatedProtocol.invoke(null, new Object[]{Long.valueOf(longValue)});
                    if (bArr == null) {
                        SpdyMiddleware.this.invokeConnect(str, connectCallback, null, asyncSSLSocket);
                        SpdyMiddleware.this.noSpdy(str);
                        return;
                    }
                    String str = new String(bArr);
                    Protocol protocol = Protocol.get(str);
                    if (protocol == null || !protocol.needsSpdyConnection()) {
                        SpdyMiddleware.this.invokeConnect(str, connectCallback, null, asyncSSLSocket);
                        SpdyMiddleware.this.noSpdy(str);
                        return;
                    }
                    try {
                        new AsyncSpdyConnection(asyncSSLSocket, Protocol.get(str)) {
                            boolean hasReceivedSettings;

                            public void settings(boolean z, Settings settings) {
                                super.settings(z, settings);
                                if (!this.hasReceivedSettings) {
                                    this.hasReceivedSettings = true;
                                    SpdyConnectionWaiter spdyConnectionWaiter = (SpdyConnectionWaiter) SpdyMiddleware.this.connections.get(str);
                                    if (spdyConnectionWaiter.originalCancellable.setComplete()) {
                                        AsyncHttpRequest asyncHttpRequest = getSocketData.request;
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("using new spdy connection for host: ");
                                        sb.append(getSocketData.request.getUri().getHost());
                                        asyncHttpRequest.logv(sb.toString());
                                        SpdyMiddleware.this.newSocket(getSocketData, this, connectCallback);
                                    }
                                    spdyConnectionWaiter.setComplete(this);
                                }
                            }
                        }.sendConnectionPreface();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    throw new AssertionError(e2);
                }
            }
        };
    }

    /* access modifiers changed from: private */
    public void newSocket(GetSocketData getSocketData, AsyncSpdyConnection asyncSpdyConnection, ConnectCallback connectCallback) {
        AsyncHttpRequest asyncHttpRequest = getSocketData.request;
        getSocketData.protocol = asyncSpdyConnection.protocol.toString();
        AsyncHttpRequestBody body = getSocketData.request.getBody();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Header(Header.TARGET_METHOD, asyncHttpRequest.getMethod()));
        arrayList.add(new Header(Header.TARGET_PATH, requestPath(asyncHttpRequest.getUri())));
        String str = asyncHttpRequest.getHeaders().get(HttpHeaders.HOST);
        if (Protocol.SPDY_3 == asyncSpdyConnection.protocol) {
            arrayList.add(new Header(Header.VERSION, HttpVersions.HTTP_1_1));
            arrayList.add(new Header(Header.TARGET_HOST, str));
        } else if (Protocol.HTTP_2 == asyncSpdyConnection.protocol) {
            arrayList.add(new Header(Header.TARGET_AUTHORITY, str));
        } else {
            throw new AssertionError();
        }
        arrayList.add(new Header(Header.TARGET_SCHEME, asyncHttpRequest.getUri().getScheme()));
        Multimap multiMap = asyncHttpRequest.getHeaders().getMultiMap();
        for (String str2 : multiMap.keySet()) {
            if (!SpdyTransport.isProhibitedHeader(asyncSpdyConnection.protocol, str2)) {
                for (String header : (List) multiMap.get(str2)) {
                    arrayList.add(new Header(str2.toLowerCase(Locale.US), header));
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\n");
        sb.append(asyncHttpRequest);
        asyncHttpRequest.logv(sb.toString());
        connectCallback.onConnectCompleted(null, asyncSpdyConnection.newStream(arrayList, body != null, true));
    }

    private boolean canSpdyRequest(GetSocketData getSocketData) {
        return getSocketData.request.getBody() == null;
    }

    /* access modifiers changed from: protected */
    public ConnectCallback wrapCallback(GetSocketData getSocketData, Uri uri, int i, boolean z, ConnectCallback connectCallback) {
        final ConnectCallback wrapCallback = super.wrapCallback(getSocketData, uri, i, z, connectCallback);
        final String str = (String) getSocketData.state.get("spdykey");
        if (str == null) {
            return wrapCallback;
        }
        return new ConnectCallback() {
            public void onConnectCompleted(Exception exc, AsyncSocket asyncSocket) {
                if (exc != null) {
                    SpdyConnectionWaiter spdyConnectionWaiter = (SpdyConnectionWaiter) SpdyMiddleware.this.connections.remove(str);
                    if (spdyConnectionWaiter != null) {
                        spdyConnectionWaiter.setComplete(exc);
                    }
                }
                wrapCallback.onConnectCompleted(exc, asyncSocket);
            }
        };
    }

    public Cancellable getSocket(final GetSocketData getSocketData) {
        Uri uri = getSocketData.request.getUri();
        int schemePort = getSchemePort(getSocketData.request.getUri());
        if (schemePort == -1) {
            return null;
        }
        if (!this.spdyEnabled) {
            return super.getSocket(getSocketData);
        }
        if (!canSpdyRequest(getSocketData)) {
            return super.getSocket(getSocketData);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getHost());
        sb.append(schemePort);
        String sb2 = sb.toString();
        SpdyConnectionWaiter spdyConnectionWaiter = (SpdyConnectionWaiter) this.connections.get(sb2);
        if (spdyConnectionWaiter != null) {
            if (spdyConnectionWaiter.tryGetException() instanceof NoSpdyException) {
                return super.getSocket(getSocketData);
            }
            if (spdyConnectionWaiter.tryGet() != null && !((AsyncSpdyConnection) spdyConnectionWaiter.tryGet()).socket.isOpen()) {
                this.connections.remove(sb2);
                spdyConnectionWaiter = null;
            }
        }
        if (spdyConnectionWaiter == null) {
            getSocketData.state.put("spdykey", sb2);
            Cancellable socket = super.getSocket(getSocketData);
            if (!socket.isDone() && !socket.isCancelled()) {
                SpdyConnectionWaiter spdyConnectionWaiter2 = new SpdyConnectionWaiter();
                this.connections.put(sb2, spdyConnectionWaiter2);
                socket = spdyConnectionWaiter2.originalCancellable;
            }
            return socket;
        }
        AsyncHttpRequest asyncHttpRequest = getSocketData.request;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("waiting for potential spdy connection for host: ");
        sb3.append(getSocketData.request.getUri().getHost());
        asyncHttpRequest.logv(sb3.toString());
        final SimpleCancellable simpleCancellable = new SimpleCancellable();
        spdyConnectionWaiter.setCallback((FutureCallback) new FutureCallback<AsyncSpdyConnection>() {
            public void onCompleted(Exception exc, AsyncSpdyConnection asyncSpdyConnection) {
                if (exc instanceof NoSpdyException) {
                    getSocketData.request.logv("spdy not available");
                    simpleCancellable.setParent(SpdyMiddleware.super.getSocket(getSocketData));
                } else if (exc != null) {
                    if (simpleCancellable.setComplete()) {
                        getSocketData.connectCallback.onConnectCompleted(exc, null);
                    }
                } else {
                    AsyncHttpRequest asyncHttpRequest = getSocketData.request;
                    StringBuilder sb = new StringBuilder();
                    sb.append("using existing spdy connection for host: ");
                    sb.append(getSocketData.request.getUri().getHost());
                    asyncHttpRequest.logv(sb.toString());
                    if (simpleCancellable.setComplete()) {
                        SpdyMiddleware spdyMiddleware = SpdyMiddleware.this;
                        GetSocketData getSocketData = getSocketData;
                        spdyMiddleware.newSocket(getSocketData, asyncSpdyConnection, getSocketData.connectCallback);
                    }
                }
            }
        });
        return simpleCancellable;
    }

    public boolean exchangeHeaders(final OnExchangeHeaderData onExchangeHeaderData) {
        if (!(onExchangeHeaderData.socket instanceof SpdySocket)) {
            return super.exchangeHeaders(onExchangeHeaderData);
        }
        if (onExchangeHeaderData.request.getBody() != null) {
            onExchangeHeaderData.response.sink(onExchangeHeaderData.socket);
        }
        onExchangeHeaderData.sendHeadersCallback.onCompleted(null);
        final SpdySocket spdySocket = (SpdySocket) onExchangeHeaderData.socket;
        ((AnonymousClass6) spdySocket.headers().then(new TransformFuture<Headers, List<Header>>() {
            /* access modifiers changed from: protected */
            public void transform(List<Header> list) throws Exception {
                Headers headers = new Headers();
                for (Header header : list) {
                    headers.add(header.name.utf8(), header.value.utf8());
                }
                String[] split = headers.remove(Header.RESPONSE_STATUS.utf8()).split(" ", 2);
                onExchangeHeaderData.response.code(Integer.parseInt(split[0]));
                if (split.length == 2) {
                    onExchangeHeaderData.response.message(split[1]);
                }
                onExchangeHeaderData.response.protocol(headers.remove(Header.VERSION.utf8()));
                onExchangeHeaderData.response.headers(headers);
                setComplete(headers);
            }
        })).setCallback((FutureCallback) new FutureCallback<Headers>() {
            public void onCompleted(Exception exc, Headers headers) {
                onExchangeHeaderData.receiveHeadersCallback.onCompleted(exc);
                SpdySocket spdySocket = spdySocket;
                onExchangeHeaderData.response.emitter(HttpUtil.getBodyDecoder(spdySocket, spdySocket.getConnection().protocol, headers, false));
            }
        });
        return true;
    }

    public void onRequestSent(OnRequestSentData onRequestSentData) {
        if ((onRequestSentData.socket instanceof SpdySocket) && onRequestSentData.request.getBody() != null) {
            onRequestSentData.response.sink().end();
        }
    }
}
