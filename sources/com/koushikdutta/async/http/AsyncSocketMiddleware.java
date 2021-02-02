package com.koushikdutta.async.http;

import android.net.Uri;
import com.koushikdutta.async.ArrayDeque;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.future.SimpleCancellable;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.GetSocketData;
import java.net.InetSocketAddress;
import java.util.Hashtable;

public class AsyncSocketMiddleware extends SimpleMiddleware {
    boolean connectAllAddresses;
    Hashtable<String, ConnectionInfo> connectionInfo;
    int idleTimeoutMs;
    protected AsyncHttpClient mClient;
    int maxConnectionCount;
    int port;
    InetSocketAddress proxyAddress;
    String proxyHost;
    int proxyPort;
    String scheme;

    static class ConnectionInfo {
        int openCount;
        ArrayDeque<GetSocketData> queue = new ArrayDeque<>();
        ArrayDeque<IdleSocketHolder> sockets = new ArrayDeque<>();

        ConnectionInfo() {
        }
    }

    class IdleSocketHolder {
        long idleTime = System.currentTimeMillis();
        AsyncSocket socket;

        public IdleSocketHolder(AsyncSocket asyncSocket) {
            this.socket = asyncSocket;
        }
    }

    /* access modifiers changed from: protected */
    public ConnectCallback wrapCallback(GetSocketData getSocketData, Uri uri, int i, boolean z, ConnectCallback connectCallback) {
        return connectCallback;
    }

    public AsyncSocketMiddleware(AsyncHttpClient asyncHttpClient, String str, int i) {
        this.idleTimeoutMs = 300000;
        this.connectionInfo = new Hashtable<>();
        this.maxConnectionCount = Integer.MAX_VALUE;
        this.mClient = asyncHttpClient;
        this.scheme = str;
        this.port = i;
    }

    public void setIdleTimeoutMs(int i) {
        this.idleTimeoutMs = i;
    }

    public int getSchemePort(Uri uri) {
        if (uri.getScheme() == null || !uri.getScheme().equals(this.scheme)) {
            return -1;
        }
        if (uri.getPort() == -1) {
            return this.port;
        }
        return uri.getPort();
    }

    public AsyncSocketMiddleware(AsyncHttpClient asyncHttpClient) {
        this(asyncHttpClient, "http", 80);
    }

    public boolean getConnectAllAddresses() {
        return this.connectAllAddresses;
    }

    public void setConnectAllAddresses(boolean z) {
        this.connectAllAddresses = z;
    }

    public void disableProxy() {
        this.proxyPort = -1;
        this.proxyHost = null;
        this.proxyAddress = null;
    }

    public void enableProxy(String str, int i) {
        this.proxyHost = str;
        this.proxyPort = i;
        this.proxyAddress = null;
    }

    /* access modifiers changed from: 0000 */
    public String computeLookup(Uri uri, int i, String str, int i2) {
        String str2;
        String str3 = ":";
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(str3);
            sb.append(i2);
            str2 = sb.toString();
        } else {
            str2 = "";
        }
        if (str != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(str3);
            sb2.append(i2);
            str2 = sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(uri.getScheme());
        sb3.append("//");
        sb3.append(uri.getHost());
        sb3.append(str3);
        sb3.append(i);
        sb3.append("?proxy=");
        sb3.append(str2);
        return sb3.toString();
    }

    public int getMaxConnectionCount() {
        return this.maxConnectionCount;
    }

