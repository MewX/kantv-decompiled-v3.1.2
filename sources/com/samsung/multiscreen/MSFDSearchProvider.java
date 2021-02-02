package com.samsung.multiscreen;

import android.content.Context;
import android.net.Uri;
import android.net.wifi.WifiManager.MulticastLock;
import android.os.Build.VERSION;
import android.util.Log;
import com.samsung.multiscreen.util.JSONUtil;
import com.samsung.multiscreen.util.NetUtil;
import com.samsung.multiscreen.util.RunUtil;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class MSFDSearchProvider extends SearchProvider {
    private static final long DISCOVER_INTERVAL = 1000;
    private static final long DISCOVER_START_DELAY = 100;
    private static final String KEY_DATA = "data";
    private static final String KEY_SID = "sid";
    private static final String KEY_TTL = "ttl";
    private static final String KEY_TYPE_STATE = "type";
    private static final String KEY_URI = "uri";
    private static final String KEY_VERSION_1 = "v1";
    private static final String KEY_VERSION_2 = "v2";
    private static final int MAX_DISCOVER_NUM = 3;
    private static final long MAX_GET_SERVICE_INFO_WAIT_TIME = 15000;
    private static final String MULTICAST_GROUP = "224.0.0.7";
    private static final int MULTICAST_PORT = 8001;
    private static final int SERVICE_CHECK_TIMEOUT = 2000;
    private static final int SOCKET_TIMEOUT = 10000;
    private static final String STATE_ALIVE = "alive";
    private static final String STATE_DOWN = "down";
    private static final String STATE_UP = "up";
    private static final String TAG = "MSFDSearchProvider";
    private static final String TYPE_DISCOVER = "discover";
    private static final String discoverMessage;
    private static volatile InetAddress multicastInetAddress;
    /* access modifiers changed from: private */
    public final Map<String, Long> aliveMap = new ConcurrentHashMap();
    private final Context context;
    /* access modifiers changed from: private */
    public DatagramPacket discoverPacket = null;
    /* access modifiers changed from: private */
    public ScheduledExecutorService executor;
    private volatile MulticastLock multicastLock;
    /* access modifiers changed from: private */
    public boolean receive = false;
    private final Runnable receiveHandler = new Runnable() {
        /* JADX WARNING: Code restructure failed: missing block: B:46:0x0104, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:0x0105, code lost:
            android.util.Log.e(r0, android.util.Log.getStackTraceString(r1));
         */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x0104 A[Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9, all -> 0x0120 }, ExcHandler: IOException (r1v8 'e' java.io.IOException A[CUSTOM_DECLARE, Catch:{  }]), Splitter:B:6:0x0014] */
        /* JADX WARNING: Removed duplicated region for block: B:49:? A[ExcHandler: SocketException (unused java.net.SocketException), SYNTHETIC, Splitter:B:6:0x0014] */
        /* JADX WARNING: Removed duplicated region for block: B:4:? A[ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), SYNTHETIC, Splitter:B:6:0x0014] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r8 = this;
                java.lang.String r0 = "MSFDSearchProvider"
                r1 = 1024(0x400, float:1.435E-42)
                byte[] r1 = new byte[r1]     // Catch:{ all -> 0x0120 }
                java.net.DatagramPacket r2 = new java.net.DatagramPacket     // Catch:{ all -> 0x0120 }
                int r3 = r1.length     // Catch:{ all -> 0x0120 }
                r2.<init>(r1, r3)     // Catch:{ all -> 0x0120 }
            L_0x000c:
                com.samsung.multiscreen.MSFDSearchProvider r1 = com.samsung.multiscreen.MSFDSearchProvider.this     // Catch:{ all -> 0x0120 }
                boolean r1 = r1.receive     // Catch:{ all -> 0x0120 }
                if (r1 == 0) goto L_0x010e
                r8.reapServices()     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                com.samsung.multiscreen.MSFDSearchProvider r1 = com.samsung.multiscreen.MSFDSearchProvider.this     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.net.MulticastSocket r1 = r1.socket     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                r1.receive(r2)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                int r1 = r2.getLength()     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r1 > 0) goto L_0x0027
                goto L_0x000c
            L_0x0027:
                java.lang.String r1 = new java.lang.String     // Catch:{ Exception -> 0x00df, SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104 }
                byte[] r3 = r2.getData()     // Catch:{ Exception -> 0x00df, SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104 }
                r4 = 0
                int r5 = r2.getLength()     // Catch:{ Exception -> 0x00df, SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104 }
                java.lang.String r6 = "UTF-8"
                r1.<init>(r3, r4, r5, r6)     // Catch:{ Exception -> 0x00df, SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104 }
                java.util.Map r1 = com.samsung.multiscreen.util.JSONUtil.parse(r1)     // Catch:{ Exception -> 0x00df, SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104 }
                if (r1 == 0) goto L_0x000c
                boolean r3 = r1.isEmpty()     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r3 != 0) goto L_0x000c
                java.lang.String r3 = "discover"
                java.lang.String r4 = "type"
                java.lang.Object r4 = r1.get(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.lang.String r4 = (java.lang.String) r4     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                boolean r3 = r3.equals(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r3 == 0) goto L_0x0054
                goto L_0x000c
            L_0x0054:
                java.lang.String r3 = "sid"
                java.lang.Object r3 = r1.get(r3)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.lang.String r3 = (java.lang.String) r3     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r3 == 0) goto L_0x000c
                com.samsung.multiscreen.MSFDSearchProvider r5 = com.samsung.multiscreen.MSFDSearchProvider.this     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                com.samsung.multiscreen.Service r5 = r5.getServiceById(r3)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.lang.String r6 = "alive"
                boolean r6 = r6.equals(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r6 != 0) goto L_0x008f
                java.lang.String r6 = "up"
                boolean r6 = r6.equals(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r6 == 0) goto L_0x0075
                goto L_0x008f
            L_0x0075:
                if (r5 == 0) goto L_0x000c
                java.lang.String r1 = "down"
                boolean r1 = r1.equals(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r1 == 0) goto L_0x000c
                com.samsung.multiscreen.MSFDSearchProvider r1 = com.samsung.multiscreen.MSFDSearchProvider.this     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.util.Map r1 = r1.aliveMap     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                r1.remove(r3)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                com.samsung.multiscreen.MSFDSearchProvider r1 = com.samsung.multiscreen.MSFDSearchProvider.this     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                r1.removeServiceAndNotify(r5)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                goto L_0x000c
            L_0x008f:
                java.lang.String r4 = "ttl"
                java.lang.Object r4 = r1.get(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.lang.Long r4 = (java.lang.Long) r4     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                long r6 = r4.longValue()     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r5 != 0) goto L_0x00da
                com.samsung.multiscreen.MSFDSearchProvider r4 = com.samsung.multiscreen.MSFDSearchProvider.this     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.util.Map r4 = r4.aliveMap     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                boolean r4 = r4.containsKey(r3)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r4 != 0) goto L_0x00da
                r8.updateAlive(r3, r6)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.lang.String r4 = "data"
                java.lang.Object r1 = r1.get(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.util.Map r1 = (java.util.Map) r1     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r1 == 0) goto L_0x000c
                java.lang.String r4 = "v2"
                java.lang.Object r1 = r1.get(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.util.Map r1 = (java.util.Map) r1     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r1 == 0) goto L_0x000c
                java.lang.String r4 = "uri"
                java.lang.Object r1 = r1.get(r4)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                java.lang.String r1 = (java.lang.String) r1     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                if (r1 == 0) goto L_0x000c
                android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                r4 = 2000(0x7d0, float:2.803E-42)
                com.samsung.multiscreen.MSFDSearchProvider$1$1 r5 = new com.samsung.multiscreen.MSFDSearchProvider$1$1     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                r5.<init>(r3, r6)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                com.samsung.multiscreen.Service.getByURI(r1, r4, r5)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                goto L_0x000c
            L_0x00da:
                r8.updateAlive(r3, r6)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                goto L_0x000c
            L_0x00df:
                r1 = move-exception
                java.lang.String r1 = android.util.Log.getStackTraceString(r1)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                android.util.Log.e(r0, r1)     // Catch:{ SocketTimeoutException -> 0x000c, SocketException -> 0x010e, IOException -> 0x0104, Exception -> 0x00e9 }
                goto L_0x000c
            L_0x00e9:
                r1 = move-exception
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0120 }
                r3.<init>()     // Catch:{ all -> 0x0120 }
                java.lang.String r4 = "receiveHandler exception: "
                r3.append(r4)     // Catch:{ all -> 0x0120 }
                java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x0120 }
                r3.append(r1)     // Catch:{ all -> 0x0120 }
                java.lang.String r1 = r3.toString()     // Catch:{ all -> 0x0120 }
                android.util.Log.e(r0, r1)     // Catch:{ all -> 0x0120 }
                goto L_0x000c
            L_0x0104:
                r1 = move-exception
                java.lang.String r1 = android.util.Log.getStackTraceString(r1)     // Catch:{ all -> 0x0120 }
                android.util.Log.e(r0, r1)     // Catch:{ all -> 0x0120 }
                goto L_0x000c
            L_0x010e:
                com.samsung.multiscreen.MSFDSearchProvider r0 = com.samsung.multiscreen.MSFDSearchProvider.this
                java.net.MulticastSocket r0 = r0.socket
                if (r0 == 0) goto L_0x011f
                com.samsung.multiscreen.MSFDSearchProvider r0 = com.samsung.multiscreen.MSFDSearchProvider.this
                java.net.MulticastSocket r0 = r0.socket
                r0.close()
            L_0x011f:
                return
            L_0x0120:
                r0 = move-exception
                com.samsung.multiscreen.MSFDSearchProvider r1 = com.samsung.multiscreen.MSFDSearchProvider.this
                java.net.MulticastSocket r1 = r1.socket
                if (r1 == 0) goto L_0x0132
                com.samsung.multiscreen.MSFDSearchProvider r1 = com.samsung.multiscreen.MSFDSearchProvider.this
                java.net.MulticastSocket r1 = r1.socket
                r1.close()
            L_0x0132:
                goto L_0x0134
            L_0x0133:
                throw r0
            L_0x0134:
                goto L_0x0133
            */
            throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.MSFDSearchProvider.AnonymousClass1.run():void");
        }

        private synchronized void reapServices() {
            long time = new Date().getTime();
            for (String str : MSFDSearchProvider.this.aliveMap.keySet()) {
                if (((Long) MSFDSearchProvider.this.aliveMap.get(str)).longValue() < time) {
                    Service serviceById = MSFDSearchProvider.this.getServiceById(str);
                    MSFDSearchProvider.this.aliveMap.remove(str);
                    if (serviceById != null) {
                        MSFDSearchProvider.this.removeServiceAndNotify(serviceById);
                    }
                }
            }
        }

        /* access modifiers changed from: private */
        public synchronized void updateAlive(String str, long j) {
            MSFDSearchProvider.this.aliveMap.put(str, Long.valueOf(new Date().getTime() + j));
        }
    };
    private Thread receiverThread;
    /* access modifiers changed from: private */
    public volatile MulticastSocket socket;

    private interface FutureRunnable extends Runnable {
        void setFuture(ScheduledFuture<?> scheduledFuture);
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("type", TYPE_DISCOVER);
        discoverMessage = JSONUtil.toJSONString(hashMap);
    }

    private MSFDSearchProvider(Context context2) {
        this.context = context2;
    }

    private MSFDSearchProvider(Context context2, SearchListener searchListener) {
        super(searchListener);
        this.context = context2;
    }

    private void setupDiscovery() throws IOException {
        String str = MULTICAST_GROUP;
        multicastInetAddress = InetAddress.getByName(str);
        this.discoverPacket = new DatagramPacket(discoverMessage.getBytes(), discoverMessage.length(), new InetSocketAddress(str, 8001));
    }

    public void start() {
        if (this.searching) {
            stop();
        }
        clearServices();
        this.aliveMap.clear();
        try {
            if (this.discoverPacket == null) {
                setupDiscovery();
            }
            acquireMulticastLock();
            this.socket = new MulticastSocket(8001);
            this.socket.setBroadcast(true);
            this.socket.setSoTimeout(10000);
            this.socket.joinGroup(new InetSocketAddress(multicastInetAddress, 8001), NetworkInterface.getByName("eth0"));
            this.receive = true;
            this.receiverThread = new Thread(this.receiveHandler);
            this.receiverThread.start();
            this.executor = Executors.newSingleThreadScheduledExecutor();
            this.executor.scheduleAtFixedRate(new Runnable() {
                private int numDiscover = 0;

                public void run() {
                    try {
                        if (VERSION.SDK_INT == 19) {
                            MSFDSearchProvider.this.socket.send(MSFDSearchProvider.this.discoverPacket);
                            return;
                        }
                        int i = this.numDiscover;
                        this.numDiscover = i + 1;
                        if (i < 3) {
                            MSFDSearchProvider.this.socket.send(MSFDSearchProvider.this.discoverPacket);
                        } else {
                            MSFDSearchProvider.this.executor.shutdown();
                        }
                    } catch (IOException e) {
                        Log.e(MSFDSearchProvider.TAG, Log.getStackTraceString(e));
                    }
                }
            }, DISCOVER_START_DELAY, 1000, TimeUnit.MILLISECONDS);
            this.searching = true;
        } catch (IOException e) {
            Log.e(TAG, Log.getStackTraceString(e));
        }
        if (!this.searching) {
            if (this.socket != null) {
                this.socket.close();
            }
            NetUtil.releaseMulticastLock(this.multicastLock);
        }
    }

    public boolean stop() {
        if (!this.searching) {
            return false;
        }
        this.searching = false;
        NetUtil.releaseMulticastLock(this.multicastLock);
        ScheduledExecutorService scheduledExecutorService = this.executor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.executor = null;
        }
        this.receive = false;
        MulticastSocket multicastSocket = this.socket;
        String str = TAG;
        if (!(multicastSocket == null || multicastInetAddress == null)) {
            try {
                this.socket.leaveGroup(multicastInetAddress);
            } catch (IOException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("stop exception: ");
                sb.append(e.getMessage());
                Log.e(str, sb.toString());
            }
        }
        Thread thread = this.receiverThread;
        if (thread != null) {
            try {
                thread.join(1000);
            } catch (InterruptedException e2) {
                Log.e(str, Log.getStackTraceString(e2));
            }
            this.receiverThread = null;
        }
        return true;
    }

    public static SearchProvider create(Context context2) {
        return new MSFDSearchProvider(context2);
    }

    static SearchProvider create(Context context2, SearchListener searchListener) {
        return new MSFDSearchProvider(context2, searchListener);
    }

    static ProviderThread getById(Context context2, String str, Result<Service> result) {
        ProviderThread providerThread;
        ScheduledExecutorService newSingleThreadScheduledExecutor;
        final Result<Service> result2 = result;
        String str2 = MULTICAST_GROUP;
        String str3 = TAG;
        MulticastSocket multicastSocket = null;
        try {
            final MulticastLock acquireMulticastLock = NetUtil.acquireMulticastLock(context2, str3);
            if (acquireMulticastLock == null) {
                if (result2 != null) {
                    result2.onError(Error.create((Exception) new NullPointerException("Could not fetch MulticastLock")));
                }
                return null;
            }
            final InetAddress byName = InetAddress.getByName(str2);
            final DatagramPacket datagramPacket = new DatagramPacket(discoverMessage.getBytes(), discoverMessage.length(), new InetSocketAddress(str2, 8001));
            final MulticastSocket multicastSocket2 = new MulticastSocket(8001);
            try {
                multicastSocket2.joinGroup(byName);
                newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
                final MulticastSocket multicastSocket3 = multicastSocket2;
                final String str4 = str;
                final Result<Service> result3 = result;
                final ScheduledExecutorService scheduledExecutorService = newSingleThreadScheduledExecutor;
                AnonymousClass3 r1 = new Runnable() {
                    /* access modifiers changed from: private */
                    public boolean processing = false;
                    /* access modifiers changed from: private */
                    public boolean searching = true;

                    public void run() {
                        String str;
                        try {
                            byte[] bArr = new byte[1024];
                            DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length);
                            while (true) {
                                boolean z = this.searching;
                                str = MSFDSearchProvider.TAG;
                                if (z) {
                                    if (!Thread.currentThread().isInterrupted()) {
                                        multicastSocket3.receive(datagramPacket);
                                        if (Thread.currentThread().isInterrupted()) {
                                            break;
                                        } else if (!this.processing && datagramPacket.getLength() > 0) {
                                            try {
                                                Map parse = JSONUtil.parse(new String(datagramPacket.getData(), 0, datagramPacket.getLength(), "UTF-8"));
                                                if (parse != null) {
                                                    if (!parse.isEmpty()) {
                                                        String str2 = (String) parse.get("type");
                                                        if (!MSFDSearchProvider.TYPE_DISCOVER.equals(str2)) {
                                                            String str3 = (String) parse.get(MSFDSearchProvider.KEY_SID);
                                                            if (str3 != null && str4.equals(str3)) {
                                                                this.processing = true;
                                                                if (MSFDSearchProvider.STATE_ALIVE.equals(str2) || MSFDSearchProvider.STATE_UP.equals(str2)) {
                                                                    Map map = (Map) parse.get("data");
                                                                    if (map != null) {
                                                                        Map map2 = (Map) map.get(MSFDSearchProvider.KEY_VERSION_2);
                                                                        if (map2 != null) {
                                                                            String str4 = (String) map2.get(MSFDSearchProvider.KEY_URI);
                                                                            if (str4 != null) {
                                                                                Service.getByURI(Uri.parse(str4), 2000, new Result<Service>() {
                                                                                    public void onSuccess(final Service service) {
                                                                                        AnonymousClass3.this.searching = false;
                                                                                        RunUtil.runOnUI(new Runnable() {
                                                                                            public void run() {
                                                                                                result3.onSuccess(service);
                                                                                            }
                                                                                        });
                                                                                    }

                                                                                    public void onError(Error error) {
                                                                                        AnonymousClass3.this.processing = false;
                                                                                    }
                                                                                });
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                this.processing = false;
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (Exception e) {
                                                Log.e(str, Log.getStackTraceString(e));
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (IOException e2) {
                            Log.e(str, Log.getStackTraceString(e2));
                        } catch (Throwable th) {
                            if (!multicastSocket3.isClosed()) {
                                multicastSocket3.close();
                            }
                            throw th;
                        }
                        try {
                            multicastSocket3.leaveGroup(byName);
                        } catch (IOException e3) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("ProviderThread exception: ");
                            sb.append(e3.getMessage());
                            Log.e(str, sb.toString());
                        }
                        NetUtil.releaseMulticastLock(acquireMulticastLock);
                        scheduledExecutorService.shutdown();
                        if (!multicastSocket3.isClosed()) {
                            multicastSocket3.close();
                        }
                    }
                };
                providerThread = new ProviderThread(r1) {
                    /* access modifiers changed from: 0000 */
                    public void terminate() {
                        interrupt();
                    }
                };
            } catch (Exception e) {
                e = e;
                providerThread = null;
                multicastSocket = multicastSocket2;
                Log.e(str3, Log.getStackTraceString(e));
                multicastSocket.close();
                RunUtil.runOnUI(new Runnable() {
                    public void run() {
                        result2.onError(Error.create(e));
                    }
                });
                return providerThread;
            }
            try {
                providerThread.start();
                newSingleThreadScheduledExecutor.schedule(new Runnable() {
                    public void run() {
                        if (!multicastSocket2.isClosed()) {
                            multicastSocket2.close();
                        }
                        RunUtil.runOnUI(new Runnable() {
                            public void run() {
                                result2.onError(Error.create("Not Found"));
                            }
                        });
                    }
                }, MAX_GET_SERVICE_INFO_WAIT_TIME, TimeUnit.MILLISECONDS);
                AnonymousClass6 r12 = new FutureRunnable() {
                    private ScheduledFuture<?> future;
                    private int numDiscover = 0;

                    public void run() {
                        try {
                            int i = this.numDiscover;
                            this.numDiscover = i + 1;
                            if (i < 3) {
                                multicastSocket2.send(datagramPacket);
                            } else {
                                this.future.cancel(false);
                            }
                        } catch (IOException e) {
                            Log.e(MSFDSearchProvider.TAG, Log.getStackTraceString(e));
                        }
                    }

                    public void setFuture(ScheduledFuture<?> scheduledFuture) {
                        this.future = scheduledFuture;
                    }
                };
                ProviderThread providerThread2 = providerThread;
                try {
                    r12.setFuture(newSingleThreadScheduledExecutor.scheduleAtFixedRate(r12, DISCOVER_START_DELAY, 1000, TimeUnit.MILLISECONDS));
                    providerThread = providerThread2;
                } catch (Exception e2) {
                    e = e2;
                    providerThread = providerThread2;
                    multicastSocket = multicastSocket2;
                    Log.e(str3, Log.getStackTraceString(e));
                    multicastSocket.close();
                    RunUtil.runOnUI(new Runnable() {
                        public void run() {
                            result2.onError(Error.create(e));
                        }
                    });
                    return providerThread;
                }
            } catch (Exception e3) {
                e = e3;
                ProviderThread providerThread3 = providerThread;
                multicastSocket = multicastSocket2;
                Log.e(str3, Log.getStackTraceString(e));
                if (multicastSocket != null && !multicastSocket.isClosed()) {
                    multicastSocket.close();
                }
                RunUtil.runOnUI(new Runnable() {
                    public void run() {
                        result2.onError(Error.create(e));
                    }
                });
                return providerThread;
            }
            return providerThread;
        } catch (Exception e4) {
            e = e4;
            providerThread = null;
            Log.e(str3, Log.getStackTraceString(e));
            multicastSocket.close();
            RunUtil.runOnUI(new Runnable() {
                public void run() {
                    result2.onError(Error.create(e));
                }
            });
            return providerThread;
        }
    }

    private void acquireMulticastLock() {
        if (this.multicastLock == null) {
            this.multicastLock = NetUtil.acquireMulticastLock(this.context, TAG);
        } else if (!this.multicastLock.isHeld()) {
            this.multicastLock.acquire();
        }
    }
}
