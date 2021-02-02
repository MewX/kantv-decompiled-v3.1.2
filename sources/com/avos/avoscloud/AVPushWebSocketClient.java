package com.avos.avoscloud;

import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.os.Build.VERSION;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.java_websocket.WebSocket;
import com.avos.avoscloud.java_websocket.client.WebSocketClient;
import com.avos.avoscloud.java_websocket.drafts.Draft_17;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.framing.FramedataImpl1;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import com.avos.avospush.session.CommandPacket;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.SocketFactory;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

public class AVPushWebSocketClient extends WebSocketClient {
    private static final String HEADER_SNI_HOST = "Host";
    private static final String HEADER_SUB_PROTOCOL = "Sec-WebSocket-Protocol";
    private static final int PING_TIMEOUT_CODE = 3000;
    private final long RECONNECT_INTERVAL = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    AtomicBoolean destroyed = new AtomicBoolean(false);
    private HeartBeatPolicy heartBeatPolicy;
    AVPacketParser receiver;
    Runnable reconnectTask = new Runnable() {
        public void run() {
            AVPushWebSocketClient.this.reconnect();
        }
    };
    SSLSessionCache sessionCache;

    public interface AVPacketParser {
        void loginCmd();

        void processCommand(ByteBuffer byteBuffer);

        void processConnectionStatus(AVException aVException);

        void processRemoteServerNotAvailable();

        void processSessionsStatus(boolean z);
    }

    public void onMessage(String str) {
    }

