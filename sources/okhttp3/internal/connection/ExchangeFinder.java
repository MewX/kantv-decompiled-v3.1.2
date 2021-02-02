package okhttp3.internal.connection;

import java.io.IOException;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Interceptor.Chain;
import okhttp3.OkHttpClient;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteSelector.Selection;
import okhttp3.internal.http.ExchangeCodec;

final class ExchangeFinder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Address address;
    private final Call call;
    private RealConnection connectingConnection;
    private final RealConnectionPool connectionPool;
    private final EventListener eventListener;
    private boolean hasStreamFailure;
    private Selection routeSelection;
    private final RouteSelector routeSelector;
    private final Transmitter transmitter;

    ExchangeFinder(Transmitter transmitter2, RealConnectionPool realConnectionPool, Address address2, Call call2, EventListener eventListener2) {
        this.transmitter = transmitter2;
        this.connectionPool = realConnectionPool;
        this.address = address2;
        this.call = call2;
        this.eventListener = eventListener2;
        this.routeSelector = new RouteSelector(address2, realConnectionPool.routeDatabase, call2, eventListener2);
    }

    public ExchangeCodec find(OkHttpClient okHttpClient, Chain chain, boolean z) {
        try {
            return findHealthyConnection(chain.connectTimeoutMillis(), chain.readTimeoutMillis(), chain.writeTimeoutMillis(), okHttpClient.pingIntervalMillis(), okHttpClient.retryOnConnectionFailure(), z).newCodec(okHttpClient, chain);
        } catch (RouteException e) {
            trackFailure();
            throw e;
        } catch (IOException e2) {
            trackFailure();
            throw new RouteException(e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0018, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0012, code lost:
        if (r0.isHealthy(r9) != false) goto L_0x0018;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private okhttp3.internal.connection.RealConnection findHealthyConnection(int r4, int r5, int r6, int r7, boolean r8, boolean r9) throws java.io.IOException {
        /*
            r3 = this;
        L_0x0000:
            okhttp3.internal.connection.RealConnection r0 = r3.findConnection(r4, r5, r6, r7, r8)
            okhttp3.internal.connection.RealConnectionPool r1 = r3.connectionPool
            monitor-enter(r1)
            int r2 = r0.successCount     // Catch:{ all -> 0x0019 }
            if (r2 != 0) goto L_0x000d
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            return r0
        L_0x000d:
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            boolean r1 = r0.isHealthy(r9)
            if (r1 != 0) goto L_0x0018
            r0.noNewExchanges()
            goto L_0x0000
        L_0x0018:
            return r0
        L_0x0019:
            r4 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            goto L_0x001d
        L_0x001c:
            throw r4
        L_0x001d:
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ExchangeFinder.findHealthyConnection(int, int, int, int, boolean, boolean):okhttp3.internal.connection.RealConnection");
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x0096 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00cf  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00d7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private okhttp3.internal.connection.RealConnection findConnection(int r19, int r20, int r21, int r22, boolean r23) throws java.io.IOException {
        /*
            r18 = this;
            r1 = r18
            okhttp3.internal.connection.RealConnectionPool r2 = r1.connectionPool
            monitor-enter(r2)
            okhttp3.internal.connection.Transmitter r0 = r1.transmitter     // Catch:{ all -> 0x0140 }
            boolean r0 = r0.isCanceled()     // Catch:{ all -> 0x0140 }
            if (r0 != 0) goto L_0x0138
            r0 = 0
            r1.hasStreamFailure = r0     // Catch:{ all -> 0x0140 }
            boolean r3 = r18.retryCurrentRoute()     // Catch:{ all -> 0x0140 }
            r4 = 0
            if (r3 == 0) goto L_0x0020
            okhttp3.internal.connection.Transmitter r3 = r1.transmitter     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.RealConnection r3 = r3.connection     // Catch:{ all -> 0x0140 }
            okhttp3.Route r3 = r3.route()     // Catch:{ all -> 0x0140 }
            goto L_0x0021
        L_0x0020:
            r3 = r4
        L_0x0021:
            okhttp3.internal.connection.Transmitter r5 = r1.transmitter     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.RealConnection r5 = r5.connection     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.Transmitter r6 = r1.transmitter     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.RealConnection r6 = r6.connection     // Catch:{ all -> 0x0140 }
            if (r6 == 0) goto L_0x003a
            okhttp3.internal.connection.Transmitter r6 = r1.transmitter     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.RealConnection r6 = r6.connection     // Catch:{ all -> 0x0140 }
            boolean r6 = r6.noNewExchanges     // Catch:{ all -> 0x0140 }
            if (r6 == 0) goto L_0x003a
            okhttp3.internal.connection.Transmitter r6 = r1.transmitter     // Catch:{ all -> 0x0140 }
            java.net.Socket r6 = r6.releaseConnectionNoEvents()     // Catch:{ all -> 0x0140 }
            goto L_0x003b
        L_0x003a:
            r6 = r4
        L_0x003b:
            okhttp3.internal.connection.Transmitter r7 = r1.transmitter     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.RealConnection r7 = r7.connection     // Catch:{ all -> 0x0140 }
            if (r7 == 0) goto L_0x0047
            okhttp3.internal.connection.Transmitter r5 = r1.transmitter     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.RealConnection r5 = r5.connection     // Catch:{ all -> 0x0140 }
            r7 = r4
            goto L_0x0049
        L_0x0047:
            r7 = r5
            r5 = r4
        L_0x0049:
            r8 = 1
            if (r5 != 0) goto L_0x0061
            okhttp3.internal.connection.RealConnectionPool r9 = r1.connectionPool     // Catch:{ all -> 0x0140 }
            okhttp3.Address r10 = r1.address     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.Transmitter r11 = r1.transmitter     // Catch:{ all -> 0x0140 }
            boolean r9 = r9.transmitterAcquirePooledConnection(r10, r11, r4, r0)     // Catch:{ all -> 0x0140 }
            if (r9 == 0) goto L_0x005f
            okhttp3.internal.connection.Transmitter r3 = r1.transmitter     // Catch:{ all -> 0x0140 }
            okhttp3.internal.connection.RealConnection r5 = r3.connection     // Catch:{ all -> 0x0140 }
            r9 = r4
            r3 = 1
            goto L_0x0063
        L_0x005f:
            r9 = r3
            goto L_0x0062
        L_0x0061:
            r9 = r4
        L_0x0062:
            r3 = 0
        L_0x0063:
            monitor-exit(r2)     // Catch:{ all -> 0x0140 }
            okhttp3.internal.Util.closeQuietly(r6)
            if (r7 == 0) goto L_0x0070
            okhttp3.EventListener r2 = r1.eventListener
            okhttp3.Call r6 = r1.call
            r2.connectionReleased(r6, r7)
        L_0x0070:
            if (r3 == 0) goto L_0x0079
            okhttp3.EventListener r2 = r1.eventListener
            okhttp3.Call r6 = r1.call
            r2.connectionAcquired(r6, r5)
        L_0x0079:
            if (r5 == 0) goto L_0x007c
            return r5
        L_0x007c:
            if (r9 != 0) goto L_0x0092
            okhttp3.internal.connection.RouteSelector$Selection r2 = r1.routeSelection
            if (r2 == 0) goto L_0x0088
            boolean r2 = r2.hasNext()
            if (r2 != 0) goto L_0x0092
        L_0x0088:
            okhttp3.internal.connection.RouteSelector r2 = r1.routeSelector
            okhttp3.internal.connection.RouteSelector$Selection r2 = r2.next()
            r1.routeSelection = r2
            r2 = 1
            goto L_0x0093
        L_0x0092:
            r2 = 0
        L_0x0093:
            okhttp3.internal.connection.RealConnectionPool r6 = r1.connectionPool
            monitor-enter(r6)
            okhttp3.internal.connection.Transmitter r7 = r1.transmitter     // Catch:{ all -> 0x0135 }
            boolean r7 = r7.isCanceled()     // Catch:{ all -> 0x0135 }
            if (r7 != 0) goto L_0x012d
            if (r2 == 0) goto L_0x00b8
            okhttp3.internal.connection.RouteSelector$Selection r2 = r1.routeSelection     // Catch:{ all -> 0x0135 }
            java.util.List r2 = r2.getAll()     // Catch:{ all -> 0x0135 }
            okhttp3.internal.connection.RealConnectionPool r7 = r1.connectionPool     // Catch:{ all -> 0x0135 }
            okhttp3.Address r10 = r1.address     // Catch:{ all -> 0x0135 }
            okhttp3.internal.connection.Transmitter r11 = r1.transmitter     // Catch:{ all -> 0x0135 }
            boolean r0 = r7.transmitterAcquirePooledConnection(r10, r11, r2, r0)     // Catch:{ all -> 0x0135 }
            if (r0 == 0) goto L_0x00b9
            okhttp3.internal.connection.Transmitter r0 = r1.transmitter     // Catch:{ all -> 0x0135 }
            okhttp3.internal.connection.RealConnection r5 = r0.connection     // Catch:{ all -> 0x0135 }
            r3 = 1
            goto L_0x00b9
        L_0x00b8:
            r2 = r4
        L_0x00b9:
            if (r3 != 0) goto L_0x00cc
            if (r9 != 0) goto L_0x00c3
            okhttp3.internal.connection.RouteSelector$Selection r0 = r1.routeSelection     // Catch:{ all -> 0x0135 }
            okhttp3.Route r9 = r0.next()     // Catch:{ all -> 0x0135 }
        L_0x00c3:
            okhttp3.internal.connection.RealConnection r5 = new okhttp3.internal.connection.RealConnection     // Catch:{ all -> 0x0135 }
            okhttp3.internal.connection.RealConnectionPool r0 = r1.connectionPool     // Catch:{ all -> 0x0135 }
            r5.<init>(r0, r9)     // Catch:{ all -> 0x0135 }
            r1.connectingConnection = r5     // Catch:{ all -> 0x0135 }
        L_0x00cc:
            monitor-exit(r6)     // Catch:{ all -> 0x0135 }
            if (r3 == 0) goto L_0x00d7
            okhttp3.EventListener r0 = r1.eventListener
            okhttp3.Call r2 = r1.call
            r0.connectionAcquired(r2, r5)
            return r5
        L_0x00d7:
            okhttp3.Call r0 = r1.call
            okhttp3.EventListener r3 = r1.eventListener
            r10 = r5
            r11 = r19
            r12 = r20
            r13 = r21
            r14 = r22
            r15 = r23
            r16 = r0
            r17 = r3
            r10.connect(r11, r12, r13, r14, r15, r16, r17)
            okhttp3.internal.connection.RealConnectionPool r0 = r1.connectionPool
            okhttp3.internal.connection.RouteDatabase r0 = r0.routeDatabase
            okhttp3.Route r3 = r5.route()
            r0.connected(r3)
            okhttp3.internal.connection.RealConnectionPool r3 = r1.connectionPool
            monitor-enter(r3)
            r1.connectingConnection = r4     // Catch:{ all -> 0x012a }
            okhttp3.internal.connection.RealConnectionPool r0 = r1.connectionPool     // Catch:{ all -> 0x012a }
            okhttp3.Address r6 = r1.address     // Catch:{ all -> 0x012a }
            okhttp3.internal.connection.Transmitter r7 = r1.transmitter     // Catch:{ all -> 0x012a }
            boolean r0 = r0.transmitterAcquirePooledConnection(r6, r7, r2, r8)     // Catch:{ all -> 0x012a }
            if (r0 == 0) goto L_0x0114
            r5.noNewExchanges = r8     // Catch:{ all -> 0x012a }
            java.net.Socket r4 = r5.socket()     // Catch:{ all -> 0x012a }
            okhttp3.internal.connection.Transmitter r0 = r1.transmitter     // Catch:{ all -> 0x012a }
            okhttp3.internal.connection.RealConnection r5 = r0.connection     // Catch:{ all -> 0x012a }
            goto L_0x011e
        L_0x0114:
            okhttp3.internal.connection.RealConnectionPool r0 = r1.connectionPool     // Catch:{ all -> 0x012a }
            r0.put(r5)     // Catch:{ all -> 0x012a }
            okhttp3.internal.connection.Transmitter r0 = r1.transmitter     // Catch:{ all -> 0x012a }
            r0.acquireConnectionNoEvents(r5)     // Catch:{ all -> 0x012a }
        L_0x011e:
            monitor-exit(r3)     // Catch:{ all -> 0x012a }
            okhttp3.internal.Util.closeQuietly(r4)
            okhttp3.EventListener r0 = r1.eventListener
            okhttp3.Call r2 = r1.call
            r0.connectionAcquired(r2, r5)
            return r5
        L_0x012a:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x012a }
            throw r0
        L_0x012d:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0135 }
            java.lang.String r2 = "Canceled"
            r0.<init>(r2)     // Catch:{ all -> 0x0135 }
            throw r0     // Catch:{ all -> 0x0135 }
        L_0x0135:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0135 }
            throw r0
        L_0x0138:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0140 }
            java.lang.String r3 = "Canceled"
            r0.<init>(r3)     // Catch:{ all -> 0x0140 }
            throw r0     // Catch:{ all -> 0x0140 }
        L_0x0140:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0140 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ExchangeFinder.findConnection(int, int, int, int, boolean):okhttp3.internal.connection.RealConnection");
    }

    /* access modifiers changed from: 0000 */
    public RealConnection connectingConnection() {
        return this.connectingConnection;
    }

    /* access modifiers changed from: 0000 */
    public void trackFailure() {
        synchronized (this.connectionPool) {
            this.hasStreamFailure = true;
        }
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0026, code lost:
        return r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean canRetry() {
        /*
            r3 = this;
            okhttp3.internal.connection.RealConnectionPool r0 = r3.connectionPool
            monitor-enter(r0)
            boolean r1 = r3.hasStreamFailure     // Catch:{ all -> 0x0027 }
            r2 = 0
            if (r1 != 0) goto L_0x000a
            monitor-exit(r0)     // Catch:{ all -> 0x0027 }
            return r2
        L_0x000a:
            boolean r1 = r3.retryCurrentRoute()     // Catch:{ all -> 0x0027 }
            if (r1 != 0) goto L_0x0024
            okhttp3.internal.connection.RouteSelector$Selection r1 = r3.routeSelection     // Catch:{ all -> 0x0027 }
            if (r1 == 0) goto L_0x001c
            okhttp3.internal.connection.RouteSelector$Selection r1 = r3.routeSelection     // Catch:{ all -> 0x0027 }
            boolean r1 = r1.hasNext()     // Catch:{ all -> 0x0027 }
            if (r1 != 0) goto L_0x0024
        L_0x001c:
            okhttp3.internal.connection.RouteSelector r1 = r3.routeSelector     // Catch:{ all -> 0x0027 }
            boolean r1 = r1.hasNext()     // Catch:{ all -> 0x0027 }
            if (r1 == 0) goto L_0x0025
        L_0x0024:
            r2 = 1
        L_0x0025:
            monitor-exit(r0)     // Catch:{ all -> 0x0027 }
            return r2
        L_0x0027:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0027 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ExchangeFinder.canRetry():boolean");
    }

    private boolean retryCurrentRoute() {
        return this.transmitter.connection != null && this.transmitter.connection.routeFailureCount == 0 && Util.sameConnection(this.transmitter.connection.route().address().url(), this.address.url());
    }
}
