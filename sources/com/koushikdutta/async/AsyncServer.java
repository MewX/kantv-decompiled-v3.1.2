package com.koushikdutta.async;

import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.callback.ListenCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.future.TransformFuture;
import com.koushikdutta.async.util.StreamUtility;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class AsyncServer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String LOGTAG = "NIO";
    private static final long QUEUE_EMPTY = Long.MAX_VALUE;
    /* access modifiers changed from: private */
    public static final Comparator<InetAddress> ipSorter = new Comparator<InetAddress>() {
        public int compare(InetAddress inetAddress, InetAddress inetAddress2) {
            boolean z = inetAddress instanceof Inet4Address;
            if (z && (inetAddress2 instanceof Inet4Address)) {
                return 0;
            }
            if (!(inetAddress instanceof Inet6Address) || !(inetAddress2 instanceof Inet6Address)) {
                return (!z || !(inetAddress2 instanceof Inet6Address)) ? 1 : -1;
            }
            return 0;
        }
    };
    static AsyncServer mInstance = new AsyncServer();
    static final WeakHashMap<Thread, AsyncServer> mServers = new WeakHashMap<>();
    private static ExecutorService synchronousResolverWorkers = newSynchronousWorkers("AsyncServer-resolver-");
    private static ExecutorService synchronousWorkers = newSynchronousWorkers("AsyncServer-worker-");
    Thread mAffinity;
    String mName;
    PriorityQueue<Scheduled> mQueue;
    /* access modifiers changed from: private */
    public SelectorWrapper mSelector;
    int postCounter;

    private static class AsyncSelectorException extends IOException {
        public AsyncSelectorException(Exception exc) {
            super(exc);
        }
    }

    private class ConnectFuture extends SimpleFuture<AsyncNetworkSocket> {
        ConnectCallback callback;
        SocketChannel socket;

        private ConnectFuture() {
        }

        /* access modifiers changed from: protected */
        public void cancelCleanup() {
            super.cancelCleanup();
            try {
                if (this.socket != null) {
                    this.socket.close();
                }
            } catch (IOException unused) {
            }
        }
    }

    private static class NamedThreadFactory implements ThreadFactory {
        private final ThreadGroup group;
        private final String namePrefix;
        private final AtomicInteger threadNumber = new AtomicInteger(1);

        NamedThreadFactory(String str) {
            ThreadGroup threadGroup;
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                threadGroup = securityManager.getThreadGroup();
            } else {
                threadGroup = Thread.currentThread().getThreadGroup();
            }
            this.group = threadGroup;
            this.namePrefix = str;
        }

        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.group;
            StringBuilder sb = new StringBuilder();
            sb.append(this.namePrefix);
            sb.append(this.threadNumber.getAndIncrement());
            Thread thread = new Thread(threadGroup, runnable, sb.toString(), 0);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    private static class ObjectHolder<T> {
        T held;

        private ObjectHolder() {
        }
    }

    private static class RunnableWrapper implements Runnable {
        Handler handler;
        boolean hasRun;
        Runnable runnable;
        ThreadQueue threadQueue;

        private RunnableWrapper() {
        }

        public void run() {
            synchronized (this) {
                if (!this.hasRun) {
                    this.hasRun = true;
                    try {
                        this.runnable.run();
                    } finally {
                        this.threadQueue.remove(this);
                        this.handler.removeCallbacks(this);
                        this.threadQueue = null;
                        this.handler = null;
                        this.runnable = null;
                    }
                }
            }
        }
    }

    private static class Scheduled {
        public Runnable runnable;
        public long time;

        public Scheduled(Runnable runnable2, long j) {
            this.runnable = runnable2;
            this.time = j;
        }
    }

    static class Scheduler implements Comparator<Scheduled> {
        public static Scheduler INSTANCE = new Scheduler();

        private Scheduler() {
        }

        public int compare(Scheduled scheduled, Scheduled scheduled2) {
            if (scheduled.time == scheduled2.time) {
                return 0;
            }
            return scheduled.time > scheduled2.time ? 1 : -1;
        }
    }

    /* access modifiers changed from: protected */
    public void onDataReceived(int i) {
    }

    /* access modifiers changed from: protected */
    public void onDataSent(int i) {
    }

    public static void post(Handler handler, Runnable runnable) {
        RunnableWrapper runnableWrapper = new RunnableWrapper();
        ThreadQueue orCreateThreadQueue = ThreadQueue.getOrCreateThreadQueue(handler.getLooper().getThread());
        runnableWrapper.threadQueue = orCreateThreadQueue;
        runnableWrapper.handler = handler;
        runnableWrapper.runnable = runnable;
        orCreateThreadQueue.add((Runnable) runnableWrapper);
        handler.post(runnableWrapper);
        orCreateThreadQueue.queueSemaphore.release();
    }

    static {
        try {
            if (VERSION.SDK_INT <= 8) {
                System.setProperty("java.net.preferIPv4Stack", "true");
                System.setProperty("java.net.preferIPv6Addresses", "false");
            }
        } catch (Throwable unused) {
        }
    }

    public static AsyncServer getDefault() {
        return mInstance;
    }

    public boolean isRunning() {
        return this.mSelector != null;
    }

    public AsyncServer() {
        this(null);
    }

    public AsyncServer(String str) {
        this.postCounter = 0;
        this.mQueue = new PriorityQueue<>(1, Scheduler.INSTANCE);
        if (str == null) {
            str = "AsyncServer";
        }
        this.mName = str;
    }

    /* access modifiers changed from: private */
    public void handleSocket(AsyncNetworkSocket asyncNetworkSocket) throws ClosedChannelException {
        SelectionKey register = asyncNetworkSocket.getChannel().register(this.mSelector.getSelector());
        register.attach(asyncNetworkSocket);
        asyncNetworkSocket.setup(this, register);
    }

    public void removeAllCallbacks(Object obj) {
        synchronized (this) {
            this.mQueue.remove(obj);
        }
    }

    private static void wakeup(final SelectorWrapper selectorWrapper) {
        synchronousWorkers.execute(new Runnable() {
            public void run() {
                try {
                    selectorWrapper.wakeupOnce();
                } catch (Exception unused) {
                    Log.i(AsyncServer.LOGTAG, "Selector Exception? L Preview?");
                }
            }
        });
    }

    public Object postDelayed(Runnable runnable, long j) {
        Scheduled scheduled;
        synchronized (this) {
            long j2 = 0;
            if (j > 0) {
                try {
                    j2 = System.currentTimeMillis() + j;
                } catch (Throwable th) {
                    throw th;
                }
            } else if (j == 0) {
                int i = this.postCounter;
                this.postCounter = i + 1;
                j2 = (long) i;
            } else if (this.mQueue.size() > 0) {
                j2 = Math.min(0, ((Scheduled) this.mQueue.peek()).time - 1);
            }
            PriorityQueue<Scheduled> priorityQueue = this.mQueue;
            scheduled = new Scheduled(runnable, j2);
            priorityQueue.add(scheduled);
            if (this.mSelector == null) {
                run(true);
            }
            if (!isAffinityThread()) {
                wakeup(this.mSelector);
            }
        }
        return scheduled;
    }

    public Object postImmediate(Runnable runnable) {
        if (Thread.currentThread() != getAffinity()) {
            return postDelayed(runnable, -1);
        }
        runnable.run();
        return null;
    }

    public Object post(Runnable runnable) {
        return postDelayed(runnable, 0);
    }

    public Object post(final CompletedCallback completedCallback, final Exception exc) {
        return post(new Runnable() {
            public void run() {
                completedCallback.onCompleted(exc);
            }
        });
    }

    public void run(final Runnable runnable) {
        if (Thread.currentThread() == this.mAffinity) {
            post(runnable);
            lockAndRunQueue(this, this.mQueue);
            return;
        }
        final Semaphore semaphore = new Semaphore(0);
        post(new Runnable() {
            public void run() {
                runnable.run();
                semaphore.release();
            }
        });
        try {
            semaphore.acquire();
        } catch (InterruptedException e) {
            Log.e(LOGTAG, "run", e);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0043, code lost:
        if (r0 != false) goto L_0x0048;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r2.acquire();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void stop() {
        /*
            r8 = this;
            monitor-enter(r8)
            boolean r0 = r8.isAffinityThread()     // Catch:{ all -> 0x004c }
            com.koushikdutta.async.SelectorWrapper r1 = r8.mSelector     // Catch:{ all -> 0x004c }
            if (r1 != 0) goto L_0x000b
            monitor-exit(r8)     // Catch:{ all -> 0x004c }
            return
        L_0x000b:
            java.util.WeakHashMap<java.lang.Thread, com.koushikdutta.async.AsyncServer> r2 = mServers     // Catch:{ all -> 0x004c }
            monitor-enter(r2)     // Catch:{ all -> 0x004c }
            java.util.WeakHashMap<java.lang.Thread, com.koushikdutta.async.AsyncServer> r3 = mServers     // Catch:{ all -> 0x0049 }
            java.lang.Thread r4 = r8.mAffinity     // Catch:{ all -> 0x0049 }
            r3.remove(r4)     // Catch:{ all -> 0x0049 }
            monitor-exit(r2)     // Catch:{ all -> 0x0049 }
            java.util.concurrent.Semaphore r2 = new java.util.concurrent.Semaphore     // Catch:{ all -> 0x004c }
            r3 = 0
            r2.<init>(r3)     // Catch:{ all -> 0x004c }
            java.util.PriorityQueue<com.koushikdutta.async.AsyncServer$Scheduled> r3 = r8.mQueue     // Catch:{ all -> 0x004c }
            com.koushikdutta.async.AsyncServer$Scheduled r4 = new com.koushikdutta.async.AsyncServer$Scheduled     // Catch:{ all -> 0x004c }
            com.koushikdutta.async.AsyncServer$4 r5 = new com.koushikdutta.async.AsyncServer$4     // Catch:{ all -> 0x004c }
            r5.<init>(r1, r2)     // Catch:{ all -> 0x004c }
            r6 = 0
            r4.<init>(r5, r6)     // Catch:{ all -> 0x004c }
            r3.add(r4)     // Catch:{ all -> 0x004c }
            r1.wakeupOnce()     // Catch:{ all -> 0x004c }
            shutdownKeys(r1)     // Catch:{ all -> 0x004c }
            java.util.PriorityQueue r1 = new java.util.PriorityQueue     // Catch:{ all -> 0x004c }
            r3 = 1
            com.koushikdutta.async.AsyncServer$Scheduler r4 = com.koushikdutta.async.AsyncServer.Scheduler.INSTANCE     // Catch:{ all -> 0x004c }
            r1.<init>(r3, r4)     // Catch:{ all -> 0x004c }
            r8.mQueue = r1     // Catch:{ all -> 0x004c }
            r1 = 0
            r8.mSelector = r1     // Catch:{ all -> 0x004c }
            r8.mAffinity = r1     // Catch:{ all -> 0x004c }
            monitor-exit(r8)     // Catch:{ all -> 0x004c }
            if (r0 != 0) goto L_0x0048
            r2.acquire()     // Catch:{ Exception -> 0x0048 }
        L_0x0048:
            return
        L_0x0049:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0049 }
            throw r0     // Catch:{ all -> 0x004c }
        L_0x004c:
            r0 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x004c }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.AsyncServer.stop():void");
    }

    public AsyncServerSocket listen(InetAddress inetAddress, int i, ListenCallback listenCallback) {
        ObjectHolder objectHolder = new ObjectHolder();
        final InetAddress inetAddress2 = inetAddress;
        final int i2 = i;
        final ListenCallback listenCallback2 = listenCallback;
        final ObjectHolder objectHolder2 = objectHolder;
        AnonymousClass5 r0 = new Runnable() {
            public void run() {
                final ServerSocketChannelWrapper serverSocketChannelWrapper;
                final ServerSocketChannel serverSocketChannel;
                Exception e;
                InetSocketAddress inetSocketAddress;
                try {
                    serverSocketChannel = ServerSocketChannel.open();
                    try {
                        serverSocketChannelWrapper = new ServerSocketChannelWrapper(serverSocketChannel);
                        try {
                            if (inetAddress2 == null) {
                                inetSocketAddress = new InetSocketAddress(i2);
                            } else {
                                inetSocketAddress = new InetSocketAddress(inetAddress2, i2);
                            }
                            serverSocketChannel.socket().bind(inetSocketAddress);
                            final SelectionKey register = serverSocketChannelWrapper.register(AsyncServer.this.mSelector.getSelector());
                            register.attach(listenCallback2);
                            ListenCallback listenCallback = listenCallback2;
                            ObjectHolder objectHolder = objectHolder2;
                            T r5 = new AsyncServerSocket() {
                                public int getLocalPort() {
                                    return serverSocketChannel.socket().getLocalPort();
                                }

                                public void stop() {
                                    StreamUtility.closeQuietly(serverSocketChannelWrapper);
                                    try {
                                        register.cancel();
                                    } catch (Exception unused) {
                                    }
                                }
                            };
                            objectHolder.held = r5;
                            listenCallback.onListening((AsyncServerSocket) r5);
                        } catch (IOException e2) {
                            e = e2;
                            Log.e(AsyncServer.LOGTAG, "wtf", e);
                            StreamUtility.closeQuietly(serverSocketChannelWrapper, serverSocketChannel);
                            listenCallback2.onCompleted(e);
                        }
                    } catch (IOException e3) {
                        Exception exc = e3;
                        serverSocketChannelWrapper = null;
                        e = exc;
                        Log.e(AsyncServer.LOGTAG, "wtf", e);
                        StreamUtility.closeQuietly(serverSocketChannelWrapper, serverSocketChannel);
                        listenCallback2.onCompleted(e);
                    }
                } catch (IOException e4) {
                    serverSocketChannelWrapper = null;
                    e = e4;
                    serverSocketChannel = null;
                    Log.e(AsyncServer.LOGTAG, "wtf", e);
                    StreamUtility.closeQuietly(serverSocketChannelWrapper, serverSocketChannel);
                    listenCallback2.onCompleted(e);
                }
            }
        };
        run((Runnable) r0);
        return (AsyncServerSocket) objectHolder.held;
    }

    /* access modifiers changed from: private */
    public ConnectFuture connectResolvedInetSocketAddress(final InetSocketAddress inetSocketAddress, final ConnectCallback connectCallback) {
        final ConnectFuture connectFuture = new ConnectFuture();
        post(new Runnable() {
            public void run() {
                SocketChannel socketChannel;
                if (!connectFuture.isCancelled()) {
                    ConnectFuture connectFuture = connectFuture;
                    connectFuture.callback = connectCallback;
                    SelectionKey selectionKey = null;
                    try {
                        socketChannel = SocketChannel.open();
                        connectFuture.socket = socketChannel;
                        try {
                            socketChannel.configureBlocking(false);
                            selectionKey = socketChannel.register(AsyncServer.this.mSelector.getSelector(), 8);
                            selectionKey.attach(connectFuture);
                            socketChannel.connect(inetSocketAddress);
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        socketChannel = null;
                        if (selectionKey != null) {
                            selectionKey.cancel();
                        }
                        StreamUtility.closeQuietly(socketChannel);
                        connectFuture.setComplete((Exception) new RuntimeException(th));
                    }
                }
            }
        });
        return connectFuture;
    }

    public Cancellable connectSocket(final InetSocketAddress inetSocketAddress, final ConnectCallback connectCallback) {
        if (!inetSocketAddress.isUnresolved()) {
            return connectResolvedInetSocketAddress(inetSocketAddress, connectCallback);
        }
        final SimpleFuture simpleFuture = new SimpleFuture();
        Future byName = getByName(inetSocketAddress.getHostName());
        simpleFuture.setParent((Cancellable) byName);
        byName.setCallback(new FutureCallback<InetAddress>() {
            public void onCompleted(Exception exc, InetAddress inetAddress) {
                if (exc != null) {
                    connectCallback.onConnectCompleted(exc, null);
                    simpleFuture.setComplete(exc);
                    return;
                }
                simpleFuture.setComplete((Future<T>) AsyncServer.this.connectResolvedInetSocketAddress(new InetSocketAddress(inetAddress, inetSocketAddress.getPort()), connectCallback));
            }
        });
        return simpleFuture;
    }

    public Cancellable connectSocket(String str, int i, ConnectCallback connectCallback) {
        return connectSocket(InetSocketAddress.createUnresolved(str, i), connectCallback);
    }

    private static ExecutorService newSynchronousWorkers(String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 4, 10, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory(str));
        return threadPoolExecutor;
    }

    public Future<InetAddress[]> getAllByName(final String str) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        synchronousResolverWorkers.execute(new Runnable() {
            public void run() {
                try {
                    final InetAddress[] allByName = InetAddress.getAllByName(str);
                    Arrays.sort(allByName, AsyncServer.ipSorter);
                    if (allByName == null || allByName.length == 0) {
                        throw new HostnameResolutionException("no addresses for host");
                    }
                    AsyncServer.this.post(new Runnable() {
                        public void run() {
                            simpleFuture.setComplete(null, allByName);
                        }
                    });
                } catch (Exception e) {
                    AsyncServer.this.post(new Runnable() {
                        public void run() {
                            simpleFuture.setComplete(e, null);
                        }
                    });
                }
            }
        });
        return simpleFuture;
    }

    public Future<InetAddress> getByName(String str) {
        return (Future) getAllByName(str).then(new TransformFuture<InetAddress, InetAddress[]>() {
            /* access modifiers changed from: protected */
            public void transform(InetAddress[] inetAddressArr) throws Exception {
                setComplete(inetAddressArr[0]);
            }
        });
    }

    public AsyncDatagramSocket connectDatagram(String str, int i) throws IOException {
        final DatagramChannel open = DatagramChannel.open();
        AsyncDatagramSocket asyncDatagramSocket = new AsyncDatagramSocket();
        asyncDatagramSocket.attach(open);
        final String str2 = str;
        final int i2 = i;
        final AsyncDatagramSocket asyncDatagramSocket2 = asyncDatagramSocket;
        AnonymousClass11 r0 = new Runnable() {
            public void run() {
                try {
                    InetSocketAddress inetSocketAddress = new InetSocketAddress(str2, i2);
                    AsyncServer.this.handleSocket(asyncDatagramSocket2);
                    open.connect(inetSocketAddress);
                } catch (IOException e) {
                    Log.e(AsyncServer.LOGTAG, "Datagram error", e);
                    StreamUtility.closeQuietly(open);
                }
            }
        };
        run((Runnable) r0);
        return asyncDatagramSocket;
    }

    public AsyncDatagramSocket openDatagram() throws IOException {
        return openDatagram(null, false);
    }

    public AsyncDatagramSocket openDatagram(SocketAddress socketAddress, boolean z) throws IOException {
        final DatagramChannel open = DatagramChannel.open();
        AsyncDatagramSocket asyncDatagramSocket = new AsyncDatagramSocket();
        asyncDatagramSocket.attach(open);
        final boolean z2 = z;
        final SocketAddress socketAddress2 = socketAddress;
        final AsyncDatagramSocket asyncDatagramSocket2 = asyncDatagramSocket;
        AnonymousClass12 r0 = new Runnable() {
            public void run() {
                try {
                    if (z2) {
                        open.socket().setReuseAddress(z2);
                    }
                    open.socket().bind(socketAddress2);
                    AsyncServer.this.handleSocket(asyncDatagramSocket2);
                } catch (IOException e) {
                    Log.e(AsyncServer.LOGTAG, "Datagram error", e);
                    StreamUtility.closeQuietly(open);
                }
            }
        };
        run((Runnable) r0);
        return asyncDatagramSocket;
    }

    public AsyncDatagramSocket connectDatagram(final SocketAddress socketAddress) throws IOException {
        final DatagramChannel open = DatagramChannel.open();
        final AsyncDatagramSocket asyncDatagramSocket = new AsyncDatagramSocket();
        asyncDatagramSocket.attach(open);
        run((Runnable) new Runnable() {
            public void run() {
                try {
                    AsyncServer.this.handleSocket(asyncDatagramSocket);
                    open.connect(socketAddress);
                } catch (IOException unused) {
                    StreamUtility.closeQuietly(open);
                }
            }
        });
        return asyncDatagramSocket;
    }

    private boolean addMe() {
        synchronized (mServers) {
            if (((AsyncServer) mServers.get(this.mAffinity)) != null) {
                return false;
            }
            mServers.put(this.mAffinity, this);
            return true;
        }
    }

    public static AsyncServer getCurrentThreadServer() {
        return (AsyncServer) mServers.get(Thread.currentThread());
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:38|39|40) */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0052, code lost:
        if (r5 == false) goto L_0x0068;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        runLoop(r4, r0, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0058, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0059, code lost:
        android.util.Log.i(LOGTAG, "Selector closed", r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        r0.getSelector().close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0068, code lost:
        run(r4, r0, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x006b, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x006d, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:38:0x006c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void run(boolean r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            com.koushikdutta.async.SelectorWrapper r0 = r4.mSelector     // Catch:{ all -> 0x006e }
            if (r0 == 0) goto L_0x0012
            java.lang.String r5 = "NIO"
            java.lang.String r0 = "Reentrant call"
            android.util.Log.i(r5, r0)     // Catch:{ all -> 0x006e }
            r5 = 1
            com.koushikdutta.async.SelectorWrapper r0 = r4.mSelector     // Catch:{ all -> 0x006e }
            java.util.PriorityQueue<com.koushikdutta.async.AsyncServer$Scheduled> r1 = r4.mQueue     // Catch:{ all -> 0x006e }
            goto L_0x0051
        L_0x0012:
            com.koushikdutta.async.SelectorWrapper r0 = new com.koushikdutta.async.SelectorWrapper     // Catch:{ IOException -> 0x006c }
            java.nio.channels.spi.SelectorProvider r1 = java.nio.channels.spi.SelectorProvider.provider()     // Catch:{ IOException -> 0x006c }
            java.nio.channels.spi.AbstractSelector r1 = r1.openSelector()     // Catch:{ IOException -> 0x006c }
            r0.<init>(r1)     // Catch:{ IOException -> 0x006c }
            r4.mSelector = r0     // Catch:{ IOException -> 0x006c }
            java.util.PriorityQueue<com.koushikdutta.async.AsyncServer$Scheduled> r1 = r4.mQueue     // Catch:{ IOException -> 0x006c }
            if (r5 == 0) goto L_0x002f
            com.koushikdutta.async.AsyncServer$14 r2 = new com.koushikdutta.async.AsyncServer$14     // Catch:{ all -> 0x006e }
            java.lang.String r3 = r4.mName     // Catch:{ all -> 0x006e }
            r2.<init>(r3, r0, r1)     // Catch:{ all -> 0x006e }
            r4.mAffinity = r2     // Catch:{ all -> 0x006e }
            goto L_0x0035
        L_0x002f:
            java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x006e }
            r4.mAffinity = r2     // Catch:{ all -> 0x006e }
        L_0x0035:
            boolean r2 = r4.addMe()     // Catch:{ all -> 0x006e }
            if (r2 != 0) goto L_0x0047
            com.koushikdutta.async.SelectorWrapper r5 = r4.mSelector     // Catch:{ Exception -> 0x0040 }
            r5.close()     // Catch:{ Exception -> 0x0040 }
        L_0x0040:
            r5 = 0
            r4.mSelector = r5     // Catch:{ all -> 0x006e }
            r4.mAffinity = r5     // Catch:{ all -> 0x006e }
            monitor-exit(r4)     // Catch:{ all -> 0x006e }
            return
        L_0x0047:
            if (r5 == 0) goto L_0x0050
            java.lang.Thread r5 = r4.mAffinity     // Catch:{ all -> 0x006e }
            r5.start()     // Catch:{ all -> 0x006e }
            monitor-exit(r4)     // Catch:{ all -> 0x006e }
            return
        L_0x0050:
            r5 = 0
        L_0x0051:
            monitor-exit(r4)     // Catch:{ all -> 0x006e }
            if (r5 == 0) goto L_0x0068
            runLoop(r4, r0, r1)     // Catch:{ AsyncSelectorException -> 0x0058 }
            goto L_0x0067
        L_0x0058:
            r5 = move-exception
            java.lang.String r1 = "NIO"
            java.lang.String r2 = "Selector closed"
            android.util.Log.i(r1, r2, r5)
            java.nio.channels.Selector r5 = r0.getSelector()     // Catch:{ Exception -> 0x0067 }
            r5.close()     // Catch:{ Exception -> 0x0067 }
        L_0x0067:
            return
        L_0x0068:
            run(r4, r0, r1)
            return
        L_0x006c:
            monitor-exit(r4)     // Catch:{ all -> 0x006e }
            return
        L_0x006e:
            r5 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x006e }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.AsyncServer.run(boolean):void");
    }

    /* access modifiers changed from: private */
    public static void run(AsyncServer asyncServer, SelectorWrapper selectorWrapper, PriorityQueue<Scheduled> priorityQueue) {
        while (true) {
            try {
                runLoop(asyncServer, selectorWrapper, priorityQueue);
            } catch (AsyncSelectorException e) {
                Log.i(LOGTAG, "Selector exception, shutting down", e);
                try {
                    selectorWrapper.getSelector().close();
                } catch (Exception unused) {
                }
            }
            synchronized (asyncServer) {
                if (!selectorWrapper.isOpen() || (selectorWrapper.keys().size() <= 0 && priorityQueue.size() <= 0)) {
                    shutdownEverything(selectorWrapper);
                }
            }
        }
        shutdownEverything(selectorWrapper);
        if (asyncServer.mSelector == selectorWrapper) {
            asyncServer.mQueue = new PriorityQueue<>(1, Scheduler.INSTANCE);
            asyncServer.mSelector = null;
            asyncServer.mAffinity = null;
        }
        synchronized (mServers) {
            mServers.remove(Thread.currentThread());
        }
    }

    private static void shutdownKeys(SelectorWrapper selectorWrapper) {
        try {
            for (SelectionKey selectionKey : selectorWrapper.keys()) {
                StreamUtility.closeQuietly(selectionKey.channel());
                try {
                    selectionKey.cancel();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* access modifiers changed from: private */
    public static void shutdownEverything(SelectorWrapper selectorWrapper) {
        shutdownKeys(selectorWrapper);
        try {
            selectorWrapper.close();
        } catch (Exception unused) {
        }
    }

    private static long lockAndRunQueue(AsyncServer asyncServer, PriorityQueue<Scheduled> priorityQueue) {
        long j = Long.MAX_VALUE;
        while (true) {
            Scheduled scheduled = null;
            synchronized (asyncServer) {
                long currentTimeMillis = System.currentTimeMillis();
                if (priorityQueue.size() > 0) {
                    Scheduled scheduled2 = (Scheduled) priorityQueue.remove();
                    if (scheduled2.time <= currentTimeMillis) {
                        scheduled = scheduled2;
                    } else {
                        j = scheduled2.time - currentTimeMillis;
                        priorityQueue.add(scheduled2);
                    }
                }
            }
            if (scheduled == null) {
                asyncServer.postCounter = 0;
                return j;
            }
            scheduled.runnable.run();
        }
        while (true) {
        }
    }

    /* JADX INFO: used method not loaded: com.koushikdutta.async.future.SimpleFuture.setComplete(java.lang.Object):null, types can be incorrect */
    /* JADX INFO: used method not loaded: com.koushikdutta.async.future.SimpleFuture.setComplete(java.lang.Exception):null, types can be incorrect */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:36|37|(2:39|82)(1:81)) */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0026, code lost:
        if (r11 == false) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002a, code lost:
        if (r0 != Long.MAX_VALUE) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        r10.select();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0030, code lost:
        r10.select(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0033, code lost:
        r11 = r10.selectedKeys();
        r0 = r11.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003f, code lost:
        if (r0.hasNext() == false) goto L_0x0128;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0041, code lost:
        r1 = (java.nio.channels.SelectionKey) r0.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004c, code lost:
        if (r1.isAcceptable() == false) goto L_0x0096;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        r2 = ((java.nio.channels.ServerSocketChannel) r1.channel()).accept();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0058, code lost:
        if (r2 != null) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        r2.configureBlocking(false);
        r3 = r2.register(r10.getSelector(), 1);
        r1 = (com.koushikdutta.async.callback.ListenCallback) r1.attachment();
        r6 = new com.koushikdutta.async.AsyncNetworkSocket();
        r6.attach(r2, (java.net.InetSocketAddress) r2.socket().getRemoteSocketAddress());
        r6.setup(r9, r3);
        r3.attach(r6);
        r1.onAccepted(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0088, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        com.koushikdutta.async.util.StreamUtility.closeQuietly(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0090, code lost:
        if (r3 != null) goto L_0x0092;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0092, code lost:
        r3.cancel();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x009a, code lost:
        if (r1.isReadable() == false) goto L_0x00aa;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x009c, code lost:
        r9.onDataReceived(((com.koushikdutta.async.AsyncNetworkSocket) r1.attachment()).onReadable());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00ae, code lost:
        if (r1.isWritable() == false) goto L_0x00ba;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00b0, code lost:
        ((com.koushikdutta.async.AsyncNetworkSocket) r1.attachment()).onDataWritable();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00be, code lost:
        if (r1.isConnectable() == false) goto L_0x0116;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00c0, code lost:
        r2 = (com.koushikdutta.async.AsyncServer.ConnectFuture) r1.attachment();
        r6 = (java.nio.channels.SocketChannel) r1.channel();
        r1.interestOps(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:?, code lost:
        r6.finishConnect();
        r7 = new com.koushikdutta.async.AsyncNetworkSocket();
        r7.setup(r9, r1);
        r7.attach(r6, (java.net.InetSocketAddress) r6.socket().getRemoteSocketAddress());
        r1.attach(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00ee, code lost:
        if (r2.setComplete((java.lang.Object) r7) == false) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00f0, code lost:
        r2.callback.onConnectCompleted(null, r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00f7, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00fd, code lost:
        throw new java.lang.RuntimeException(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00fe, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00ff, code lost:
        r1.cancel();
        com.koushikdutta.async.util.StreamUtility.closeQuietly(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x010d, code lost:
        if (r2.setComplete((java.lang.Exception) r7) != false) goto L_0x010f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x010f, code lost:
        r2.callback.onConnectCompleted(r7, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0116, code lost:
        android.util.Log.i(LOGTAG, "wtf");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0124, code lost:
        throw new java.lang.RuntimeException("Unknown key state.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0128, code lost:
        r11.clear();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x012b, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:36:0x0089 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void runLoop(com.koushikdutta.async.AsyncServer r9, com.koushikdutta.async.SelectorWrapper r10, java.util.PriorityQueue<com.koushikdutta.async.AsyncServer.Scheduled> r11) throws com.koushikdutta.async.AsyncServer.AsyncSelectorException {
        /*
            long r0 = lockAndRunQueue(r9, r11)
            monitor-enter(r9)     // Catch:{ Exception -> 0x012f }
            int r11 = r10.selectNow()     // Catch:{ all -> 0x012c }
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r4 = 0
            r5 = 1
            if (r11 != 0) goto L_0x0024
            java.util.Set r11 = r10.keys()     // Catch:{ all -> 0x012c }
            int r11 = r11.size()     // Catch:{ all -> 0x012c }
            if (r11 != 0) goto L_0x0022
            int r11 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r11 != 0) goto L_0x0022
            monitor-exit(r9)     // Catch:{ all -> 0x012c }
            return
        L_0x0022:
            r11 = 1
            goto L_0x0025
        L_0x0024:
            r11 = 0
        L_0x0025:
            monitor-exit(r9)     // Catch:{ all -> 0x012c }
            if (r11 == 0) goto L_0x0033
            int r11 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r11 != 0) goto L_0x0030
            r10.select()     // Catch:{ Exception -> 0x012f }
            goto L_0x0033
        L_0x0030:
            r10.select(r0)     // Catch:{ Exception -> 0x012f }
        L_0x0033:
            java.util.Set r11 = r10.selectedKeys()
            java.util.Iterator r0 = r11.iterator()
        L_0x003b:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0128
            java.lang.Object r1 = r0.next()
            java.nio.channels.SelectionKey r1 = (java.nio.channels.SelectionKey) r1
            boolean r2 = r1.isAcceptable()     // Catch:{ CancelledKeyException -> 0x0125 }
            r3 = 0
            if (r2 == 0) goto L_0x0096
            java.nio.channels.SelectableChannel r2 = r1.channel()     // Catch:{ CancelledKeyException -> 0x0125 }
            java.nio.channels.ServerSocketChannel r2 = (java.nio.channels.ServerSocketChannel) r2     // Catch:{ CancelledKeyException -> 0x0125 }
            java.nio.channels.SocketChannel r2 = r2.accept()     // Catch:{ IOException -> 0x0088 }
            if (r2 != 0) goto L_0x005b
            goto L_0x003b
        L_0x005b:
            r2.configureBlocking(r4)     // Catch:{ IOException -> 0x0089 }
            java.nio.channels.Selector r6 = r10.getSelector()     // Catch:{ IOException -> 0x0089 }
            java.nio.channels.SelectionKey r3 = r2.register(r6, r5)     // Catch:{ IOException -> 0x0089 }
            java.lang.Object r1 = r1.attachment()     // Catch:{ IOException -> 0x0089 }
            com.koushikdutta.async.callback.ListenCallback r1 = (com.koushikdutta.async.callback.ListenCallback) r1     // Catch:{ IOException -> 0x0089 }
            com.koushikdutta.async.AsyncNetworkSocket r6 = new com.koushikdutta.async.AsyncNetworkSocket     // Catch:{ IOException -> 0x0089 }
            r6.<init>()     // Catch:{ IOException -> 0x0089 }
            java.net.Socket r7 = r2.socket()     // Catch:{ IOException -> 0x0089 }
            java.net.SocketAddress r7 = r7.getRemoteSocketAddress()     // Catch:{ IOException -> 0x0089 }
            java.net.InetSocketAddress r7 = (java.net.InetSocketAddress) r7     // Catch:{ IOException -> 0x0089 }
            r6.attach(r2, r7)     // Catch:{ IOException -> 0x0089 }
            r6.setup(r9, r3)     // Catch:{ IOException -> 0x0089 }
            r3.attach(r6)     // Catch:{ IOException -> 0x0089 }
            r1.onAccepted(r6)     // Catch:{ IOException -> 0x0089 }
            goto L_0x003b
        L_0x0088:
            r2 = r3
        L_0x0089:
            java.io.Closeable[] r1 = new java.io.Closeable[r5]     // Catch:{ CancelledKeyException -> 0x0125 }
            r1[r4] = r2     // Catch:{ CancelledKeyException -> 0x0125 }
            com.koushikdutta.async.util.StreamUtility.closeQuietly(r1)     // Catch:{ CancelledKeyException -> 0x0125 }
            if (r3 == 0) goto L_0x003b
            r3.cancel()     // Catch:{ CancelledKeyException -> 0x0125 }
            goto L_0x003b
        L_0x0096:
            boolean r2 = r1.isReadable()     // Catch:{ CancelledKeyException -> 0x0125 }
            if (r2 == 0) goto L_0x00aa
            java.lang.Object r1 = r1.attachment()     // Catch:{ CancelledKeyException -> 0x0125 }
            com.koushikdutta.async.AsyncNetworkSocket r1 = (com.koushikdutta.async.AsyncNetworkSocket) r1     // Catch:{ CancelledKeyException -> 0x0125 }
            int r1 = r1.onReadable()     // Catch:{ CancelledKeyException -> 0x0125 }
            r9.onDataReceived(r1)     // Catch:{ CancelledKeyException -> 0x0125 }
            goto L_0x003b
        L_0x00aa:
            boolean r2 = r1.isWritable()     // Catch:{ CancelledKeyException -> 0x0125 }
            if (r2 == 0) goto L_0x00ba
            java.lang.Object r1 = r1.attachment()     // Catch:{ CancelledKeyException -> 0x0125 }
            com.koushikdutta.async.AsyncNetworkSocket r1 = (com.koushikdutta.async.AsyncNetworkSocket) r1     // Catch:{ CancelledKeyException -> 0x0125 }
            r1.onDataWritable()     // Catch:{ CancelledKeyException -> 0x0125 }
            goto L_0x003b
        L_0x00ba:
            boolean r2 = r1.isConnectable()     // Catch:{ CancelledKeyException -> 0x0125 }
            if (r2 == 0) goto L_0x0116
            java.lang.Object r2 = r1.attachment()     // Catch:{ CancelledKeyException -> 0x0125 }
            com.koushikdutta.async.AsyncServer$ConnectFuture r2 = (com.koushikdutta.async.AsyncServer.ConnectFuture) r2     // Catch:{ CancelledKeyException -> 0x0125 }
            java.nio.channels.SelectableChannel r6 = r1.channel()     // Catch:{ CancelledKeyException -> 0x0125 }
            java.nio.channels.SocketChannel r6 = (java.nio.channels.SocketChannel) r6     // Catch:{ CancelledKeyException -> 0x0125 }
            r1.interestOps(r5)     // Catch:{ CancelledKeyException -> 0x0125 }
            r6.finishConnect()     // Catch:{ IOException -> 0x00fe }
            com.koushikdutta.async.AsyncNetworkSocket r7 = new com.koushikdutta.async.AsyncNetworkSocket     // Catch:{ IOException -> 0x00fe }
            r7.<init>()     // Catch:{ IOException -> 0x00fe }
            r7.setup(r9, r1)     // Catch:{ IOException -> 0x00fe }
            java.net.Socket r8 = r6.socket()     // Catch:{ IOException -> 0x00fe }
            java.net.SocketAddress r8 = r8.getRemoteSocketAddress()     // Catch:{ IOException -> 0x00fe }
            java.net.InetSocketAddress r8 = (java.net.InetSocketAddress) r8     // Catch:{ IOException -> 0x00fe }
            r7.attach(r6, r8)     // Catch:{ IOException -> 0x00fe }
            r1.attach(r7)     // Catch:{ IOException -> 0x00fe }
            boolean r1 = r2.setComplete(r7)     // Catch:{ Exception -> 0x00f7 }
            if (r1 == 0) goto L_0x003b
            com.koushikdutta.async.callback.ConnectCallback r1 = r2.callback     // Catch:{ Exception -> 0x00f7 }
            r1.onConnectCompleted(r3, r7)     // Catch:{ Exception -> 0x00f7 }
            goto L_0x003b
        L_0x00f7:
            r1 = move-exception
            java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch:{ CancelledKeyException -> 0x0125 }
            r2.<init>(r1)     // Catch:{ CancelledKeyException -> 0x0125 }
            throw r2     // Catch:{ CancelledKeyException -> 0x0125 }
        L_0x00fe:
            r7 = move-exception
            r1.cancel()     // Catch:{ CancelledKeyException -> 0x0125 }
            java.io.Closeable[] r1 = new java.io.Closeable[r5]     // Catch:{ CancelledKeyException -> 0x0125 }
            r1[r4] = r6     // Catch:{ CancelledKeyException -> 0x0125 }
            com.koushikdutta.async.util.StreamUtility.closeQuietly(r1)     // Catch:{ CancelledKeyException -> 0x0125 }
            boolean r1 = r2.setComplete(r7)     // Catch:{ CancelledKeyException -> 0x0125 }
            if (r1 == 0) goto L_0x003b
            com.koushikdutta.async.callback.ConnectCallback r1 = r2.callback     // Catch:{ CancelledKeyException -> 0x0125 }
            r1.onConnectCompleted(r7, r3)     // Catch:{ CancelledKeyException -> 0x0125 }
            goto L_0x003b
        L_0x0116:
            java.lang.String r1 = "NIO"
            java.lang.String r2 = "wtf"
            android.util.Log.i(r1, r2)     // Catch:{ CancelledKeyException -> 0x0125 }
            java.lang.RuntimeException r1 = new java.lang.RuntimeException     // Catch:{ CancelledKeyException -> 0x0125 }
            java.lang.String r2 = "Unknown key state."
            r1.<init>(r2)     // Catch:{ CancelledKeyException -> 0x0125 }
            throw r1     // Catch:{ CancelledKeyException -> 0x0125 }
        L_0x0125:
            goto L_0x003b
        L_0x0128:
            r11.clear()
            return
        L_0x012c:
            r10 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x012c }
            throw r10     // Catch:{ Exception -> 0x012f }
        L_0x012f:
            r9 = move-exception
            com.koushikdutta.async.AsyncServer$AsyncSelectorException r10 = new com.koushikdutta.async.AsyncServer$AsyncSelectorException
            r10.<init>(r9)
            goto L_0x0137
        L_0x0136:
            throw r10
        L_0x0137:
            goto L_0x0136
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.AsyncServer.runLoop(com.koushikdutta.async.AsyncServer, com.koushikdutta.async.SelectorWrapper, java.util.PriorityQueue):void");
    }

    public void dump() {
        post(new Runnable() {
            public void run() {
                SelectorWrapper access$300 = AsyncServer.this.mSelector;
                String str = AsyncServer.LOGTAG;
                if (access$300 == null) {
                    Log.i(str, "Server dump not possible. No selector?");
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Key Count: ");
                sb.append(AsyncServer.this.mSelector.keys().size());
                Log.i(str, sb.toString());
                for (SelectionKey selectionKey : AsyncServer.this.mSelector.keys()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Key: ");
                    sb2.append(selectionKey);
                    Log.i(str, sb2.toString());
                }
            }
        });
    }

    public Thread getAffinity() {
        return this.mAffinity;
    }

    public boolean isAffinityThread() {
        return this.mAffinity == Thread.currentThread();
    }

    public boolean isAffinityThreadOrStopped() {
        Thread thread = this.mAffinity;
        return thread == null || thread == Thread.currentThread();
    }
}
