package com.avos.avoscloud.java_websocket.server;

import com.avos.avoscloud.java_websocket.WebSocket;
import com.avos.avoscloud.java_websocket.WebSocketAdapter;
import com.avos.avoscloud.java_websocket.WebSocketFactory;
import com.avos.avoscloud.java_websocket.WebSocketImpl;
import com.avos.avoscloud.java_websocket.drafts.Draft;
import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.Handshakedata;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshakeBuilder;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.Thread.UncaughtExceptionHandler;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class WebSocketServer extends WebSocketAdapter implements Runnable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static int DECODERS = Runtime.getRuntime().availableProcessors();
    private final InetSocketAddress address;
    private BlockingQueue<ByteBuffer> buffers;
    private final Collection<WebSocket> connections;
    private List<WebSocketWorker> decoders;
    private List<Draft> drafts;
    private List<WebSocketImpl> iqueue;
    private final AtomicBoolean isclosed;
    private int queueinvokes;
    private final AtomicInteger queuesize;
    private Selector selector;
    private Thread selectorthread;
    private ServerSocketChannel server;
    private WebSocketServerFactory wsf;

    public interface WebSocketServerFactory extends WebSocketFactory {
        WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, Draft draft, Socket socket);

        WebSocketImpl createWebSocket(WebSocketAdapter webSocketAdapter, List<Draft> list, Socket socket);

        ByteChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) throws IOException;
    }

    public class WebSocketWorker extends Thread {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private BlockingQueue<WebSocketImpl> iqueue = new LinkedBlockingQueue();

        static {
            Class<WebSocketServer> cls = WebSocketServer.class;
        }

        public WebSocketWorker() {
            StringBuilder sb = new StringBuilder();
            sb.append("WebSocketWorker-");
            sb.append(getId());
            setName(sb.toString());
            setUncaughtExceptionHandler(new UncaughtExceptionHandler(WebSocketServer.this) {
                public void uncaughtException(Thread thread, Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(thread, th);
                }
            });
        }

        public void put(WebSocketImpl webSocketImpl) throws InterruptedException {
            this.iqueue.put(webSocketImpl);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0040, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0041, code lost:
            r6 = r1;
            r1 = r0;
            r0 = r6;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Removed duplicated region for block: B:23:? A[ExcHandler: InterruptedException (unused java.lang.InterruptedException), SYNTHETIC, Splitter:B:1:0x0001] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r7 = this;
                r0 = 0
            L_0x0001:
                java.util.concurrent.BlockingQueue<com.avos.avoscloud.java_websocket.WebSocketImpl> r1 = r7.iqueue     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x0040 }
                java.lang.Object r1 = r1.take()     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x0040 }
                com.avos.avoscloud.java_websocket.WebSocketImpl r1 = (com.avos.avoscloud.java_websocket.WebSocketImpl) r1     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x0040 }
                java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r1.inQueue     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
                java.lang.Object r0 = r0.poll()     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
                java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
                r1.decode(r0)     // Catch:{ Exception -> 0x001c }
                com.avos.avoscloud.java_websocket.server.WebSocketServer r2 = com.avos.avoscloud.java_websocket.server.WebSocketServer.this     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
            L_0x0016:
                r2.pushBuffer(r0)     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
                goto L_0x0036
            L_0x001a:
                r2 = move-exception
                goto L_0x0038
            L_0x001c:
                r2 = move-exception
                java.io.PrintStream r3 = java.lang.System.err     // Catch:{ all -> 0x001a }
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x001a }
                r4.<init>()     // Catch:{ all -> 0x001a }
                java.lang.String r5 = "Error while reading from remote connection: "
                r4.append(r5)     // Catch:{ all -> 0x001a }
                r4.append(r2)     // Catch:{ all -> 0x001a }
                java.lang.String r2 = r4.toString()     // Catch:{ all -> 0x001a }
                r3.println(r2)     // Catch:{ all -> 0x001a }
                com.avos.avoscloud.java_websocket.server.WebSocketServer r2 = com.avos.avoscloud.java_websocket.server.WebSocketServer.this     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
                goto L_0x0016
            L_0x0036:
                r0 = r1
                goto L_0x0001
            L_0x0038:
                com.avos.avoscloud.java_websocket.server.WebSocketServer r3 = com.avos.avoscloud.java_websocket.server.WebSocketServer.this     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
                r3.pushBuffer(r0)     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
                throw r2     // Catch:{ InterruptedException -> 0x0049, RuntimeException -> 0x003e }
            L_0x003e:
                r0 = move-exception
                goto L_0x0044
            L_0x0040:
                r1 = move-exception
                r6 = r1
                r1 = r0
                r0 = r6
            L_0x0044:
                com.avos.avoscloud.java_websocket.server.WebSocketServer r2 = com.avos.avoscloud.java_websocket.server.WebSocketServer.this
                r2.handleFatal(r1, r0)
            L_0x0049:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker.run():void");
        }
    }

    public abstract void onClose(WebSocket webSocket, int i, String str, boolean z);

    public void onCloseInitiated(WebSocket webSocket, int i, String str) {
    }

    public void onClosing(WebSocket webSocket, int i, String str, boolean z) {
    }

    /* access modifiers changed from: protected */
    public boolean onConnect(SelectionKey selectionKey) {
        return true;
    }

    public abstract void onError(WebSocket webSocket, Exception exc);

    public void onFragment(WebSocket webSocket, Framedata framedata) {
    }

    public abstract void onMessage(WebSocket webSocket, String str);

    public void onMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
    }

    public abstract void onOpen(WebSocket webSocket, ClientHandshake clientHandshake);

    /* access modifiers changed from: protected */
    public void releaseBuffers(WebSocket webSocket) throws InterruptedException {
    }

    public WebSocketServer() throws UnknownHostException {
        this(new InetSocketAddress(80), DECODERS, null);
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress) {
        this(inetSocketAddress, DECODERS, null);
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, int i) {
        this(inetSocketAddress, i, null);
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, List<Draft> list) {
        this(inetSocketAddress, DECODERS, list);
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, int i, List<Draft> list) {
        this(inetSocketAddress, i, list, new HashSet());
    }

    public WebSocketServer(InetSocketAddress inetSocketAddress, int i, List<Draft> list, Collection<WebSocket> collection) {
        this.isclosed = new AtomicBoolean(false);
        this.queueinvokes = 0;
        this.queuesize = new AtomicInteger(0);
        this.wsf = new DefaultWebSocketServerFactory();
        if (inetSocketAddress == null || i < 1 || collection == null) {
            throw new IllegalArgumentException("address and connectionscontainer must not be null and you need at least 1 decoder");
        }
        if (list == null) {
            this.drafts = Collections.emptyList();
        } else {
            this.drafts = list;
        }
        this.address = inetSocketAddress;
        this.connections = collection;
        this.iqueue = new LinkedList();
        this.decoders = new ArrayList(i);
        this.buffers = new LinkedBlockingQueue();
        for (int i2 = 0; i2 < i; i2++) {
            WebSocketWorker webSocketWorker = new WebSocketWorker();
            this.decoders.add(webSocketWorker);
            webSocketWorker.start();
        }
    }

    public void start() {
        if (this.selectorthread == null) {
            new Thread(this).start();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName());
        sb.append(" can only be started once.");
        throw new IllegalStateException(sb.toString());
    }

    public void stop(int i) throws InterruptedException {
        ArrayList<WebSocket> arrayList;
        if (this.isclosed.compareAndSet(false, true)) {
            synchronized (this.connections) {
                arrayList = new ArrayList<>(this.connections);
            }
            for (WebSocket close : arrayList) {
                close.close(1001);
            }
            synchronized (this) {
                if (!(this.selectorthread == null || this.selectorthread == Thread.currentThread())) {
                    this.selector.wakeup();
                    this.selectorthread.interrupt();
                    this.selectorthread.join((long) i);
                }
            }
        }
    }

    public void stop() throws IOException, InterruptedException {
        stop(0);
    }

    public Collection<WebSocket> connections() {
        return this.connections;
    }

    public InetSocketAddress getAddress() {
        return this.address;
    }

    public int getPort() {
        int port = getAddress().getPort();
        if (port != 0) {
            return port;
        }
        ServerSocketChannel serverSocketChannel = this.server;
        return serverSocketChannel != null ? serverSocketChannel.socket().getLocalPort() : port;
    }

    public List<Draft> getDraft() {
        return Collections.unmodifiableList(this.drafts);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:0x01a1, code lost:
        if (r1 != null) goto L_0x01a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x01a7, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x01a8, code lost:
        onError(null, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:106:0x01ac, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x01ad, code lost:
        r4 = null;
        r5 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x01af, code lost:
        if (r5 != null) goto L_0x01b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:?, code lost:
        r5.cancel();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x01b4, code lost:
        handleIOException(r5, r4, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x01b9, code lost:
        r1 = r11.decoders;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x01bc, code lost:
        if (r1 != null) goto L_0x01be;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:0x01be, code lost:
        r1 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x01c6, code lost:
        if (r1.hasNext() != false) goto L_0x01c8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x01c8, code lost:
        ((com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r1.next()).interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x01d2, code lost:
        r1 = r11.server;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        r11.server = java.nio.channels.ServerSocketChannel.open();
        r11.server.configureBlocking(false);
        r1 = r11.server.socket();
        r1.setReceiveBufferSize(com.avos.avoscloud.java_websocket.WebSocketImpl.RCVBUF);
        r1.bind(r11.address);
        r11.selector = java.nio.channels.Selector.open();
        r11.server.register(r11.selector, r11.server.validOps());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x01d4, code lost:
        if (r1 != null) goto L_0x01d6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x01da, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x01db, code lost:
        onError(null, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x01df, code lost:
        r1 = r11.decoders;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:127:0x01e1, code lost:
        if (r1 != null) goto L_0x01e3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:0x01e3, code lost:
        r1 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x01eb, code lost:
        if (r1.hasNext() != false) goto L_0x01ed;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x01ed, code lost:
        ((com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r1.next()).interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x01f7, code lost:
        r1 = r11.server;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x01f9, code lost:
        if (r1 != null) goto L_0x01fb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x01ff, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x0201, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:?, code lost:
        handleFatal(null, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x0205, code lost:
        r1 = r11.decoders;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x0207, code lost:
        if (r1 != null) goto L_0x0209;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x0209, code lost:
        r1 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:144:0x0211, code lost:
        if (r1.hasNext() != false) goto L_0x0213;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x0213, code lost:
        ((com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r1.next()).interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x021d, code lost:
        r1 = r11.server;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x021f, code lost:
        if (r1 != null) goto L_0x0221;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0068, code lost:
        if (r11.selectorthread.isInterrupted() == false) goto L_0x006a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x0225, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x0226, code lost:
        onError(null, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x0229, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x022a, code lost:
        r2 = r11.decoders;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x022c, code lost:
        if (r2 != null) goto L_0x022e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x022e, code lost:
        r2 = r2.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x0236, code lost:
        if (r2.hasNext() != false) goto L_0x0238;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x0238, code lost:
        ((com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r2.next()).interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x0242, code lost:
        r2 = r11.server;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x0244, code lost:
        if (r2 != null) goto L_0x0246;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:163:0x024a, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:164:0x024b, code lost:
        onError(null, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:165:0x024e, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:166:0x024f, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:167:0x0250, code lost:
        handleFatal(null, r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:168:0x0253, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r11.selector.select();
        r1 = r11.selector.selectedKeys().iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:177:0x0062, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0079, code lost:
        r3 = null;
        r4 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:182:0x00cc, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x007b, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x007f, code lost:
        if (r1.hasNext() != false) goto L_0x0081;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0081, code lost:
        r5 = (java.nio.channels.SelectionKey) r1.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0087, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x008b, code lost:
        if (r5.isValid() == false) goto L_0x008d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0093, code lost:
        if (r5.isAcceptable() != false) goto L_0x0095;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0099, code lost:
        if (onConnect(r5) == false) goto L_0x009b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x009b, code lost:
        r5.cancel();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x009f, code lost:
        r3 = r11.server.accept();
        r3.configureBlocking(false);
        r7 = r11.wsf.createWebSocket((com.avos.avoscloud.java_websocket.WebSocketAdapter) r11, r11.drafts, r3.socket());
        r7.key = r3.register(r11.selector, 1, r7);
        r7.channel = r11.wsf.wrapChannel(r3, r7.key);
        r1.remove();
        allocateBuffers(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00cc, code lost:
        r3 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00d2, code lost:
        if (r5.isReadable() != false) goto L_0x00d4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00d4, code lost:
        r3 = (com.avos.avoscloud.java_websocket.WebSocketImpl) r5.attachment();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00da, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        r4 = takeBuffer();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00de, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00e4, code lost:
        if (com.avos.avoscloud.java_websocket.SocketChannelIOHelper.read(r4, r3, r3.channel) != false) goto L_0x00e6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00ea, code lost:
        if (r4.hasRemaining() != false) goto L_0x00ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ec, code lost:
        r3.inQueue.put(r4);
        queue(r3);
        r1.remove();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0107, code lost:
        r11.iqueue.add(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x010d, code lost:
        pushBuffer(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0111, code lost:
        pushBuffer(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0114, code lost:
        r4 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0116, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0117, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:?, code lost:
        pushBuffer(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x011a, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x011b, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x011c, code lost:
        r4 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x011f, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0123, code lost:
        if (r5.isWritable() != false) goto L_0x0125;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0125, code lost:
        r3 = (com.avos.avoscloud.java_websocket.WebSocketImpl) r5.attachment();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0139, code lost:
        r5.interestOps(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x013c, code lost:
        r4 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x013e, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0141, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0147, code lost:
        if (r11.iqueue.isEmpty() != false) goto L_0x0062;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0149, code lost:
        r1 = (com.avos.avoscloud.java_websocket.WebSocketImpl) r11.iqueue.remove(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0151, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:?, code lost:
        r4 = (com.avos.avoscloud.java_websocket.WrappedByteChannel) r1.channel;
        r5 = takeBuffer();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x0159, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x015d, code lost:
        if (com.avos.avoscloud.java_websocket.SocketChannelIOHelper.readMore(r5, r1, r4) == false) goto L_0x0164;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x015f, code lost:
        r11.iqueue.add(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x0168, code lost:
        if (r5.hasRemaining() == false) goto L_0x0173;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x016a, code lost:
        r1.inQueue.put(r5);
        queue(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0173, code lost:
        pushBuffer(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0176, code lost:
        r4 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x0178, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x0179, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:?, code lost:
        pushBuffer(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x017c, code lost:
        throw r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x017d, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x017e, code lost:
        r5 = r3;
        r10 = r4;
        r4 = r1;
        r1 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x0183, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0184, code lost:
        r5 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x0186, code lost:
        r1 = r11.decoders;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0189, code lost:
        if (r1 != null) goto L_0x018b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x018b, code lost:
        r1 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0193, code lost:
        if (r1.hasNext() != false) goto L_0x0195;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x0195, code lost:
        ((com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r1.next()).interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x019f, code lost:
        r1 = r11.server;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0016, code lost:
        r0 = r11.selectorthread;
        r1 = new java.lang.StringBuilder();
        r1.append("WebsocketSelector");
        r1.append(r11.selectorthread.getId());
        r0.setName(r1.toString());
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x0062 */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x01b1 A[SYNTHETIC, Splitter:B:109:0x01b1] */
    /* JADX WARNING: Removed duplicated region for block: B:113:? A[ExcHandler: ClosedByInterruptException (unused java.nio.channels.ClosedByInterruptException), SYNTHETIC, Splitter:B:15:0x006a] */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0062 A[LOOP:0: B:12:0x0062->B:175:0x0062, LOOP_START, SYNTHETIC, Splitter:B:12:0x0062] */
    /* JADX WARNING: Removed duplicated region for block: B:93:? A[ExcHandler: InterruptedException (unused java.lang.InterruptedException), SYNTHETIC, Splitter:B:69:0x0141] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r11 = this;
            monitor-enter(r11)
            java.lang.Thread r0 = r11.selectorthread     // Catch:{ all -> 0x0273 }
            if (r0 != 0) goto L_0x0254
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0273 }
            r11.selectorthread = r0     // Catch:{ all -> 0x0273 }
            java.util.concurrent.atomic.AtomicBoolean r0 = r11.isclosed     // Catch:{ all -> 0x0273 }
            boolean r0 = r0.get()     // Catch:{ all -> 0x0273 }
            if (r0 == 0) goto L_0x0015
            monitor-exit(r11)     // Catch:{ all -> 0x0273 }
            return
        L_0x0015:
            monitor-exit(r11)     // Catch:{ all -> 0x0273 }
            java.lang.Thread r0 = r11.selectorthread
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "WebsocketSelector"
            r1.append(r2)
            java.lang.Thread r2 = r11.selectorthread
            long r2 = r2.getId()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.setName(r1)
            r0 = 0
            java.nio.channels.ServerSocketChannel r1 = java.nio.channels.ServerSocketChannel.open()     // Catch:{ IOException -> 0x024f }
            r11.server = r1     // Catch:{ IOException -> 0x024f }
            java.nio.channels.ServerSocketChannel r1 = r11.server     // Catch:{ IOException -> 0x024f }
            r2 = 0
            r1.configureBlocking(r2)     // Catch:{ IOException -> 0x024f }
            java.nio.channels.ServerSocketChannel r1 = r11.server     // Catch:{ IOException -> 0x024f }
            java.net.ServerSocket r1 = r1.socket()     // Catch:{ IOException -> 0x024f }
            int r3 = com.avos.avoscloud.java_websocket.WebSocketImpl.RCVBUF     // Catch:{ IOException -> 0x024f }
            r1.setReceiveBufferSize(r3)     // Catch:{ IOException -> 0x024f }
            java.net.InetSocketAddress r3 = r11.address     // Catch:{ IOException -> 0x024f }
            r1.bind(r3)     // Catch:{ IOException -> 0x024f }
            java.nio.channels.Selector r1 = java.nio.channels.Selector.open()     // Catch:{ IOException -> 0x024f }
            r11.selector = r1     // Catch:{ IOException -> 0x024f }
            java.nio.channels.ServerSocketChannel r1 = r11.server     // Catch:{ IOException -> 0x024f }
            java.nio.channels.Selector r3 = r11.selector     // Catch:{ IOException -> 0x024f }
            java.nio.channels.ServerSocketChannel r4 = r11.server     // Catch:{ IOException -> 0x024f }
            int r4 = r4.validOps()     // Catch:{ IOException -> 0x024f }
            r1.register(r3, r4)     // Catch:{ IOException -> 0x024f }
        L_0x0062:
            java.lang.Thread r1 = r11.selectorthread     // Catch:{ RuntimeException -> 0x0201 }
            boolean r1 = r1.isInterrupted()     // Catch:{ RuntimeException -> 0x0201 }
            if (r1 != 0) goto L_0x01df
            java.nio.channels.Selector r1 = r11.selector     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x01ac, InterruptedException -> 0x0186 }
            r1.select()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x01ac, InterruptedException -> 0x0186 }
            java.nio.channels.Selector r1 = r11.selector     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x01ac, InterruptedException -> 0x0186 }
            java.util.Set r1 = r1.selectedKeys()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x01ac, InterruptedException -> 0x0186 }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x01ac, InterruptedException -> 0x0186 }
            r3 = r0
            r4 = r3
        L_0x007b:
            boolean r5 = r1.hasNext()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            if (r5 == 0) goto L_0x0141
            java.lang.Object r5 = r1.next()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            java.nio.channels.SelectionKey r5 = (java.nio.channels.SelectionKey) r5     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            boolean r3 = r5.isValid()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            if (r3 != 0) goto L_0x008e
            goto L_0x00cc
        L_0x008e:
            boolean r3 = r5.isAcceptable()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            r6 = 1
            if (r3 == 0) goto L_0x00ce
            boolean r3 = r11.onConnect(r5)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            if (r3 != 0) goto L_0x009f
            r5.cancel()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            goto L_0x00cc
        L_0x009f:
            java.nio.channels.ServerSocketChannel r3 = r11.server     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.nio.channels.SocketChannel r3 = r3.accept()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            r3.configureBlocking(r2)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketServerFactory r7 = r11.wsf     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.util.List<com.avos.avoscloud.java_websocket.drafts.Draft> r8 = r11.drafts     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.net.Socket r9 = r3.socket()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.WebSocketImpl r7 = r7.createWebSocket(r11, r8, r9)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.nio.channels.Selector r8 = r11.selector     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.nio.channels.SelectionKey r6 = r3.register(r8, r6, r7)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            r7.key = r6     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketServerFactory r6 = r11.wsf     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.nio.channels.SelectionKey r8 = r7.key     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.nio.channels.ByteChannel r3 = r6.wrapChannel(r3, r8)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            r7.channel = r3     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            r1.remove()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            r11.allocateBuffers(r7)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
        L_0x00cc:
            r3 = r5
            goto L_0x007b
        L_0x00ce:
            boolean r3 = r5.isReadable()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            if (r3 == 0) goto L_0x011f
            java.lang.Object r3 = r5.attachment()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.WebSocketImpl r3 = (com.avos.avoscloud.java_websocket.WebSocketImpl) r3     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.nio.ByteBuffer r4 = r11.takeBuffer()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x011b, InterruptedException -> 0x0186 }
            java.nio.channels.ByteChannel r7 = r3.channel     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            boolean r7 = com.avos.avoscloud.java_websocket.SocketChannelIOHelper.read(r4, r3, r7)     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            if (r7 == 0) goto L_0x0111
            boolean r7 = r4.hasRemaining()     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            if (r7 == 0) goto L_0x010d
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r7 = r3.inQueue     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            r7.put(r4)     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            r11.queue(r3)     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            r1.remove()     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            java.nio.channels.ByteChannel r7 = r3.channel     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            boolean r7 = r7 instanceof com.avos.avoscloud.java_websocket.WrappedByteChannel     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            if (r7 == 0) goto L_0x0114
            java.nio.channels.ByteChannel r7 = r3.channel     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.WrappedByteChannel r7 = (com.avos.avoscloud.java_websocket.WrappedByteChannel) r7     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            boolean r7 = r7.isNeedRead()     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            if (r7 == 0) goto L_0x0114
            java.util.List<com.avos.avoscloud.java_websocket.WebSocketImpl> r7 = r11.iqueue     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            r7.add(r3)     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            goto L_0x0114
        L_0x010d:
            r11.pushBuffer(r4)     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            goto L_0x0114
        L_0x0111:
            r11.pushBuffer(r4)     // Catch:{ IOException -> 0x0116, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
        L_0x0114:
            r4 = r3
            goto L_0x011f
        L_0x0116:
            r1 = move-exception
            r11.pushBuffer(r4)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x011b, InterruptedException -> 0x0186 }
            throw r1     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x011b, InterruptedException -> 0x0186 }
        L_0x011b:
            r1 = move-exception
            r4 = r3
            goto L_0x01af
        L_0x011f:
            boolean r3 = r5.isWritable()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            if (r3 == 0) goto L_0x00cc
            java.lang.Object r3 = r5.attachment()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.WebSocketImpl r3 = (com.avos.avoscloud.java_websocket.WebSocketImpl) r3     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x013e, InterruptedException -> 0x0186 }
            java.nio.channels.ByteChannel r4 = r3.channel     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x011b, InterruptedException -> 0x0186 }
            boolean r4 = com.avos.avoscloud.java_websocket.SocketChannelIOHelper.batch(r3, r4)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x011b, InterruptedException -> 0x0186 }
            if (r4 == 0) goto L_0x013c
            boolean r4 = r5.isValid()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x011b, InterruptedException -> 0x0186 }
            if (r4 == 0) goto L_0x013c
            r5.interestOps(r6)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x011b, InterruptedException -> 0x0186 }
        L_0x013c:
            r4 = r3
            goto L_0x00cc
        L_0x013e:
            r1 = move-exception
            goto L_0x01af
        L_0x0141:
            java.util.List<com.avos.avoscloud.java_websocket.WebSocketImpl> r1 = r11.iqueue     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            boolean r1 = r1.isEmpty()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            if (r1 != 0) goto L_0x0062
            java.util.List<com.avos.avoscloud.java_websocket.WebSocketImpl> r1 = r11.iqueue     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            java.lang.Object r1 = r1.remove(r2)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.WebSocketImpl r1 = (com.avos.avoscloud.java_websocket.WebSocketImpl) r1     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x0183, InterruptedException -> 0x0186 }
            java.nio.channels.ByteChannel r4 = r1.channel     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x017d, InterruptedException -> 0x0186 }
            com.avos.avoscloud.java_websocket.WrappedByteChannel r4 = (com.avos.avoscloud.java_websocket.WrappedByteChannel) r4     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x017d, InterruptedException -> 0x0186 }
            java.nio.ByteBuffer r5 = r11.takeBuffer()     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x017d, InterruptedException -> 0x0186 }
            boolean r4 = com.avos.avoscloud.java_websocket.SocketChannelIOHelper.readMore(r5, r1, r4)     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            if (r4 == 0) goto L_0x0164
            java.util.List<com.avos.avoscloud.java_websocket.WebSocketImpl> r4 = r11.iqueue     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            r4.add(r1)     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
        L_0x0164:
            boolean r4 = r5.hasRemaining()     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            if (r4 == 0) goto L_0x0173
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r4 = r1.inQueue     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            r4.put(r5)     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            r11.queue(r1)     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
            goto L_0x0176
        L_0x0173:
            r11.pushBuffer(r5)     // Catch:{ IOException -> 0x0178, CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, InterruptedException -> 0x0186 }
        L_0x0176:
            r4 = r1
            goto L_0x0141
        L_0x0178:
            r4 = move-exception
            r11.pushBuffer(r5)     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x017d, InterruptedException -> 0x0186 }
            throw r4     // Catch:{ CancelledKeyException -> 0x0062, ClosedByInterruptException -> 0x01b9, IOException -> 0x017d, InterruptedException -> 0x0186 }
        L_0x017d:
            r4 = move-exception
            r5 = r3
            r10 = r4
            r4 = r1
            r1 = r10
            goto L_0x01af
        L_0x0183:
            r1 = move-exception
            r5 = r3
            goto L_0x01af
        L_0x0186:
            java.util.List<com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker> r1 = r11.decoders
            if (r1 == 0) goto L_0x019f
            java.util.Iterator r1 = r1.iterator()
        L_0x018f:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x019f
            java.lang.Object r2 = r1.next()
            com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker r2 = (com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r2
            r2.interrupt()
            goto L_0x018f
        L_0x019f:
            java.nio.channels.ServerSocketChannel r1 = r11.server
            if (r1 == 0) goto L_0x01ab
            r1.close()     // Catch:{ IOException -> 0x01a7 }
            goto L_0x01ab
        L_0x01a7:
            r1 = move-exception
            r11.onError(r0, r1)
        L_0x01ab:
            return
        L_0x01ac:
            r1 = move-exception
            r4 = r0
            r5 = r4
        L_0x01af:
            if (r5 == 0) goto L_0x01b4
            r5.cancel()     // Catch:{ RuntimeException -> 0x0201 }
        L_0x01b4:
            r11.handleIOException(r5, r4, r1)     // Catch:{ RuntimeException -> 0x0201 }
            goto L_0x0062
        L_0x01b9:
            java.util.List<com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker> r1 = r11.decoders
            if (r1 == 0) goto L_0x01d2
            java.util.Iterator r1 = r1.iterator()
        L_0x01c2:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x01d2
            java.lang.Object r2 = r1.next()
            com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker r2 = (com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r2
            r2.interrupt()
            goto L_0x01c2
        L_0x01d2:
            java.nio.channels.ServerSocketChannel r1 = r11.server
            if (r1 == 0) goto L_0x01de
            r1.close()     // Catch:{ IOException -> 0x01da }
            goto L_0x01de
        L_0x01da:
            r1 = move-exception
            r11.onError(r0, r1)
        L_0x01de:
            return
        L_0x01df:
            java.util.List<com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker> r1 = r11.decoders
            if (r1 == 0) goto L_0x01f7
            java.util.Iterator r1 = r1.iterator()
        L_0x01e7:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x01f7
            java.lang.Object r2 = r1.next()
            com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker r2 = (com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r2
            r2.interrupt()
            goto L_0x01e7
        L_0x01f7:
            java.nio.channels.ServerSocketChannel r1 = r11.server
            if (r1 == 0) goto L_0x0229
            r1.close()     // Catch:{ IOException -> 0x0225 }
            goto L_0x0229
        L_0x01ff:
            r1 = move-exception
            goto L_0x022a
        L_0x0201:
            r1 = move-exception
            r11.handleFatal(r0, r1)     // Catch:{ all -> 0x01ff }
            java.util.List<com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker> r1 = r11.decoders
            if (r1 == 0) goto L_0x021d
            java.util.Iterator r1 = r1.iterator()
        L_0x020d:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x021d
            java.lang.Object r2 = r1.next()
            com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker r2 = (com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r2
            r2.interrupt()
            goto L_0x020d
        L_0x021d:
            java.nio.channels.ServerSocketChannel r1 = r11.server
            if (r1 == 0) goto L_0x0229
            r1.close()     // Catch:{ IOException -> 0x0225 }
            goto L_0x0229
        L_0x0225:
            r1 = move-exception
            r11.onError(r0, r1)
        L_0x0229:
            return
        L_0x022a:
            java.util.List<com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker> r2 = r11.decoders
            if (r2 == 0) goto L_0x0242
            java.util.Iterator r2 = r2.iterator()
        L_0x0232:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0242
            java.lang.Object r3 = r2.next()
            com.avos.avoscloud.java_websocket.server.WebSocketServer$WebSocketWorker r3 = (com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker) r3
            r3.interrupt()
            goto L_0x0232
        L_0x0242:
            java.nio.channels.ServerSocketChannel r2 = r11.server
            if (r2 == 0) goto L_0x024e
            r2.close()     // Catch:{ IOException -> 0x024a }
            goto L_0x024e
        L_0x024a:
            r2 = move-exception
            r11.onError(r0, r2)
        L_0x024e:
            throw r1
        L_0x024f:
            r1 = move-exception
            r11.handleFatal(r0, r1)
            return
        L_0x0254:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0273 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0273 }
            r1.<init>()     // Catch:{ all -> 0x0273 }
            java.lang.Class r2 = r11.getClass()     // Catch:{ all -> 0x0273 }
            java.lang.String r2 = r2.getName()     // Catch:{ all -> 0x0273 }
            r1.append(r2)     // Catch:{ all -> 0x0273 }
            java.lang.String r2 = " can only be started once."
            r1.append(r2)     // Catch:{ all -> 0x0273 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0273 }
            r0.<init>(r1)     // Catch:{ all -> 0x0273 }
            throw r0     // Catch:{ all -> 0x0273 }
        L_0x0273:
            r0 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x0273 }
            goto L_0x0277
        L_0x0276:
            throw r0
        L_0x0277:
            goto L_0x0276
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.java_websocket.server.WebSocketServer.run():void");
    }

    /* access modifiers changed from: protected */
    public void allocateBuffers(WebSocket webSocket) throws InterruptedException {
        if (this.queuesize.get() < (this.decoders.size() * 2) + 1) {
            this.queuesize.incrementAndGet();
            this.buffers.put(createBuffer());
        }
    }

    public ByteBuffer createBuffer() {
        return ByteBuffer.allocate(WebSocketImpl.RCVBUF);
    }

    private void queue(WebSocketImpl webSocketImpl) throws InterruptedException {
        if (webSocketImpl.workerThread == null) {
            List<WebSocketWorker> list = this.decoders;
            webSocketImpl.workerThread = (WebSocketWorker) list.get(this.queueinvokes % list.size());
            this.queueinvokes++;
        }
        webSocketImpl.workerThread.put(webSocketImpl);
    }

    private ByteBuffer takeBuffer() throws InterruptedException {
        return (ByteBuffer) this.buffers.take();
    }

    /* access modifiers changed from: private */
    public void pushBuffer(ByteBuffer byteBuffer) throws InterruptedException {
        if (this.buffers.size() <= this.queuesize.intValue()) {
            this.buffers.put(byteBuffer);
        }
    }

    private void handleIOException(SelectionKey selectionKey, WebSocket webSocket, IOException iOException) {
        if (webSocket != null) {
            webSocket.closeConnection(1006, iOException.getMessage());
        } else if (selectionKey != null) {
            SelectableChannel channel = selectionKey.channel();
            if (channel != null && channel.isOpen()) {
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                if (WebSocketImpl.DEBUG) {
                    PrintStream printStream = System.out;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Connection closed because of");
                    sb.append(iOException);
                    printStream.println(sb.toString());
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void handleFatal(WebSocket webSocket, Exception exc) {
        onError(webSocket, exc);
        try {
            stop();
        } catch (IOException e) {
            onError(null, e);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            onError(null, e2);
        }
    }

    /* access modifiers changed from: protected */
    public String getFlashSecurityPolicy() {
        StringBuilder sb = new StringBuilder();
        sb.append("<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"");
        sb.append(getPort());
        sb.append("\" /></cross-domain-policy>");
        return sb.toString();
    }

    public final void onWebsocketMessage(WebSocket webSocket, String str) {
        onMessage(webSocket, str);
    }

    @Deprecated
    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
        onFragment(webSocket, framedata);
    }

    public final void onWebsocketMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
        onMessage(webSocket, byteBuffer);
    }

    public final void onWebsocketOpen(WebSocket webSocket, Handshakedata handshakedata) {
        if (addConnection(webSocket)) {
            onOpen(webSocket, (ClientHandshake) handshakedata);
        }
    }

    public final void onWebsocketClose(WebSocket webSocket, int i, String str, boolean z) {
        this.selector.wakeup();
        try {
            if (removeConnection(webSocket)) {
                onClose(webSocket, i, str, z);
            }
            try {
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } finally {
            try {
                releaseBuffers(webSocket);
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean removeConnection(WebSocket webSocket) {
        boolean remove;
        synchronized (this.connections) {
            remove = this.connections.remove(webSocket);
        }
        if (this.isclosed.get() && this.connections.size() == 0) {
            this.selectorthread.interrupt();
        }
        return remove;
    }

    public ServerHandshakeBuilder onWebsocketHandshakeReceivedAsServer(WebSocket webSocket, Draft draft, ClientHandshake clientHandshake) throws InvalidDataException {
        return super.onWebsocketHandshakeReceivedAsServer(webSocket, draft, clientHandshake);
    }

    /* access modifiers changed from: protected */
    public boolean addConnection(WebSocket webSocket) {
        boolean add;
        if (!this.isclosed.get()) {
            synchronized (this.connections) {
                add = this.connections.add(webSocket);
            }
            return add;
        }
        webSocket.close(1001);
        return true;
    }

    public final void onWebsocketError(WebSocket webSocket, Exception exc) {
        onError(webSocket, exc);
    }

    public final void onWriteDemand(WebSocket webSocket) {
        WebSocketImpl webSocketImpl = (WebSocketImpl) webSocket;
        try {
            webSocketImpl.key.interestOps(5);
        } catch (CancelledKeyException unused) {
            webSocketImpl.outQueue.clear();
        }
        this.selector.wakeup();
    }

    public void onWebsocketCloseInitiated(WebSocket webSocket, int i, String str) {
        onCloseInitiated(webSocket, i, str);
    }

    public void onWebsocketClosing(WebSocket webSocket, int i, String str, boolean z) {
        onClosing(webSocket, i, str, z);
    }

    public final void setWebSocketFactory(WebSocketServerFactory webSocketServerFactory) {
        this.wsf = webSocketServerFactory;
    }

    public final WebSocketFactory getWebSocketFactory() {
        return this.wsf;
    }

    private Socket getSocket(WebSocket webSocket) {
        return ((SocketChannel) ((WebSocketImpl) webSocket).key.channel()).socket();
    }

    public InetSocketAddress getLocalSocketAddress(WebSocket webSocket) {
        return (InetSocketAddress) getSocket(webSocket).getLocalSocketAddress();
    }

    public InetSocketAddress getRemoteSocketAddress(WebSocket webSocket) {
        return (InetSocketAddress) getSocket(webSocket).getRemoteSocketAddress();
    }
}