    public AVPushWebSocketClient(URI uri, AVPacketParser aVPacketParser, final String str, boolean z) {
        super(uri, new Draft_17(), new HashMap<String, String>() {
            {
                put(AVPushWebSocketClient.HEADER_SUB_PROTOCOL, str);
            }
        }, 0);
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append("trying to connect ");
            sb.append(uri);
            sb.append(", subProtocol=");
            sb.append(str);
            avlog.d(sb.toString());
        }
        initHeartBeatPolicy();
        if (z) {
            setSocket();
        }
        this.receiver = aVPacketParser;
    }

    private void initHeartBeatPolicy() {
        this.heartBeatPolicy = new HeartBeatPolicy() {
            public void onTimeOut() {
                AVPushWebSocketClient.this.closeConnection(3000, "No response for ping");
            }

            public void sendPing() {
                AVPushWebSocketClient.this.ping();
            }
        };
    }

    private void setSocket() {
        try {
            String uri = getURI().toString();
            if (AVUtils.isBlankContent(uri)) {
                return;
            }
            if (uri.startsWith("wss")) {
                if (this.sessionCache == null) {
                    this.sessionCache = new SSLSessionCache(AVOSCloud.applicationContext);
                }
                SSLCertificateSocketFactory sSLCertificateSocketFactory = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(5000, this.sessionCache);
                Socket createSocket = sSLCertificateSocketFactory.createSocket();
                if (VERSION.SDK_INT >= 17) {
                    sSLCertificateSocketFactory.setUseSessionTickets(createSocket, true);
                }
                if (VERSION.SDK_INT >= 24 && (createSocket instanceof SSLSocket)) {
                    try {
                        SNIHostName sNIHostName = new SNIHostName(getURI().getHost());
                        ArrayList arrayList = new ArrayList(1);
                        arrayList.add(sNIHostName);
                        SSLParameters sSLParameters = ((SSLSocket) createSocket).getSSLParameters();
                        sSLParameters.setServerNames(arrayList);
                        ((SSLSocket) createSocket).setSSLParameters(sSLParameters);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                setSocket(createSocket);
                return;
            }
            setSocket(SocketFactory.getDefault().createSocket());
        } catch (Exception e2) {
            avlog.e("Socket Error", new AVException(e2));
        }
    }

    public void onOpen(ServerHandshake serverHandshake) {
        cancelReconnect();
        this.heartBeatPolicy.startHeartbeat();
        AVPacketParser aVPacketParser = this.receiver;
        if (aVPacketParser != null) {
            aVPacketParser.loginCmd();
            this.receiver.processConnectionStatus(null);
            this.receiver.processSessionsStatus(false);
        }
        avlog.d("onOpen()");
    }

    public void onMessage(ByteBuffer byteBuffer) {
        AVPacketParser aVPacketParser = this.receiver;
        if (aVPacketParser != null) {
            aVPacketParser.processCommand(byteBuffer);
        }
    }

    public void onClose(int i, String str, boolean z) {
        this.heartBeatPolicy.stopHeartbeat();
        AVPacketParser aVPacketParser = this.receiver;
        if (aVPacketParser != null) {
            aVPacketParser.processSessionsStatus(true);
        }
        AVPacketParser aVPacketParser2 = this.receiver;
        if (aVPacketParser2 != null) {
            aVPacketParser2.processConnectionStatus(new AVException(i, str));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("onClose(). local disconnection:");
        sb.append(i);
        sb.append("  ");
        sb.append(str);
        sb.append(" :");
        sb.append(z);
        avlog.d(sb.toString());
        if (i == -1) {
            avlog.d("connection refused");
            if (z) {
                AVPacketParser aVPacketParser3 = this.receiver;
                if (aVPacketParser3 != null) {
                    aVPacketParser3.processRemoteServerNotAvailable();
                    return;
                }
                return;
            }
            scheduleReconnect();
        } else if (i == 1006) {
            scheduleReconnect();
        } else if (i != 3000) {
            scheduleReconnect();
        } else {
            avlog.d("connection unhealthy");
            reconnect();
        }
    }

    public void onError(Exception exc) {
        exc.printStackTrace();
        if (this.receiver != null && AVUtils.isConnected(AVOSCloud.applicationContext)) {
            this.receiver.processRemoteServerNotAvailable();
        }
    }

    /* access modifiers changed from: protected */
    public void scheduleReconnect() {
        AVOSCloud.handler.postDelayed(this.reconnectTask, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    /* access modifiers changed from: protected */
    public void cancelReconnect() {
        AVOSCloud.handler.removeCallbacks(this.reconnectTask);
    }

    /* access modifiers changed from: protected */
    public void destroy() {
        this.destroyed.set(true);
        cancelReconnect();
        this.heartBeatPolicy.stopHeartbeat();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0026, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0028, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void reconnect() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.isConnecting()     // Catch:{ all -> 0x0029 }
            if (r0 != 0) goto L_0x0027
            boolean r0 = r1.isOpen()     // Catch:{ all -> 0x0029 }
            if (r0 == 0) goto L_0x000e
            goto L_0x0027
        L_0x000e:
            android.content.Context r0 = com.avos.avoscloud.AVOSCloud.applicationContext     // Catch:{ all -> 0x0029 }
            boolean r0 = com.avos.avoscloud.AVUtils.isConnected(r0)     // Catch:{ all -> 0x0029 }
            if (r0 == 0) goto L_0x001a
            r1.connect()     // Catch:{ all -> 0x0029 }
            goto L_0x0025
        L_0x001a:
            java.util.concurrent.atomic.AtomicBoolean r0 = r1.destroyed     // Catch:{ all -> 0x0029 }
            boolean r0 = r0.get()     // Catch:{ all -> 0x0029 }
            if (r0 != 0) goto L_0x0025
            r1.scheduleReconnect()     // Catch:{ all -> 0x0029 }
        L_0x0025:
            monitor-exit(r1)
            return
        L_0x0027:
            monitor-exit(r1)
            return
        L_0x0029:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVPushWebSocketClient.reconnect():void");
    }

    /* access modifiers changed from: protected */
    public void ping() {
        FramedataImpl1 framedataImpl1 = new FramedataImpl1(Opcode.PING);
        framedataImpl1.setFin(true);
        sendFrame(framedataImpl1);
    }

    public void send(CommandPacket commandPacket) {
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append("uplink : ");
            sb.append(commandPacket.getGenericCommand().toString());
            avlog.d(sb.toString());
        }
        try {
            send(commandPacket.getGenericCommand().toByteArray());
        } catch (Exception e) {
            avlog.e(e.getMessage());
        }
    }

    public void onWebsocketPong(WebSocket webSocket, Framedata framedata) {
        super.onWebsocketPong(webSocket, framedata);
        this.heartBeatPolicy.onPong();
    }
}
