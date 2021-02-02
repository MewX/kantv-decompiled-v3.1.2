package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Proxy.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.Address;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;

public final class RealConnectionPool {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Executor executor;
    private final Runnable cleanupRunnable = new Runnable() {
        public final void run() {
            RealConnectionPool.this.lambda$new$0$RealConnectionPool();
        }
    };
    boolean cleanupRunning;
    private final Deque<RealConnection> connections = new ArrayDeque();
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final RouteDatabase routeDatabase = new RouteDatabase();

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
        executor = threadPoolExecutor;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0025 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ void lambda$new$0$RealConnectionPool() {
        /*
            r6 = this;
        L_0x0000:
            long r0 = java.lang.System.nanoTime()
            long r0 = r6.cleanup(r0)
            r2 = -1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L_0x000f
            return
        L_0x000f:
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L_0x0000
            r2 = 1000000(0xf4240, double:4.940656E-318)
            long r4 = r0 / r2
            long r2 = r2 * r4
            long r0 = r0 - r2
            monitor-enter(r6)
            int r1 = (int) r0
            r6.wait(r4, r1)     // Catch:{ InterruptedException -> 0x0025 }
            goto L_0x0025
        L_0x0023:
            r0 = move-exception
            goto L_0x0027
        L_0x0025:
            monitor-exit(r6)     // Catch:{ all -> 0x0023 }
            goto L_0x0000
        L_0x0027:
            monitor-exit(r6)     // Catch:{ all -> 0x0023 }
            goto L_0x002a
        L_0x0029:
            throw r0
        L_0x002a:
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnectionPool.lambda$new$0$RealConnectionPool():void");
    }

    public RealConnectionPool(int i, long j, TimeUnit timeUnit) {
        this.maxIdleConnections = i;
        this.keepAliveDurationNs = timeUnit.toNanos(j);
        if (j <= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("keepAliveDuration <= 0: ");
            sb.append(j);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public synchronized int idleConnectionCount() {
        int i;
        i = 0;
        for (RealConnection realConnection : this.connections) {
            if (realConnection.transmitters.isEmpty()) {
                i++;
            }
        }
        return i;
    }

    public synchronized int connectionCount() {
        return this.connections.size();
    }

    /* access modifiers changed from: 0000 */
    public boolean transmitterAcquirePooledConnection(Address address, Transmitter transmitter, @Nullable List<Route> list, boolean z) {
        for (RealConnection realConnection : this.connections) {
            if ((!z || realConnection.isMultiplexed()) && realConnection.isEligible(address, list)) {
                transmitter.acquireConnectionNoEvents(realConnection);
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public void put(RealConnection realConnection) {
        if (!this.cleanupRunning) {
            this.cleanupRunning = true;
            executor.execute(this.cleanupRunnable);
        }
        this.connections.add(realConnection);
    }

    /* access modifiers changed from: 0000 */
    public boolean connectionBecameIdle(RealConnection realConnection) {
        if (realConnection.noNewExchanges || this.maxIdleConnections == 0) {
            this.connections.remove(realConnection);
            return true;
        }
        notifyAll();
        return false;
    }

    public void evictAll() {
        ArrayList<RealConnection> arrayList = new ArrayList<>();
        synchronized (this) {
            Iterator it = this.connections.iterator();
            while (it.hasNext()) {
                RealConnection realConnection = (RealConnection) it.next();
                if (realConnection.transmitters.isEmpty()) {
                    realConnection.noNewExchanges = true;
                    arrayList.add(realConnection);
                    it.remove();
                }
            }
        }
        for (RealConnection socket : arrayList) {
            Util.closeQuietly(socket.socket());
        }
    }

    /* access modifiers changed from: 0000 */
    public long cleanup(long j) {
        synchronized (this) {
            long j2 = Long.MIN_VALUE;
            RealConnection realConnection = null;
            int i = 0;
            int i2 = 0;
            for (RealConnection realConnection2 : this.connections) {
                if (pruneAndGetAllocationCount(realConnection2, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long j3 = j - realConnection2.idleAtNanos;
                    if (j3 > j2) {
                        realConnection = realConnection2;
                        j2 = j3;
                    }
                }
            }
            if (j2 < this.keepAliveDurationNs) {
                if (i <= this.maxIdleConnections) {
                    if (i > 0) {
                        long j4 = this.keepAliveDurationNs - j2;
                        return j4;
                    } else if (i2 > 0) {
                        long j5 = this.keepAliveDurationNs;
                        return j5;
                    } else {
                        this.cleanupRunning = false;
                        return -1;
                    }
                }
            }
            this.connections.remove(realConnection);
            Util.closeQuietly(realConnection.socket());
            return 0;
        }
    }

    private int pruneAndGetAllocationCount(RealConnection realConnection, long j) {
        List<Reference<Transmitter>> list = realConnection.transmitters;
        int i = 0;
        while (i < list.size()) {
            Reference reference = (Reference) list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                TransmitterReference transmitterReference = (TransmitterReference) reference;
                StringBuilder sb = new StringBuilder();
                sb.append("A connection to ");
                sb.append(realConnection.route().address().url());
                sb.append(" was leaked. Did you forget to close a response body?");
                Platform.get().logCloseableLeak(sb.toString(), transmitterReference.callStackTrace);
                list.remove(i);
                realConnection.noNewExchanges = true;
                if (list.isEmpty()) {
                    realConnection.idleAtNanos = j - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }

    public void connectFailed(Route route, IOException iOException) {
        if (route.proxy().type() != Type.DIRECT) {
            Address address = route.address();
            address.proxySelector().connectFailed(address.url().uri(), route.proxy().address(), iOException);
        }
        this.routeDatabase.failed(route);
    }
}
