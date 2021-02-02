package com.samsung.multiscreen;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.ProfileType;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpClient.WebSocketConnectCallback;
import com.koushikdutta.async.http.WebSocket;
import com.koushikdutta.async.http.WebSocket.StringCallback;
import com.samsung.multiscreen.util.JSONUtil;
import com.samsung.multiscreen.util.RunUtil;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class Channel {
    private static final String CA_CRT = "-----BEGIN CERTIFICATE-----\nMIIDhjCCAm6gAwIBAgIJAPm7naJvG91yMA0GCSqGSIb3DQEBCwUAMFcxCzAJBgNV\nBAYTAktSMRUwEwYDVQQKEwxTbWFydFZpZXdTREsxMTAvBgNVBAMTKFNtYXJ0Vmll\nd1NESyBSb290IENlcml0aWZpY2F0ZSBBdXRob3JpdHkwHhcNMTYwNzI5MDUzNDEw\nWhcNMzYwNzI5MDUzNDEwWjBXMQswCQYDVQQGEwJLUjEVMBMGA1UEChMMU21hcnRW\naWV3U0RLMTEwLwYDVQQDEyhTbWFydFZpZXdTREsgUm9vdCBDZXJpdGlmaWNhdGUg\nQXV0aG9yaXR5MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArtBcclIW\nEuObUkeTn+FW3m6Lm/YpwAOeABCtq6RKnBcq6jzEo3I433cSuVC2DrWGiiYi62Qm\niAzOHEtkvRctj+jEuK7ZKneKkxQ5261os0RsvWG7fONVb4m0ZRBydykgfu/PLwUB\nMWeiF3PB6w7YCzN1MJzb9EISFlhEcqMxDHgwGWHZYo/CTWtIwBVZ07mhdrCQaV2r\nLLJInA+4Wh9nXRO82qRnqYqFZfV7psIOW4MqfjWqNcKAHWWZ1gKrdZc9fPb2YVK4\nOIlaT3Qq9DOCveeU5T8d3MGEoiFnXt4Lp5656nI7MbkAsPEFFRHFkBK3o8CE1HLp\nsELQa6GBRe8WPQIDAQABo1UwUzASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQW\nBBRQyhCp74M+t2GwCiH3g3Aau0AX7DALBgNVHQ8EBAMCAQYwEQYJYIZIAYb4QgEB\nBAQDAgAHMA0GCSqGSIb3DQEBCwUAA4IBAQAVIEeJo4vGsKPZBoY19hCXZnqB6Qcm\nOnWZzAZ0am8OQHQ4/LbSJ+Vnxh7eFiLtPQwuSHJ1a95ODA7RlNgnpC8ymHsL5Wl5\nUKOq5jOs3Jfa0aG99H9TsFKBysXlsBHfaHX+8/AoZUJDOksNeQigj3n4wCdLEPvt\nUpI9qJEjuzXeKxVhwnDkc/AvOuSGUaPiSeCSxy+xpcyWCANc4uVXtOxJluQvy8aC\nm6l0yG3Ucg09yCIkPzKtzG/kAadDRrTOYi/x4ZECtdamHQxncEnb3D881veLc6+s\nztEvDx0F77vRtadpeBxNZKivG2kJrymuf47pGIS0FlC5+/5ieV54+1/d\n-----END CERTIFICATE-----";
    private static final String CLIENT_CONNECT_EVENT = "ms.channel.clientConnect";
    private static final String CLIENT_DISCONNECT_EVENT = "ms.channel.clientDisconnect";
    private static final String CONNECT_EVENT = "ms.channel.connect";
    private static final String DISCONNECT_EVENT = "ms.channel.disconnect";
    private static final String ERROR_EVENT = "ms.error";
    private static final String HTTPS_PROTOCOL = "https:";
    private static final String HTTP_PROTOCOL = "http:";
    private static final String MULTICAST_PORT = "8001";
    private static final String READY_EVENT = "ms.channel.ready";
    private static final String ROUTE = "channels";
    private static final String SECURE_PORT = "8002";
    private static final String TAG = "Channel";
    private static final String TLS_PROTOCOL = "TLS";
    /* access modifiers changed from: private */
    public static long lastPingReceived;
    private static SecureRandom random = new SecureRandom();
    private Map<String, Result> callbacks = new ConcurrentHashMap();
    /* access modifiers changed from: private */
    public Clients clients = new Clients(this);
    protected boolean connected;
    /* access modifiers changed from: private */
    public final ChannelConnectionHandler connectionHandler = new ChannelConnectionHandler();

    /* renamed from: debug reason: collision with root package name */
    private boolean f4debug = false;
    private boolean disconnecting = false;
    private final String id;
    private Map<String, List<OnMessageListener>> messageListeners = new ConcurrentHashMap();
    /* access modifiers changed from: private */
    public volatile OnClientConnectListener onClientConnectListener;
    /* access modifiers changed from: private */
    public volatile OnClientDisconnectListener onClientDisconnectListener;
    /* access modifiers changed from: private */
    public volatile OnConnectListener onConnectListener;
    /* access modifiers changed from: private */
    public volatile OnDisconnectListener onDisconnectListener;
    /* access modifiers changed from: private */
    public volatile OnErrorListener onErrorListener;
    private OnReadyListener onReadyListener;
    protected boolean securityMode = false;
    /* access modifiers changed from: private */
    public Service service;
    private final Uri uri;
    /* access modifiers changed from: private */
    public WebSocket webSocket;

    private class ChannelConnectionHandler {
        static final String LIBVERSION_CHECK = "msfVersion2";
        static final String PING = "channel.ping";
        private static final String PONG = "pong";
        private double average;
        private ScheduledExecutorService executor = null;
        private long longestRT;
        private int numPings;
        private final Runnable pingCheckRunnable = new Runnable() {
            public void run() {
                ChannelConnectionHandler.this.pingCheck();
            }
        };
        private long pingSent;
        private int pingTimeout = 15000;
        private boolean running = false;
        private long startTime;

        public ChannelConnectionHandler() {
        }

        public int getPingTimeout() {
            return this.pingTimeout;
        }

        public void setPingTimeout(int i) {
            this.pingTimeout = i;
        }

        /* access modifiers changed from: private */
        public void pingCheck() {
            if (new Date().getTime() > Channel.lastPingReceived + ((long) this.pingTimeout)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Ping not received in ");
                sb.append(this.pingTimeout);
                sb.append(" ms");
                Log.w(Channel.TAG, sb.toString());
                Channel.this.webSocket.close();
                return;
            }
            Channel channel = Channel.this;
            channel.publish(PING, (Object) PONG, channel.clients.me());
            this.pingSent = new Date().getTime();
        }

        public boolean isRunning() {
            return this.running;
        }

        /* access modifiers changed from: 0000 */
        public void resetLastPingReceived() {
            Channel.lastPingReceived = new Date().getTime();
        }

        /* access modifiers changed from: 0000 */
        public void calculateAverageRT() {
            long access$1400 = Channel.lastPingReceived - this.pingSent;
            if (access$1400 > this.longestRT) {
                this.longestRT = access$1400;
            }
            int i = this.numPings;
            this.numPings = i + 1;
            double d = (double) i;
            double d2 = this.average;
            Double.isNaN(d);
            double d3 = d * d2;
            double d4 = (double) access$1400;
            Double.isNaN(d4);
            double d5 = d3 + d4;
            double d6 = (double) this.numPings;
            Double.isNaN(d6);
            this.average = d5 / d6;
        }

        /* access modifiers changed from: 0000 */
        public void stopPing() {
            ScheduledExecutorService scheduledExecutorService = this.executor;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
                this.executor = null;
            }
            this.running = false;
        }

        /* access modifiers changed from: 0000 */
        public void startPing() {
            if (!this.running) {
                stopPing();
                this.running = true;
                this.numPings = 0;
                this.average = 0.0d;
                this.longestRT = 0;
                Channel channel = Channel.this;
                Client me = channel.clients.me();
                String str = LIBVERSION_CHECK;
                channel.publish(str, (Object) str, me);
                Channel channel2 = Channel.this;
                channel2.publish(PING, (Object) PONG, channel2.clients.me());
                this.startTime = new Date().getTime();
                this.pingSent = this.startTime;
                this.executor = Executors.newSingleThreadScheduledExecutor();
                long j = (long) 5000;
                this.executor.scheduleAtFixedRate(this.pingCheckRunnable, j, j, TimeUnit.MILLISECONDS);
            }
        }
    }

    public interface OnClientConnectListener {
        void onClientConnect(Client client);
    }

    public interface OnClientDisconnectListener {
        void onClientDisconnect(Client client);
    }

    public interface OnConnectListener {
        void onConnect(Client client);
    }

    public interface OnDisconnectListener {
        void onDisconnect(Client client);
    }

    public interface OnErrorListener {
        void onError(Error error);
    }

    public interface OnMessageListener {
        void onMessage(Message message);
    }

    @Deprecated
    public interface OnReadyListener {
        void onReady();
    }

    /* access modifiers changed from: protected */
    public void handleReadyMessage(Map<String, Object> map) {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Channel(service=");
        sb.append(this.service);
        sb.append(", uri=");
        sb.append(this.uri);
        sb.append(", id=");
        sb.append(this.id);
        sb.append(", clients=");
        sb.append(this.clients);
        sb.append(", connected=");
        sb.append(this.connected);
        sb.append(", securityMode=");
        sb.append(this.securityMode);
        sb.append(", onConnectListener=");
        sb.append(this.onConnectListener);
        sb.append(", onDisconnectListener=");
        sb.append(this.onDisconnectListener);
        sb.append(", onClientConnectListener=");
        sb.append(this.onClientConnectListener);
        sb.append(", onClientDisconnectListener=");
        sb.append(this.onClientDisconnectListener);
        sb.append(", onReadyListener=");
        sb.append(this.onReadyListener);
        sb.append(", onErrorListener=");
        sb.append(this.onErrorListener);
        sb.append(")");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public Service getService() {
        return this.service;
    }

    public Uri getUri() {
        return this.uri;
    }

    public String getId() {
        return this.id;
    }

    public Clients getClients() {
        return this.clients;
    }

    public boolean isSecurityMode() {
        return this.securityMode;
    }

    protected Channel(Service service2, Uri uri2, String str) {
        this.service = service2;
        this.uri = uri2;
        this.id = str;
    }

    public void setOnConnectListener(OnConnectListener onConnectListener2) {
        this.onConnectListener = onConnectListener2;
    }

    public void setOnDisconnectListener(OnDisconnectListener onDisconnectListener2) {
        this.onDisconnectListener = onDisconnectListener2;
    }

    public void setOnClientConnectListener(OnClientConnectListener onClientConnectListener2) {
        this.onClientConnectListener = onClientConnectListener2;
    }

    public void setOnClientDisconnectListener(OnClientDisconnectListener onClientDisconnectListener2) {
        this.onClientDisconnectListener = onClientDisconnectListener2;
    }

    @Deprecated
    public void setOnReadyListener(OnReadyListener onReadyListener2) {
        this.onReadyListener = onReadyListener2;
    }

    /* access modifiers changed from: protected */
    public OnReadyListener getOnReadyListener() {
        return this.onReadyListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener2) {
        this.onErrorListener = onErrorListener2;
    }

    /* access modifiers changed from: protected */
    public WebSocket getWebSocket() {
        return this.webSocket;
    }

    public void setDebug(boolean z) {
        this.f4debug = z;
    }

    public boolean isDebug() {
        return this.f4debug;
    }

    public boolean isConnected() {
        return isWebSocketOpen();
    }

    private boolean isWebSocketOpen() {
        WebSocket webSocket2 = this.webSocket;
        return webSocket2 != null && webSocket2.isOpen();
    }

    /* access modifiers changed from: protected */
    public Uri getChannelUri(Map<String, String> map) {
        Builder appendPath = this.service.getUri().buildUpon().appendPath(ROUTE).appendPath(this.id);
        if (map != null) {
            for (String str : map.keySet()) {
                appendPath.appendQueryParameter(str, (String) map.get(str));
            }
        }
        return appendPath.build();
    }

    public void connect() {
        connect(null);
    }

    public void connect(Result<Client> result) {
        connect(null, result);
    }

    public void setSecurityMode(boolean z, final Result<Boolean> result) {
        if (z) {
            this.service.isSecurityModeSupported(new Result<Boolean>() {
                public void onSuccess(Boolean bool) {
                    Channel.this.securityMode = bool.booleanValue();
                    result.onSuccess(bool);
                }

                public void onError(Error error) {
                    Channel.this.securityMode = false;
                    StringBuilder sb = new StringBuilder();
                    sb.append("set security mode true onError: ");
                    sb.append(error.getMessage());
                    Log.e(Channel.TAG, sb.toString());
                    result.onError(error);
                }
            });
            return;
        }
        this.securityMode = false;
        result.onSuccess(Boolean.valueOf(true));
    }

    /* access modifiers changed from: 0000 */
    public Uri getSecureURL(Uri uri2) {
        String replace = uri2.toString().replace("http:", "https:").replace(MULTICAST_PORT, SECURE_PORT);
        AsyncHttpClient.getDefaultInstance().getSSLSocketMiddleware().setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        return Uri.parse(replace);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00a2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.net.Uri getWebSocketConnectionURL(android.net.Uri r6) {
        /*
            r5 = this;
            boolean r0 = r5.securityMode
            r1 = 0
            if (r0 != 0) goto L_0x0036
            com.koushikdutta.async.http.AsyncHttpClient r0 = com.koushikdutta.async.http.AsyncHttpClient.getDefaultInstance()
            com.koushikdutta.async.http.spdy.SpdyMiddleware r0 = r0.getSSLSocketMiddleware()
            javax.net.ssl.SSLContext r0 = r0.getSSLContext()
            if (r0 == 0) goto L_0x00dd
            com.koushikdutta.async.http.AsyncHttpClient r0 = com.koushikdutta.async.http.AsyncHttpClient.getDefaultInstance()
            com.koushikdutta.async.http.spdy.SpdyMiddleware r0 = r0.getSSLSocketMiddleware()
            r0.setSSLContext(r1)
            com.koushikdutta.async.http.AsyncHttpClient r0 = com.koushikdutta.async.http.AsyncHttpClient.getDefaultInstance()
            com.koushikdutta.async.http.spdy.SpdyMiddleware r0 = r0.getSSLSocketMiddleware()
            r0.setTrustManagers(r1)
            com.koushikdutta.async.http.AsyncHttpClient r0 = com.koushikdutta.async.http.AsyncHttpClient.getDefaultInstance()
            com.koushikdutta.async.http.spdy.SpdyMiddleware r0 = r0.getSSLSocketMiddleware()
            r0.setHostnameVerifier(r1)
            goto L_0x00dd
        L_0x0036:
            android.net.Uri r6 = r5.getSecureURL(r6)
            java.lang.String r0 = "X509"
            java.security.cert.CertificateFactory r0 = java.security.cert.CertificateFactory.getInstance(r0)     // Catch:{ CertificateException -> 0x0050 }
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch:{ CertificateException -> 0x0050 }
            java.lang.String r3 = "-----BEGIN CERTIFICATE-----\nMIIDhjCCAm6gAwIBAgIJAPm7naJvG91yMA0GCSqGSIb3DQEBCwUAMFcxCzAJBgNV\nBAYTAktSMRUwEwYDVQQKEwxTbWFydFZpZXdTREsxMTAvBgNVBAMTKFNtYXJ0Vmll\nd1NESyBSb290IENlcml0aWZpY2F0ZSBBdXRob3JpdHkwHhcNMTYwNzI5MDUzNDEw\nWhcNMzYwNzI5MDUzNDEwWjBXMQswCQYDVQQGEwJLUjEVMBMGA1UEChMMU21hcnRW\naWV3U0RLMTEwLwYDVQQDEyhTbWFydFZpZXdTREsgUm9vdCBDZXJpdGlmaWNhdGUg\nQXV0aG9yaXR5MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArtBcclIW\nEuObUkeTn+FW3m6Lm/YpwAOeABCtq6RKnBcq6jzEo3I433cSuVC2DrWGiiYi62Qm\niAzOHEtkvRctj+jEuK7ZKneKkxQ5261os0RsvWG7fONVb4m0ZRBydykgfu/PLwUB\nMWeiF3PB6w7YCzN1MJzb9EISFlhEcqMxDHgwGWHZYo/CTWtIwBVZ07mhdrCQaV2r\nLLJInA+4Wh9nXRO82qRnqYqFZfV7psIOW4MqfjWqNcKAHWWZ1gKrdZc9fPb2YVK4\nOIlaT3Qq9DOCveeU5T8d3MGEoiFnXt4Lp5656nI7MbkAsPEFFRHFkBK3o8CE1HLp\nsELQa6GBRe8WPQIDAQABo1UwUzASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQW\nBBRQyhCp74M+t2GwCiH3g3Aau0AX7DALBgNVHQ8EBAMCAQYwEQYJYIZIAYb4QgEB\nBAQDAgAHMA0GCSqGSIb3DQEBCwUAA4IBAQAVIEeJo4vGsKPZBoY19hCXZnqB6Qcm\nOnWZzAZ0am8OQHQ4/LbSJ+Vnxh7eFiLtPQwuSHJ1a95ODA7RlNgnpC8ymHsL5Wl5\nUKOq5jOs3Jfa0aG99H9TsFKBysXlsBHfaHX+8/AoZUJDOksNeQigj3n4wCdLEPvt\nUpI9qJEjuzXeKxVhwnDkc/AvOuSGUaPiSeCSxy+xpcyWCANc4uVXtOxJluQvy8aC\nm6l0yG3Ucg09yCIkPzKtzG/kAadDRrTOYi/x4ZECtdamHQxncEnb3D881veLc6+s\nztEvDx0F77vRtadpeBxNZKivG2kJrymuf47pGIS0FlC5+/5ieV54+1/d\n-----END CERTIFICATE-----"
            byte[] r3 = r3.getBytes()     // Catch:{ CertificateException -> 0x0050 }
            r2.<init>(r3)     // Catch:{ CertificateException -> 0x0050 }
            java.security.cert.Certificate r0 = r0.generateCertificate(r2)     // Catch:{ CertificateException -> 0x0050 }
            goto L_0x0055
        L_0x0050:
            r0 = move-exception
            r0.printStackTrace()
            r0 = r1
        L_0x0055:
            java.lang.String r2 = java.security.KeyStore.getDefaultType()
            java.security.KeyStore r2 = java.security.KeyStore.getInstance(r2)     // Catch:{ KeyStoreException -> 0x0080, CertificateException -> 0x007a, NoSuchAlgorithmException -> 0x0074, IOException -> 0x006e }
            r2.load(r1, r1)     // Catch:{ KeyStoreException -> 0x006c, CertificateException -> 0x006a, NoSuchAlgorithmException -> 0x0068, IOException -> 0x0066 }
            java.lang.String r3 = "ca"
            r2.setCertificateEntry(r3, r0)     // Catch:{ KeyStoreException -> 0x006c, CertificateException -> 0x006a, NoSuchAlgorithmException -> 0x0068, IOException -> 0x0066 }
            goto L_0x0085
        L_0x0066:
            r0 = move-exception
            goto L_0x0070
        L_0x0068:
            r0 = move-exception
            goto L_0x0076
        L_0x006a:
            r0 = move-exception
            goto L_0x007c
        L_0x006c:
            r0 = move-exception
            goto L_0x0082
        L_0x006e:
            r0 = move-exception
            r2 = r1
        L_0x0070:
            r0.printStackTrace()
            goto L_0x0085
        L_0x0074:
            r0 = move-exception
            r2 = r1
        L_0x0076:
            r0.printStackTrace()
            goto L_0x0085
        L_0x007a:
            r0 = move-exception
            r2 = r1
        L_0x007c:
            r0.printStackTrace()
            goto L_0x0085
        L_0x0080:
            r0 = move-exception
            r2 = r1
        L_0x0082:
            r0.printStackTrace()
        L_0x0085:
            java.lang.String r0 = javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm()
            javax.net.ssl.TrustManagerFactory r0 = javax.net.ssl.TrustManagerFactory.getInstance(r0)     // Catch:{ NoSuchAlgorithmException -> 0x009b, KeyStoreException -> 0x0095 }
            r0.init(r2)     // Catch:{ NoSuchAlgorithmException -> 0x0093, KeyStoreException -> 0x0091 }
            goto L_0x00a0
        L_0x0091:
            r2 = move-exception
            goto L_0x0097
        L_0x0093:
            r2 = move-exception
            goto L_0x009d
        L_0x0095:
            r2 = move-exception
            r0 = r1
        L_0x0097:
            r2.printStackTrace()
            goto L_0x00a0
        L_0x009b:
            r2 = move-exception
            r0 = r1
        L_0x009d:
            r2.printStackTrace()
        L_0x00a0:
            if (r0 == 0) goto L_0x00dd
            java.lang.String r2 = "TLS"
            javax.net.ssl.SSLContext r2 = javax.net.ssl.SSLContext.getInstance(r2)     // Catch:{ NoSuchAlgorithmException -> 0x00bc, KeyManagementException -> 0x00b4 }
            javax.net.ssl.TrustManager[] r3 = r0.getTrustManagers()     // Catch:{ NoSuchAlgorithmException -> 0x00b2, KeyManagementException -> 0x00b0 }
            r2.init(r1, r3, r1)     // Catch:{ NoSuchAlgorithmException -> 0x00b2, KeyManagementException -> 0x00b0 }
            goto L_0x00c3
        L_0x00b0:
            r1 = move-exception
            goto L_0x00b8
        L_0x00b2:
            r1 = move-exception
            goto L_0x00c0
        L_0x00b4:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
        L_0x00b8:
            r1.printStackTrace()
            goto L_0x00c3
        L_0x00bc:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
        L_0x00c0:
            r1.printStackTrace()
        L_0x00c3:
            com.koushikdutta.async.http.AsyncHttpClient r1 = com.koushikdutta.async.http.AsyncHttpClient.getDefaultInstance()
            com.koushikdutta.async.http.spdy.SpdyMiddleware r1 = r1.getSSLSocketMiddleware()
            r1.setSSLContext(r2)
            com.koushikdutta.async.http.AsyncHttpClient r1 = com.koushikdutta.async.http.AsyncHttpClient.getDefaultInstance()
            com.koushikdutta.async.http.spdy.SpdyMiddleware r1 = r1.getSSLSocketMiddleware()
            javax.net.ssl.TrustManager[] r0 = r0.getTrustManagers()
            r1.setTrustManagers(r0)
        L_0x00dd:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.Channel.getWebSocketConnectionURL(android.net.Uri):android.net.Uri");
    }

    public void connect(final Map<String, String> map, final Result<Client> result) {
        if (!this.service.isStandbyService.booleanValue()) {
            if (StandbyDeviceList.getInstance() != null) {
                StandbyDeviceList.getInstance().update(this.service, Boolean.valueOf(false));
            }
            connect(getWebSocketConnectionURL(getChannelUri(map)), map, result);
        } else if (StandbyDeviceList.getInstance() != null) {
            String mac = StandbyDeviceList.getInstance().getMac(this.service);
            if (mac != null) {
                Service.WakeOnWirelessAndConnect(mac, this.service.getUri(), new Result<Service>() {
                    public void onSuccess(final Service service) {
                        Channel channel = Channel.this;
                        channel.connect(channel.getWebSocketConnectionURL(channel.getChannelUri(map)), map, new Result<Client>() {
                            public void onSuccess(Client client) {
                                Channel.this.service = service;
                                result.onSuccess(client);
                            }

                            public void onError(Error error) {
                                ErrorCode errorCode = new ErrorCode("ERROR_CONNECT_FAILED");
                                result.onError(Error.create((long) errorCode.value(), errorCode.name(), error.toString()));
                            }
                        });
                    }

                    public void onError(Error error) {
                        Service.getByURI(StandbyDeviceList.getInstance().get(Channel.this.service.getId()).getUri(), new Result<Service>() {
                            public void onSuccess(Service service) {
                                Channel.this.service = service;
                                Channel.this.connect(Channel.this.getWebSocketConnectionURL(Channel.this.getChannelUri(map)), map, new Result<Client>() {
                                    public void onSuccess(Client client) {
                                        result.onSuccess(client);
                                    }

                                    public void onError(Error error) {
                                        ErrorCode errorCode = new ErrorCode("ERROR_CONNECT_FAILED");
                                        result.onError(Error.create((long) errorCode.value(), errorCode.name(), error.toString()));
                                    }
                                });
                            }

                            public void onError(Error error) {
                                ErrorCode errorCode = new ErrorCode("ERROR_HOST_UNREACHABLE");
                                result.onError(Error.create((long) errorCode.value(), errorCode.name(), error.toString()));
                            }
                        });
                    }
                });
            }
        }
    }

    public void connect(Uri uri2, Map<String, String> map, final Result<Client> result) {
        final String uid = getUID();
        registerCallback(uid, result);
        if (isWebSocketOpen()) {
            ErrorCode errorCode = new ErrorCode("ERROR_ALREADY_CONNECTED");
            handleError(uid, Error.create((long) errorCode.value(), errorCode.name(), "Already Connected"));
            return;
        }
        AsyncHttpClient.getDefaultInstance().websocket(uri2.toString(), (String) null, (WebSocketConnectCallback) new WebSocketConnectCallback() {
            public void onCompleted(Exception exc, WebSocket webSocket) {
                if (Channel.this.isDebug()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Connect completed socket ");
                    sb.append(webSocket);
                    Log.d(Channel.TAG, sb.toString());
                }
                if (webSocket == null) {
                    ErrorCode errorCode = new ErrorCode("ERROR_CONNECT_FAILED");
                    Channel.this.handleError(uid, Error.create((long) errorCode.value(), errorCode.name(), "Connect failed"));
                    return;
                }
                Channel.this.webSocket = webSocket;
                if (exc == null || result == null) {
                    webSocket.setClosedCallback(new CompletedCallback() {
                        public void onCompleted(Exception exc) {
                            Channel.this.handleSocketClosedAndNotify();
                        }
                    });
                    webSocket.setStringCallback(new StringCallback() {
                        public void onStringAvailable(String str) {
                            Channel.this.connectionHandler.resetLastPingReceived();
                            try {
                                Map parse = JSONUtil.parse(str);
                                if (Channel.CONNECT_EVENT.equals((String) parse.get("event"))) {
                                    Channel.this.handleConnectMessage(parse, uid);
                                } else {
                                    Channel.this.handleMessage(uid, parse, null);
                                }
                            } catch (Exception e) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("connect error: ");
                                sb.append(e.getMessage());
                                Log.e(Channel.TAG, sb.toString());
                            }
                        }
                    });
                    webSocket.setDataCallback(new DataCallback() {
                        public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                            Channel.this.connectionHandler.resetLastPingReceived();
                            Channel.this.handleBinaryMessage(dataEmitter, byteBufferList);
                        }
                    });
                    return;
                }
                Channel.this.handleError(uid, Error.create(exc));
            }
        });
    }

    public void disconnect() {
        disconnect(null);
    }

    public void disconnect(Result<Client> result) {
        String uid = getUID();
        registerCallback(uid, result);
        String str = !isWebSocketOpen() ? "Already Disconnected" : null;
        if (this.disconnecting) {
            str = "Already Disconnecting";
        }
        if (str != null) {
            handleError(uid, Error.create(str));
            return;
        }
        this.disconnecting = true;
        this.webSocket.close();
        this.webSocket = null;
        getCallback(uid);
        if (result != null) {
            result.onSuccess(this.clients.me());
        }
    }

    /* access modifiers changed from: private */
    public void handleSocketClosedAndNotify() {
        final Client me = this.clients.me();
        handleSocketClosed();
        if (this.onDisconnectListener != null) {
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    if (Channel.this.onDisconnectListener != null) {
                        Channel.this.onDisconnectListener.onDisconnect(me);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void handleSocketClosed() {
        this.connectionHandler.stopPing();
        this.webSocket = null;
        this.connected = false;
        this.clients.reset();
        if (this.disconnecting) {
            this.disconnecting = false;
        }
    }

    public void publish(String str, Object obj) {
        publishMessage(str, obj, Message.TARGET_HOST, null);
    }

    public void publish(String str, Object obj, byte[] bArr) {
        publishMessage(str, obj, Message.TARGET_HOST, bArr);
    }

    public void publish(String str, Object obj, String str2) {
        publishMessage(str, obj, str2, null);
    }

    public void publish(String str, Object obj, String str2, byte[] bArr) {
        publishMessage(str, obj, str2, bArr);
    }

    public void publish(String str, Object obj, Client client) {
        publishMessage(str, obj, client.getId(), null);
    }

    public void publish(String str, Object obj, Client client, byte[] bArr) {
        publishMessage(str, obj, client.getId(), bArr);
    }

    public void publish(String str, Object obj, List<Client> list) {
        publish(str, obj, list, (byte[]) null);
    }

    public void publish(String str, Object obj, List<Client> list, byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (Client id2 : list) {
            arrayList.add(id2.getId());
        }
        publishMessage(str, obj, arrayList, bArr);
    }

    private void publishMessage(String str, Object obj, Object obj2, byte[] bArr) {
        publishMessage("ms.channel.emit", str, obj, obj2, bArr);
    }

    private void publishMessage(String str, String str2, Object obj, Object obj2, byte[] bArr) {
        boolean isDebug = isDebug();
        String str3 = TAG;
        if (isDebug) {
            StringBuilder sb = new StringBuilder();
            sb.append("method: ");
            sb.append(str);
            sb.append(", event: ");
            sb.append(str2);
            sb.append(", data: ");
            sb.append(obj);
            sb.append(", to: ");
            sb.append(obj2);
            sb.append(", payload size: ");
            sb.append(bArr != null ? bArr.length : 0);
            Log.d(str3, sb.toString());
        }
        if (!isWebSocketOpen()) {
            String str4 = "Not Connected";
            if (isDebug()) {
                Log.d(str3, str4);
            }
            ErrorCode errorCode = new ErrorCode("ERROR_WEBSOCKET_DISCONNECTED");
            handleError(null, Error.create((long) errorCode.value(), errorCode.name(), str4));
            return;
        }
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("event", str2);
        }
        if (obj != null) {
            hashMap.put("data", obj);
        }
        if (obj2 != null) {
            hashMap.put("to", obj2);
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put(Param.METHOD, str);
        hashMap2.put("params", hashMap);
        String jSONString = JSONUtil.toJSONString(hashMap2);
        if (bArr != null) {
            this.webSocket.send(createBinaryMessage(jSONString, bArr));
        } else {
            this.webSocket.send(jSONString);
        }
    }

    static Channel create(Service service2, Uri uri2) {
        if (service2 != null && uri2 != null) {
            return new Channel(service2, uri2, uri2.toString());
        }
        throw new NullPointerException();
    }

    private byte[] createBinaryMessage(String str, byte[] bArr) {
        int length = str.getBytes().length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 2 + bArr.length);
        allocate.putShort((short) length);
        allocate.put(str.getBytes());
        allocate.put(bArr);
        return allocate.array();
    }

    /* access modifiers changed from: private */
    public void handleBinaryMessage(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        String readString = byteBufferList.get((int) byteBufferList.getShort()).readString();
        byte[] bArr = new byte[byteBufferList.remaining()];
        byteBufferList.get(bArr);
        try {
            handleMessage(JSONUtil.parse(readString), bArr);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("handleBinaryMessage error: ");
            sb.append(e.getMessage());
            Log.e(TAG, sb.toString());
        }
    }

    private void handleMessage(Map<String, Object> map, byte[] bArr) {
        handleMessage(null, map, bArr);
    }

    /* access modifiers changed from: protected */
    public void handleMessage(String str, Map<String, Object> map, byte[] bArr) {
        String str2 = (String) map.get("event");
        if (isDebug()) {
            StringBuilder sb = new StringBuilder();
            sb.append("event: ");
            sb.append(str2);
            sb.append(", message: ");
            sb.append(map.toString());
            sb.append(", payload size: ");
            sb.append(bArr != null ? bArr.length : 0);
            Log.d(TAG, sb.toString());
        }
        if (str2 != null) {
            if (ERROR_EVENT.equalsIgnoreCase(str2)) {
                handleErrorMessage(str, map);
            } else if (CLIENT_CONNECT_EVENT.equalsIgnoreCase(str2)) {
                handleClientConnectMessage(map);
            } else if (CLIENT_DISCONNECT_EVENT.equalsIgnoreCase(str2)) {
                handleClientDisconnectMessage(map);
            } else if (READY_EVENT.equalsIgnoreCase(str2)) {
                handleReadyMessage(map);
            } else if (DISCONNECT_EVENT.equalsIgnoreCase(str2)) {
                disconnect();
            } else {
                handleClientMessage(map, bArr);
            }
        }
    }

    private void handleErrorMessage(String str, Map<String, Object> map) {
        handleError(str, Error.create((String) ((Map) map.get("data")).get("message")));
    }

    /* access modifiers changed from: protected */
    public void handleError(String str, final Error error) {
        final Result callback = getCallback(str);
        RunUtil.runOnUI(new Runnable() {
            public void run() {
                Result result = callback;
                if (result != null) {
                    result.onError(error);
                }
            }
        });
        if (this.onErrorListener != null) {
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    if (Channel.this.onErrorListener != null) {
                        Channel.this.onErrorListener.onError(error);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void handleConnectMessage(Map<String, Object> map, String str) {
        Map map2 = (Map) map.get("data");
        String str2 = (String) map2.get("id");
        ArrayList arrayList = new ArrayList();
        for (Map create : (List) map2.get("clients")) {
            Client create2 = Client.create(this, create);
            arrayList.add(create2);
            this.connected = this.connected || create2.isHost();
        }
        this.clients.reset();
        this.clients.add((List<Client>) arrayList);
        this.clients.setMyClientId(str2);
        if (isWebSocketOpen()) {
            this.connectionHandler.startPing();
        }
        handleConnect(str);
    }

    private void handleConnect(String str) {
        final Result callback = getCallback(str);
        RunUtil.runOnUI(new Runnable() {
            public void run() {
                Result result = callback;
                if (result != null) {
                    result.onSuccess(Channel.this.clients.me());
                }
            }
        });
        if (this.onConnectListener != null) {
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    if (Channel.this.onConnectListener != null) {
                        Channel.this.onConnectListener.onConnect(Channel.this.clients.me());
                    }
                }
            });
        }
    }

    private void handleClientConnectMessage(Map<String, Object> map) {
        final Client create = Client.create(this, (Map) map.get("data"));
        this.connected = true;
        this.clients.add(create);
        if (this.onClientConnectListener != null) {
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    if (Channel.this.onClientConnectListener != null) {
                        Channel.this.onClientConnectListener.onClientConnect(create);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void handleClientDisconnectMessage(Map<String, Object> map) {
        Map map2 = (Map) map.get("data");
        if (map2 != null) {
            final Client client = this.clients.get((String) map2.get("id"));
            if (client != null) {
                if (client.isHost()) {
                    this.connected = false;
                }
                this.clients.remove(client);
                if (this.onClientDisconnectListener != null) {
                    RunUtil.runOnUI(new Runnable() {
                        public void run() {
                            if (Channel.this.onClientDisconnectListener != null) {
                                Channel.this.onClientDisconnectListener.onClientDisconnect(client);
                            }
                        }
                    });
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void handleClientMessage(Map<String, Object> map, byte[] bArr) {
        Message message = new Message(this, (String) map.get("event"), map.get("data"), this.clients.get((String) map.get(ProfileType.FROM)), bArr);
        emit(message);
    }

    public void addOnMessageListener(String str, OnMessageListener onMessageListener) {
        if (str == null || onMessageListener == null) {
            throw new NullPointerException();
        }
        List list = (List) this.messageListeners.get(str);
        if (list == null) {
            list = new CopyOnWriteArrayList();
            this.messageListeners.put(str, list);
        }
        list.add(onMessageListener);
    }

    public void removeOnMessageListeners(String str) {
        if (str != null) {
            ((List) this.messageListeners.get(str)).clear();
            return;
        }
        throw new NullPointerException();
    }

    public void removeOnMessageListener(String str, OnMessageListener onMessageListener) {
        if (str == null || onMessageListener == null) {
            throw new NullPointerException();
        }
        List list = (List) this.messageListeners.get(str);
        if (list != null) {
            list.remove(onMessageListener);
        }
    }

    public void removeOnMessageListeners() {
        this.messageListeners.clear();
    }

    public void removeAllListeners() {
        setOnConnectListener(null);
        setOnDisconnectListener(null);
        setOnClientConnectListener(null);
        setOnClientDisconnectListener(null);
        setOnReadyListener(null);
        setOnErrorListener(null);
        removeOnMessageListeners();
    }

    public void setConnectionTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("timeout < 0");
        } else if (i == 0) {
            this.connectionHandler.stopPing();
        } else {
            this.connectionHandler.setPingTimeout(i);
            if (isWebSocketOpen()) {
                this.connectionHandler.startPing();
            }
        }
    }

    private void emit(final Message message) {
        if (message != null) {
            List<OnMessageListener> list = (List) this.messageListeners.get(message.getEvent());
            if (list != null) {
                for (final OnMessageListener onMessageListener : list) {
                    RunUtil.runOnUiDelayed(new Runnable() {
                        public void run() {
                            onMessageListener.onMessage(message);
                        }
                    }, 5);
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* access modifiers changed from: protected */
    public void registerCallback(String str, Result result) {
        if (str != null && result != null) {
            this.callbacks.put(str, result);
        }
    }

    /* access modifiers changed from: protected */
    public Result getCallback(String str) {
        if (str != null) {
            return (Result) this.callbacks.remove(str);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public String getUID() {
        return String.valueOf(random.nextInt(Integer.MAX_VALUE));
    }
}