    public void setMaxConnectionCount(int i) {
        this.maxConnectionCount = i;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0090, code lost:
        if (r11.connectAllAddresses == false) goto L_0x00c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0094, code lost:
        if (r11.proxyHost != null) goto L_0x00c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x009c, code lost:
        if (r12.request.getProxyHost() == null) goto L_0x009f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x009f, code lost:
        r12.request.logv("Resolving domain and connecting to all available addresses");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00bf, code lost:
        return (com.koushikdutta.async.future.Cancellable) r11.mClient.getServer().getAllByName(r3.getHost()).then(new com.koushikdutta.async.http.AsyncSocketMiddleware.AnonymousClass1(r11));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00c0, code lost:
        r12.request.logd("Connecting socket");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00ce, code lost:
        if (r12.request.getProxyHost() != null) goto L_0x00dd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00d2, code lost:
        if (r11.proxyHost == null) goto L_0x00dd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00d4, code lost:
        r12.request.enableProxy(r11.proxyHost, r11.proxyPort);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00e3, code lost:
        if (r12.request.getProxyHost() == null) goto L_0x00f3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00e5, code lost:
        r0 = r12.request.getProxyHost();
        r7 = r12.request.getProxyPort();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00f3, code lost:
        r0 = r3.getHost();
        r7 = r4;
        r5 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00fa, code lost:
        if (r5 == false) goto L_0x011a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00fc, code lost:
        r1 = r12.request;
        r2 = new java.lang.StringBuilder();
        r2.append("Using proxy: ");
        r2.append(r0);
        r2.append(":");
        r2.append(r7);
        r1.logv(r2.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x012c, code lost:
        return r11.mClient.getServer().connectSocket(r0, r7, wrapCallback(r12, r3, r4, r5, r12.connectCallback));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.koushikdutta.async.future.Cancellable getSocket(final com.koushikdutta.async.http.AsyncHttpClientMiddleware.GetSocketData r12) {
        /*
            r11 = this;
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r12.request
            android.net.Uri r3 = r0.getUri()
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r12.request
            android.net.Uri r0 = r0.getUri()
            int r4 = r11.getSchemePort(r0)
            r0 = 0
            r1 = -1
            if (r4 != r1) goto L_0x0015
            return r0
        L_0x0015:
            com.koushikdutta.async.util.UntypedHashtable r1 = r12.state
            java.lang.String r2 = "socket-owner"
            r1.put(r2, r11)
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r12.request
            java.lang.String r1 = r1.getProxyHost()
            com.koushikdutta.async.http.AsyncHttpRequest r2 = r12.request
            int r2 = r2.getProxyPort()
            java.lang.String r1 = r11.computeLookup(r3, r4, r1, r2)
            com.koushikdutta.async.http.AsyncSocketMiddleware$ConnectionInfo r1 = r11.getOrCreateConnectionInfo(r1)
            monitor-enter(r11)
            int r2 = r1.openCount     // Catch:{ all -> 0x012d }
            int r5 = r11.maxConnectionCount     // Catch:{ all -> 0x012d }
            if (r2 < r5) goto L_0x0043
            com.koushikdutta.async.future.SimpleCancellable r0 = new com.koushikdutta.async.future.SimpleCancellable     // Catch:{ all -> 0x012d }
            r0.<init>()     // Catch:{ all -> 0x012d }
            com.koushikdutta.async.ArrayDeque<com.koushikdutta.async.http.AsyncHttpClientMiddleware$GetSocketData> r1 = r1.queue     // Catch:{ all -> 0x012d }
            r1.add(r12)     // Catch:{ all -> 0x012d }
            monitor-exit(r11)     // Catch:{ all -> 0x012d }
            return r0
        L_0x0043:
            int r2 = r1.openCount     // Catch:{ all -> 0x012d }
            r5 = 1
            int r2 = r2 + r5
            r1.openCount = r2     // Catch:{ all -> 0x012d }
        L_0x0049:
            com.koushikdutta.async.ArrayDeque<com.koushikdutta.async.http.AsyncSocketMiddleware$IdleSocketHolder> r2 = r1.sockets     // Catch:{ all -> 0x012d }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x012d }
            if (r2 != 0) goto L_0x008d
            com.koushikdutta.async.ArrayDeque<com.koushikdutta.async.http.AsyncSocketMiddleware$IdleSocketHolder> r2 = r1.sockets     // Catch:{ all -> 0x012d }
            java.lang.Object r2 = r2.pop()     // Catch:{ all -> 0x012d }
            com.koushikdutta.async.http.AsyncSocketMiddleware$IdleSocketHolder r2 = (com.koushikdutta.async.http.AsyncSocketMiddleware.IdleSocketHolder) r2     // Catch:{ all -> 0x012d }
            com.koushikdutta.async.AsyncSocket r6 = r2.socket     // Catch:{ all -> 0x012d }
            long r7 = r2.idleTime     // Catch:{ all -> 0x012d }
            int r2 = r11.idleTimeoutMs     // Catch:{ all -> 0x012d }
            long r9 = (long) r2     // Catch:{ all -> 0x012d }
            long r7 = r7 + r9
            long r9 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x012d }
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 >= 0) goto L_0x0070
            r6.setClosedCallback(r0)     // Catch:{ all -> 0x012d }
            r6.close()     // Catch:{ all -> 0x012d }
            goto L_0x0049
        L_0x0070:
            boolean r2 = r6.isOpen()     // Catch:{ all -> 0x012d }
            if (r2 != 0) goto L_0x0077
            goto L_0x0049
        L_0x0077:
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r12.request     // Catch:{ all -> 0x012d }
            java.lang.String r2 = "Reusing keep-alive socket"
            r1.logd(r2)     // Catch:{ all -> 0x012d }
            com.koushikdutta.async.callback.ConnectCallback r12 = r12.connectCallback     // Catch:{ all -> 0x012d }
            r12.onConnectCompleted(r0, r6)     // Catch:{ all -> 0x012d }
            com.koushikdutta.async.future.SimpleCancellable r12 = new com.koushikdutta.async.future.SimpleCancellable     // Catch:{ all -> 0x012d }
            r12.<init>()     // Catch:{ all -> 0x012d }
            r12.setComplete()     // Catch:{ all -> 0x012d }
            monitor-exit(r11)     // Catch:{ all -> 0x012d }
            return r12
        L_0x008d:
            monitor-exit(r11)     // Catch:{ all -> 0x012d }
            boolean r0 = r11.connectAllAddresses
            if (r0 == 0) goto L_0x00c0
            java.lang.String r0 = r11.proxyHost
            if (r0 != 0) goto L_0x00c0
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r12.request
            java.lang.String r0 = r0.getProxyHost()
            if (r0 == 0) goto L_0x009f
            goto L_0x00c0
        L_0x009f:
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r12.request
            java.lang.String r1 = "Resolving domain and connecting to all available addresses"
            r0.logv(r1)
            com.koushikdutta.async.http.AsyncHttpClient r0 = r11.mClient
            com.koushikdutta.async.AsyncServer r0 = r0.getServer()
            java.lang.String r1 = r3.getHost()
            com.koushikdutta.async.future.Future r0 = r0.getAllByName(r1)
            com.koushikdutta.async.http.AsyncSocketMiddleware$1 r1 = new com.koushikdutta.async.http.AsyncSocketMiddleware$1
            r1.<init>(r12, r3, r4)
            com.koushikdutta.async.future.FutureCallback r12 = r0.then(r1)
            com.koushikdutta.async.future.Cancellable r12 = (com.koushikdutta.async.future.Cancellable) r12
            return r12
        L_0x00c0:
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r12.request
            java.lang.String r1 = "Connecting socket"
            r0.logd(r1)
            r0 = 0
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r12.request
            java.lang.String r1 = r1.getProxyHost()
            if (r1 != 0) goto L_0x00dd
            java.lang.String r1 = r11.proxyHost
            if (r1 == 0) goto L_0x00dd
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r12.request
            java.lang.String r2 = r11.proxyHost
            int r6 = r11.proxyPort
            r1.enableProxy(r2, r6)
        L_0x00dd:
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r12.request
            java.lang.String r1 = r1.getProxyHost()
            if (r1 == 0) goto L_0x00f3
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r12.request
            java.lang.String r0 = r0.getProxyHost()
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r12.request
            int r1 = r1.getProxyPort()
            r7 = r1
            goto L_0x00fa
        L_0x00f3:
            java.lang.String r1 = r3.getHost()
            r0 = r1
            r7 = r4
            r5 = 0
        L_0x00fa:
            if (r5 == 0) goto L_0x011a
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r12.request
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r6 = "Using proxy: "
            r2.append(r6)
            r2.append(r0)
            java.lang.String r6 = ":"
            r2.append(r6)
            r2.append(r7)
            java.lang.String r2 = r2.toString()
            r1.logv(r2)
        L_0x011a:
            com.koushikdutta.async.http.AsyncHttpClient r1 = r11.mClient
            com.koushikdutta.async.AsyncServer r8 = r1.getServer()
            com.koushikdutta.async.callback.ConnectCallback r6 = r12.connectCallback
            r1 = r11
            r2 = r12
            com.koushikdutta.async.callback.ConnectCallback r12 = r1.wrapCallback(r2, r3, r4, r5, r6)
            com.koushikdutta.async.future.Cancellable r12 = r8.connectSocket(r0, r7, r12)
            return r12
        L_0x012d:
            r12 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x012d }
            goto L_0x0131
        L_0x0130:
            throw r12
        L_0x0131:
            goto L_0x0130
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.AsyncSocketMiddleware.getSocket(com.koushikdutta.async.http.AsyncHttpClientMiddleware$GetSocketData):com.koushikdutta.async.future.Cancellable");
    }

    private ConnectionInfo getOrCreateConnectionInfo(String str) {
        ConnectionInfo connectionInfo2 = (ConnectionInfo) this.connectionInfo.get(str);
        if (connectionInfo2 != null) {
            return connectionInfo2;
        }
        ConnectionInfo connectionInfo3 = new ConnectionInfo();
        this.connectionInfo.put(str, connectionInfo3);
        return connectionInfo3;
    }

    /* access modifiers changed from: private */
    public void maybeCleanupConnectionInfo(String str) {
        ConnectionInfo connectionInfo2 = (ConnectionInfo) this.connectionInfo.get(str);
        if (connectionInfo2 != null) {
            while (!connectionInfo2.sockets.isEmpty()) {
                IdleSocketHolder idleSocketHolder = (IdleSocketHolder) connectionInfo2.sockets.peekLast();
                AsyncSocket asyncSocket = idleSocketHolder.socket;
                if (idleSocketHolder.idleTime + ((long) this.idleTimeoutMs) > System.currentTimeMillis()) {
                    break;
                }
                connectionInfo2.sockets.pop();
                asyncSocket.setClosedCallback(null);
                asyncSocket.close();
            }
            if (connectionInfo2.openCount == 0 && connectionInfo2.queue.isEmpty() && connectionInfo2.sockets.isEmpty()) {
                this.connectionInfo.remove(str);
            }
        }
    }

    /* access modifiers changed from: private */
    public void recycleSocket(AsyncSocket asyncSocket, AsyncHttpRequest asyncHttpRequest) {
        final ArrayDeque<IdleSocketHolder> arrayDeque;
        if (asyncSocket != null) {
            Uri uri = asyncHttpRequest.getUri();
            final String computeLookup = computeLookup(uri, getSchemePort(uri), asyncHttpRequest.getProxyHost(), asyncHttpRequest.getProxyPort());
            final IdleSocketHolder idleSocketHolder = new IdleSocketHolder(asyncSocket);
            synchronized (this) {
                arrayDeque = getOrCreateConnectionInfo(computeLookup).sockets;
                arrayDeque.push(idleSocketHolder);
            }
            asyncSocket.setClosedCallback(new CompletedCallback() {
                public void onCompleted(Exception exc) {
                    synchronized (AsyncSocketMiddleware.this) {
                        arrayDeque.remove(idleSocketHolder);
                        AsyncSocketMiddleware.this.maybeCleanupConnectionInfo(computeLookup);
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void idleSocket(final AsyncSocket asyncSocket) {
        asyncSocket.setEndCallback(new CompletedCallback() {
            public void onCompleted(Exception exc) {
                asyncSocket.setClosedCallback(null);
                asyncSocket.close();
            }
        });
        asyncSocket.setWriteableCallback(null);
        asyncSocket.setDataCallback(new NullDataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                super.onDataAvailable(dataEmitter, byteBufferList);
                byteBufferList.recycle();
                asyncSocket.setClosedCallback(null);
                asyncSocket.close();
            }
        });
    }

    private void nextConnection(AsyncHttpRequest asyncHttpRequest) {
        Uri uri = asyncHttpRequest.getUri();
        String computeLookup = computeLookup(uri, getSchemePort(uri), asyncHttpRequest.getProxyHost(), asyncHttpRequest.getProxyPort());
        synchronized (this) {
            ConnectionInfo connectionInfo2 = (ConnectionInfo) this.connectionInfo.get(computeLookup);
            if (connectionInfo2 != null) {
                connectionInfo2.openCount--;
                while (connectionInfo2.openCount < this.maxConnectionCount && connectionInfo2.queue.size() > 0) {
                    GetSocketData getSocketData = (GetSocketData) connectionInfo2.queue.remove();
                    SimpleCancellable simpleCancellable = (SimpleCancellable) getSocketData.socketCancellable;
                    if (!simpleCancellable.isCancelled()) {
                        simpleCancellable.setParent(getSocket(getSocketData));
                    }
                }
                maybeCleanupConnectionInfo(computeLookup);
            }
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:17:0x0053=Splitter:B:17:0x0053, B:21:0x006a=Splitter:B:21:0x006a} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onResponseComplete(com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnResponseCompleteDataOnRequestSentData r4) {
        /*
            r3 = this;
            com.koushikdutta.async.util.UntypedHashtable r0 = r4.state
            java.lang.String r1 = "socket-owner"
            java.lang.Object r0 = r0.get(r1)
            if (r0 == r3) goto L_0x000b
            return
        L_0x000b:
            com.koushikdutta.async.AsyncSocket r0 = r4.socket     // Catch:{ all -> 0x007c }
            r3.idleSocket(r0)     // Catch:{ all -> 0x007c }
            java.lang.Exception r0 = r4.exception     // Catch:{ all -> 0x007c }
            r1 = 0
            if (r0 != 0) goto L_0x006a
            com.koushikdutta.async.AsyncSocket r0 = r4.socket     // Catch:{ all -> 0x007c }
            boolean r0 = r0.isOpen()     // Catch:{ all -> 0x007c }
            if (r0 != 0) goto L_0x001e
            goto L_0x006a
        L_0x001e:
            com.koushikdutta.async.http.AsyncHttpClientMiddleware$ResponseHead r0 = r4.response     // Catch:{ all -> 0x007c }
            java.lang.String r0 = r0.protocol()     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.http.AsyncHttpClientMiddleware$ResponseHead r2 = r4.response     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.http.Headers r2 = r2.headers()     // Catch:{ all -> 0x007c }
            boolean r0 = com.koushikdutta.async.http.HttpUtil.isKeepAlive(r0, r2)     // Catch:{ all -> 0x007c }
            if (r0 == 0) goto L_0x0053
            com.koushikdutta.async.http.Protocol r0 = com.koushikdutta.async.http.Protocol.HTTP_1_1     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.http.AsyncHttpRequest r2 = r4.request     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.http.Headers r2 = r2.getHeaders()     // Catch:{ all -> 0x007c }
            boolean r0 = com.koushikdutta.async.http.HttpUtil.isKeepAlive(r0, r2)     // Catch:{ all -> 0x007c }
            if (r0 != 0) goto L_0x003f
            goto L_0x0053
        L_0x003f:
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r4.request     // Catch:{ all -> 0x007c }
            java.lang.String r1 = "Recycling keep-alive socket"
            r0.logd(r1)     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.AsyncSocket r0 = r4.socket     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.http.AsyncHttpRequest r1 = r4.request     // Catch:{ all -> 0x007c }
            r3.recycleSocket(r0, r1)     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.http.AsyncHttpRequest r4 = r4.request
            r3.nextConnection(r4)
            return
        L_0x0053:
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r4.request     // Catch:{ all -> 0x007c }
            java.lang.String r2 = "closing out socket (not keep alive)"
            r0.logv(r2)     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.AsyncSocket r0 = r4.socket     // Catch:{ all -> 0x007c }
            r0.setClosedCallback(r1)     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.AsyncSocket r0 = r4.socket     // Catch:{ all -> 0x007c }
            r0.close()     // Catch:{ all -> 0x007c }
        L_0x0064:
            com.koushikdutta.async.http.AsyncHttpRequest r4 = r4.request
            r3.nextConnection(r4)
            return
        L_0x006a:
            com.koushikdutta.async.http.AsyncHttpRequest r0 = r4.request     // Catch:{ all -> 0x007c }
            java.lang.String r2 = "closing out socket (exception)"
            r0.logv(r2)     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.AsyncSocket r0 = r4.socket     // Catch:{ all -> 0x007c }
            r0.setClosedCallback(r1)     // Catch:{ all -> 0x007c }
            com.koushikdutta.async.AsyncSocket r0 = r4.socket     // Catch:{ all -> 0x007c }
            r0.close()     // Catch:{ all -> 0x007c }
            goto L_0x0064
        L_0x007c:
            r0 = move-exception
            com.koushikdutta.async.http.AsyncHttpRequest r4 = r4.request
            r3.nextConnection(r4)
            goto L_0x0084
        L_0x0083:
            throw r0
        L_0x0084:
            goto L_0x0083
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.AsyncSocketMiddleware.onResponseComplete(com.koushikdutta.async.http.AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData):void");
    }
}
