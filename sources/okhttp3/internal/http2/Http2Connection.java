package okhttp3.internal.http2;

import androidx.core.internal.view.SupportMenu;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

public final class Http2Connection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    /* access modifiers changed from: private */
    public static final ExecutorService listenerExecutor;
    /* access modifiers changed from: private */
    public boolean awaitingPong;
    long bytesLeftInWriteWindow;
    final boolean client;
    final String connectionName;
    final Set<Integer> currentPushRequests = new LinkedHashSet();
    int lastGoodStreamId;
    final Listener listener;
    int nextStreamId;
    Settings okHttpSettings = new Settings();
    final Settings peerSettings = new Settings();
    private final ExecutorService pushExecutor;
    final PushObserver pushObserver;
    final ReaderRunnable readerRunnable;
    boolean receivedInitialPeerSettings = false;
    boolean shutdown;
    final Socket socket;
    final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    long unacknowledgedBytesRead = 0;
    final Http2Writer writer;
    /* access modifiers changed from: private */
    public final ScheduledExecutorService writerExecutor;

    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() {
            public void onStream(Http2Stream http2Stream) throws IOException {
                http2Stream.close(ErrorCode.REFUSED_STREAM, null);
            }
        };

        public void onSettings(Http2Connection http2Connection) {
        }

        public abstract void onStream(Http2Stream http2Stream) throws IOException;
    }

    public static class Builder {
        boolean client;
        String connectionName;
        Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        int pingIntervalMillis;
        PushObserver pushObserver = PushObserver.CANCEL;
        BufferedSink sink;
        Socket socket;
        BufferedSource source;

        public Builder(boolean z) {
            this.client = z;
        }

        public Builder socket(Socket socket2) throws IOException {
            String str;
            SocketAddress remoteSocketAddress = socket2.getRemoteSocketAddress();
            if (remoteSocketAddress instanceof InetSocketAddress) {
                str = ((InetSocketAddress) remoteSocketAddress).getHostName();
            } else {
                str = remoteSocketAddress.toString();
            }
            return socket(socket2, str, Okio.buffer(Okio.source(socket2)), Okio.buffer(Okio.sink(socket2)));
        }

        public Builder socket(Socket socket2, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.socket = socket2;
            this.connectionName = str;
            this.source = bufferedSource;
            this.sink = bufferedSink;
            return this;
        }

        public Builder listener(Listener listener2) {
            this.listener = listener2;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver2) {
            this.pushObserver = pushObserver2;
            return this;
        }

        public Builder pingIntervalMillis(int i) {
            this.pingIntervalMillis = i;
            return this;
        }

        public Http2Connection build() {
            return new Http2Connection(this);
        }
    }

    final class PingRunnable extends NamedRunnable {
        final int payload1;
        final int payload2;
        final boolean reply;

        PingRunnable(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", Http2Connection.this.connectionName, Integer.valueOf(i), Integer.valueOf(i2));
            this.reply = z;
            this.payload1 = i;
            this.payload2 = i2;
        }

        public void execute() {
            Http2Connection.this.writePing(this.reply, this.payload1, this.payload2);
        }
    }

    class ReaderRunnable extends NamedRunnable implements Handler {
        final Http2Reader reader;

        public void ackSettings() {
        }

        public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
        }

        public void priority(int i, int i2, int i3, boolean z) {
        }

        ReaderRunnable(Http2Reader http2Reader) {
            super("OkHttp %s", Http2Connection.this.connectionName);
            this.reader = http2Reader;
        }

        /* access modifiers changed from: protected */
        public void execute() {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            IOException e = null;
            try {
                this.reader.readConnectionPreface(this);
                while (this.reader.nextFrame(false, this)) {
                }
                errorCode2 = ErrorCode.NO_ERROR;
                errorCode = ErrorCode.CANCEL;
            } catch (IOException e2) {
                e = e2;
                errorCode2 = ErrorCode.PROTOCOL_ERROR;
                errorCode = ErrorCode.PROTOCOL_ERROR;
            } catch (Throwable th) {
                Http2Connection.this.close(errorCode2, errorCode3, e);
                Util.closeQuietly((Closeable) this.reader);
                throw th;
            }
            Http2Connection.this.close(errorCode2, errorCode, e);
            Util.closeQuietly((Closeable) this.reader);
        }

        public void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushDataLater(i, bufferedSource, i2, z);
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                long j = (long) i2;
                Http2Connection.this.updateConnectionFlowControl(j);
                bufferedSource.skip(j);
                return;
            }
            stream.receiveData(bufferedSource, i2);
            if (z) {
                stream.receiveHeaders(Util.EMPTY_HEADERS, true);
            }
        }

        public void headers(boolean z, int i, int i2, List<Header> list) {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushHeadersLater(i, list, z);
                return;
            }
            synchronized (Http2Connection.this) {
                Http2Stream stream = Http2Connection.this.getStream(i);
                if (stream != null) {
                    stream.receiveHeaders(Util.toHeaders(list), z);
                } else if (!Http2Connection.this.shutdown) {
                    if (i > Http2Connection.this.lastGoodStreamId) {
                        if (i % 2 != Http2Connection.this.nextStreamId % 2) {
                            int i3 = i;
                            final Http2Stream http2Stream = new Http2Stream(i3, Http2Connection.this, false, z, Util.toHeaders(list));
                            Http2Connection.this.lastGoodStreamId = i;
                            Http2Connection.this.streams.put(Integer.valueOf(i), http2Stream);
                            Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{Http2Connection.this.connectionName, Integer.valueOf(i)}) {
                                public void execute() {
                                    try {
                                        Http2Connection.this.listener.onStream(http2Stream);
                                    } catch (IOException e) {
                                        Platform platform = Platform.get();
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("Http2Connection.Listener failure for ");
                                        sb.append(Http2Connection.this.connectionName);
                                        platform.log(4, sb.toString(), e);
                                        try {
                                            http2Stream.close(ErrorCode.PROTOCOL_ERROR, e);
                                        } catch (IOException unused) {
                                        }
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }

        public void rstStream(int i, ErrorCode errorCode) {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushResetLater(i, errorCode);
                return;
            }
            Http2Stream removeStream = Http2Connection.this.removeStream(i);
            if (removeStream != null) {
                removeStream.receiveRstStream(errorCode);
            }
        }

        public void settings(boolean z, Settings settings) {
            Http2Stream[] http2StreamArr;
            long j;
            int i;
            synchronized (Http2Connection.this) {
                int initialWindowSize = Http2Connection.this.peerSettings.getInitialWindowSize();
                if (z) {
                    Http2Connection.this.peerSettings.clear();
                }
                Http2Connection.this.peerSettings.merge(settings);
                applyAndAckSettings(settings);
                int initialWindowSize2 = Http2Connection.this.peerSettings.getInitialWindowSize();
                http2StreamArr = null;
                if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                    j = 0;
                } else {
                    j = (long) (initialWindowSize2 - initialWindowSize);
                    if (!Http2Connection.this.receivedInitialPeerSettings) {
                        Http2Connection.this.receivedInitialPeerSettings = true;
                    }
                    if (!Http2Connection.this.streams.isEmpty()) {
                        http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                    }
                }
                Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s settings", Http2Connection.this.connectionName) {
                    public void execute() {
                        Http2Connection.this.listener.onSettings(Http2Connection.this);
                    }
                });
            }
            if (http2StreamArr != null && j != 0) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(j);
                    }
                }
            }
        }

        private void applyAndAckSettings(final Settings settings) {
            try {
                Http2Connection.this.writerExecutor.execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[]{Http2Connection.this.connectionName}) {
                    public void execute() {
                        try {
                            Http2Connection.this.writer.applyAndAckSettings(settings);
                        } catch (IOException e) {
                            Http2Connection.this.failConnection(e);
                        }
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
        }

        public void ping(boolean z, int i, int i2) {
            if (z) {
                synchronized (Http2Connection.this) {
                    Http2Connection.this.awaitingPong = false;
                    Http2Connection.this.notifyAll();
                }
                return;
            }
            try {
                Http2Connection.this.writerExecutor.execute(new PingRunnable(true, i, i2));
            } catch (RejectedExecutionException unused) {
            }
        }

        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            Http2Stream[] http2StreamArr;
            byteString.size();
            synchronized (Http2Connection.this) {
                http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                Http2Connection.this.shutdown = true;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    Http2Connection.this.removeStream(http2Stream.getId());
                }
            }
        }

        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (Http2Connection.this) {
                    Http2Connection.this.bytesLeftInWriteWindow += j;
                    Http2Connection.this.notifyAll();
                }
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                }
            }
        }

        public void pushPromise(int i, int i2, List<Header> list) {
            Http2Connection.this.pushRequestLater(i2, list);
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean pushedStream(int i) {
        return i != 0 && (i & 1) == 0;
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Http2Connection", true));
        listenerExecutor = threadPoolExecutor;
    }

    Http2Connection(Builder builder) {
        Builder builder2 = builder;
        this.pushObserver = builder2.pushObserver;
        this.client = builder2.client;
        this.listener = builder2.listener;
        this.nextStreamId = builder2.client ? 1 : 2;
        if (builder2.client) {
            this.nextStreamId += 2;
        }
        if (builder2.client) {
            this.okHttpSettings.set(7, 16777216);
        }
        this.connectionName = builder2.connectionName;
        this.writerExecutor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(Util.format("OkHttp %s Writer", this.connectionName), false));
        if (builder2.pingIntervalMillis != 0) {
            this.writerExecutor.scheduleAtFixedRate(new PingRunnable(false, 0, 0), (long) builder2.pingIntervalMillis, (long) builder2.pingIntervalMillis, TimeUnit.MILLISECONDS);
        }
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format("OkHttp %s Push Observer", this.connectionName), true));
        this.pushExecutor = threadPoolExecutor;
        this.peerSettings.set(7, SupportMenu.USER_MASK);
        this.peerSettings.set(5, 16384);
        this.bytesLeftInWriteWindow = (long) this.peerSettings.getInitialWindowSize();
        this.socket = builder2.socket;
        this.writer = new Http2Writer(builder2.sink, this.client);
        this.readerRunnable = new ReaderRunnable(new Http2Reader(builder2.source, this.client));
    }

    public synchronized int openStreamCount() {
        return this.streams.size();
    }

    /* access modifiers changed from: 0000 */
    public synchronized Http2Stream getStream(int i) {
        return (Http2Stream) this.streams.get(Integer.valueOf(i));
    }

    /* access modifiers changed from: 0000 */
    public synchronized Http2Stream removeStream(int i) {
        Http2Stream http2Stream;
        http2Stream = (Http2Stream) this.streams.remove(Integer.valueOf(i));
        notifyAll();
        return http2Stream;
    }

    public synchronized int maxConcurrentStreams() {
        return this.peerSettings.getMaxConcurrentStreams(Integer.MAX_VALUE);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void updateConnectionFlowControl(long j) {
        this.unacknowledgedBytesRead += j;
        if (this.unacknowledgedBytesRead >= ((long) (this.okHttpSettings.getInitialWindowSize() / 2))) {
            writeWindowUpdateLater(0, this.unacknowledgedBytesRead);
            this.unacknowledgedBytesRead = 0;
        }
    }

    public Http2Stream pushStream(int i, List<Header> list, boolean z) throws IOException {
        if (!this.client) {
            return newStream(i, list, z);
        }
        throw new IllegalStateException("Client cannot push requests.");
    }

    public Http2Stream newStream(List<Header> list, boolean z) throws IOException {
        return newStream(0, list, z);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0043  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private okhttp3.internal.http2.Http2Stream newStream(int r11, java.util.List<okhttp3.internal.http2.Header> r12, boolean r13) throws java.io.IOException {
        /*
            r10 = this;
            r6 = r13 ^ 1
            r4 = 0
            okhttp3.internal.http2.Http2Writer r7 = r10.writer
            monitor-enter(r7)
            monitor-enter(r10)     // Catch:{ all -> 0x0078 }
            int r0 = r10.nextStreamId     // Catch:{ all -> 0x0075 }
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L_0x0013
            okhttp3.internal.http2.ErrorCode r0 = okhttp3.internal.http2.ErrorCode.REFUSED_STREAM     // Catch:{ all -> 0x0075 }
            r10.shutdown(r0)     // Catch:{ all -> 0x0075 }
        L_0x0013:
            boolean r0 = r10.shutdown     // Catch:{ all -> 0x0075 }
            if (r0 != 0) goto L_0x006f
            int r8 = r10.nextStreamId     // Catch:{ all -> 0x0075 }
            int r0 = r10.nextStreamId     // Catch:{ all -> 0x0075 }
            int r0 = r0 + 2
            r10.nextStreamId = r0     // Catch:{ all -> 0x0075 }
            okhttp3.internal.http2.Http2Stream r9 = new okhttp3.internal.http2.Http2Stream     // Catch:{ all -> 0x0075 }
            r5 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x0075 }
            if (r13 == 0) goto L_0x003c
            long r0 = r10.bytesLeftInWriteWindow     // Catch:{ all -> 0x0075 }
            r2 = 0
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 == 0) goto L_0x003c
            long r0 = r9.bytesLeftInWriteWindow     // Catch:{ all -> 0x0075 }
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 != 0) goto L_0x003a
            goto L_0x003c
        L_0x003a:
            r13 = 0
            goto L_0x003d
        L_0x003c:
            r13 = 1
        L_0x003d:
            boolean r0 = r9.isOpen()     // Catch:{ all -> 0x0075 }
            if (r0 == 0) goto L_0x004c
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r10.streams     // Catch:{ all -> 0x0075 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x0075 }
            r0.put(r1, r9)     // Catch:{ all -> 0x0075 }
        L_0x004c:
            monitor-exit(r10)     // Catch:{ all -> 0x0075 }
            if (r11 != 0) goto L_0x0055
            okhttp3.internal.http2.Http2Writer r11 = r10.writer     // Catch:{ all -> 0x0078 }
            r11.headers(r6, r8, r12)     // Catch:{ all -> 0x0078 }
            goto L_0x005e
        L_0x0055:
            boolean r0 = r10.client     // Catch:{ all -> 0x0078 }
            if (r0 != 0) goto L_0x0067
            okhttp3.internal.http2.Http2Writer r0 = r10.writer     // Catch:{ all -> 0x0078 }
            r0.pushPromise(r11, r8, r12)     // Catch:{ all -> 0x0078 }
        L_0x005e:
            monitor-exit(r7)     // Catch:{ all -> 0x0078 }
            if (r13 == 0) goto L_0x0066
            okhttp3.internal.http2.Http2Writer r11 = r10.writer
            r11.flush()
        L_0x0066:
            return r9
        L_0x0067:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x0078 }
            java.lang.String r12 = "client streams shouldn't have associated stream IDs"
            r11.<init>(r12)     // Catch:{ all -> 0x0078 }
            throw r11     // Catch:{ all -> 0x0078 }
        L_0x006f:
            okhttp3.internal.http2.ConnectionShutdownException r11 = new okhttp3.internal.http2.ConnectionShutdownException     // Catch:{ all -> 0x0075 }
            r11.<init>()     // Catch:{ all -> 0x0075 }
            throw r11     // Catch:{ all -> 0x0075 }
        L_0x0075:
            r11 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x0075 }
            throw r11     // Catch:{ all -> 0x0078 }
        L_0x0078:
            r11 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x0078 }
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.newStream(int, java.util.List, boolean):okhttp3.internal.http2.Http2Stream");
    }

    /* access modifiers changed from: 0000 */
    public void writeHeaders(int i, boolean z, List<Header> list) throws IOException {
        this.writer.headers(z, i, list);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:26|27|28) */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r8.bytesLeftInWriteWindow), r8.writer.maxDataLength());
        r6 = (long) r3;
        r8.bytesLeftInWriteWindow -= r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0066, code lost:
        throw new java.io.InterruptedIOException();
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x005a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void writeData(int r9, boolean r10, okio.Buffer r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto L_0x000d
            okhttp3.internal.http2.Http2Writer r12 = r8.writer
            r12.data(r10, r9, r11, r0)
            return
        L_0x000d:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L_0x0069
            monitor-enter(r8)
        L_0x0012:
            long r3 = r8.bytesLeftInWriteWindow     // Catch:{ InterruptedException -> 0x005a }
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 > 0) goto L_0x0030
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r3 = r8.streams     // Catch:{ InterruptedException -> 0x005a }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x005a }
            boolean r3 = r3.containsKey(r4)     // Catch:{ InterruptedException -> 0x005a }
            if (r3 == 0) goto L_0x0028
            r8.wait()     // Catch:{ InterruptedException -> 0x005a }
            goto L_0x0012
        L_0x0028:
            java.io.IOException r9 = new java.io.IOException     // Catch:{ InterruptedException -> 0x005a }
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch:{ InterruptedException -> 0x005a }
            throw r9     // Catch:{ InterruptedException -> 0x005a }
        L_0x0030:
            long r3 = r8.bytesLeftInWriteWindow     // Catch:{ all -> 0x0058 }
            long r3 = java.lang.Math.min(r12, r3)     // Catch:{ all -> 0x0058 }
            int r4 = (int) r3     // Catch:{ all -> 0x0058 }
            okhttp3.internal.http2.Http2Writer r3 = r8.writer     // Catch:{ all -> 0x0058 }
            int r3 = r3.maxDataLength()     // Catch:{ all -> 0x0058 }
            int r3 = java.lang.Math.min(r4, r3)     // Catch:{ all -> 0x0058 }
            long r4 = r8.bytesLeftInWriteWindow     // Catch:{ all -> 0x0058 }
            long r6 = (long) r3     // Catch:{ all -> 0x0058 }
            long r4 = r4 - r6
            r8.bytesLeftInWriteWindow = r4     // Catch:{ all -> 0x0058 }
            monitor-exit(r8)     // Catch:{ all -> 0x0058 }
            long r12 = r12 - r6
            okhttp3.internal.http2.Http2Writer r4 = r8.writer
            if (r10 == 0) goto L_0x0053
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L_0x0053
            r5 = 1
            goto L_0x0054
        L_0x0053:
            r5 = 0
        L_0x0054:
            r4.data(r5, r9, r11, r3)
            goto L_0x000d
        L_0x0058:
            r9 = move-exception
            goto L_0x0067
        L_0x005a:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0058 }
            r9.interrupt()     // Catch:{ all -> 0x0058 }
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch:{ all -> 0x0058 }
            r9.<init>()     // Catch:{ all -> 0x0058 }
            throw r9     // Catch:{ all -> 0x0058 }
        L_0x0067:
            monitor-exit(r8)     // Catch:{ all -> 0x0058 }
            throw r9
        L_0x0069:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    /* access modifiers changed from: 0000 */
    public void writeSynResetLater(int i, ErrorCode errorCode) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.writerExecutor;
            final int i2 = i;
            final ErrorCode errorCode2 = errorCode;
            AnonymousClass1 r1 = new NamedRunnable("OkHttp %s stream %d", new Object[]{this.connectionName, Integer.valueOf(i)}) {
                public void execute() {
                    try {
                        Http2Connection.this.writeSynReset(i2, errorCode2);
                    } catch (IOException e) {
                        Http2Connection.this.failConnection(e);
                    }
                }
            };
            scheduledExecutorService.execute(r1);
        } catch (RejectedExecutionException unused) {
        }
    }

    /* access modifiers changed from: 0000 */
    public void writeSynReset(int i, ErrorCode errorCode) throws IOException {
        this.writer.rstStream(i, errorCode);
    }

    /* access modifiers changed from: 0000 */
    public void writeWindowUpdateLater(int i, long j) {
        try {
            ScheduledExecutorService scheduledExecutorService = this.writerExecutor;
            final int i2 = i;
            final long j2 = j;
            AnonymousClass2 r1 = new NamedRunnable("OkHttp Window Update %s stream %d", new Object[]{this.connectionName, Integer.valueOf(i)}) {
                public void execute() {
                    try {
                        Http2Connection.this.writer.windowUpdate(i2, j2);
                    } catch (IOException e) {
                        Http2Connection.this.failConnection(e);
                    }
                }
            };
            scheduledExecutorService.execute(r1);
        } catch (RejectedExecutionException unused) {
        }
    }

    /* access modifiers changed from: 0000 */
    public void writePing(boolean z, int i, int i2) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.awaitingPong;
                this.awaitingPong = true;
            }
            if (z2) {
                failConnection(null);
                return;
            }
        }
        try {
            this.writer.ping(z, i, i2);
        } catch (IOException e) {
            failConnection(e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void writePingAndAwaitPong() throws InterruptedException {
        writePing(false, 1330343787, -257978967);
        awaitPong();
    }

    /* access modifiers changed from: 0000 */
    public synchronized void awaitPong() throws InterruptedException {
        while (this.awaitingPong) {
            wait();
        }
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public void shutdown(ErrorCode errorCode) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.shutdown) {
                    this.shutdown = true;
                    int i = this.lastGoodStreamId;
                    this.writer.goAway(i, errorCode, Util.EMPTY_BYTE_ARRAY);
                }
            }
        }
    }

    public void close() {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:20:0x003a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void close(okhttp3.internal.http2.ErrorCode r4, okhttp3.internal.http2.ErrorCode r5, @javax.annotation.Nullable java.io.IOException r6) {
        /*
            r3 = this;
            r3.shutdown(r4)     // Catch:{ IOException -> 0x0003 }
        L_0x0003:
            r4 = 0
            monitor-enter(r3)
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r3.streams     // Catch:{ all -> 0x004a }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x004a }
            if (r0 != 0) goto L_0x0026
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r4 = r3.streams     // Catch:{ all -> 0x004a }
            java.util.Collection r4 = r4.values()     // Catch:{ all -> 0x004a }
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r3.streams     // Catch:{ all -> 0x004a }
            int r0 = r0.size()     // Catch:{ all -> 0x004a }
            okhttp3.internal.http2.Http2Stream[] r0 = new okhttp3.internal.http2.Http2Stream[r0]     // Catch:{ all -> 0x004a }
            java.lang.Object[] r4 = r4.toArray(r0)     // Catch:{ all -> 0x004a }
            okhttp3.internal.http2.Http2Stream[] r4 = (okhttp3.internal.http2.Http2Stream[]) r4     // Catch:{ all -> 0x004a }
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r3.streams     // Catch:{ all -> 0x004a }
            r0.clear()     // Catch:{ all -> 0x004a }
        L_0x0026:
            monitor-exit(r3)     // Catch:{ all -> 0x004a }
            if (r4 == 0) goto L_0x0035
            int r0 = r4.length
            r1 = 0
        L_0x002b:
            if (r1 >= r0) goto L_0x0035
            r2 = r4[r1]
            r2.close(r5, r6)     // Catch:{ IOException -> 0x0032 }
        L_0x0032:
            int r1 = r1 + 1
            goto L_0x002b
        L_0x0035:
            okhttp3.internal.http2.Http2Writer r4 = r3.writer     // Catch:{ IOException -> 0x003a }
            r4.close()     // Catch:{ IOException -> 0x003a }
        L_0x003a:
            java.net.Socket r4 = r3.socket     // Catch:{ IOException -> 0x003f }
            r4.close()     // Catch:{ IOException -> 0x003f }
        L_0x003f:
            java.util.concurrent.ScheduledExecutorService r4 = r3.writerExecutor
            r4.shutdown()
            java.util.concurrent.ExecutorService r4 = r3.pushExecutor
            r4.shutdown()
            return
        L_0x004a:
            r4 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x004a }
            goto L_0x004e
        L_0x004d:
            throw r4
        L_0x004e:
            goto L_0x004d
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.close(okhttp3.internal.http2.ErrorCode, okhttp3.internal.http2.ErrorCode, java.io.IOException):void");
    }

    /* access modifiers changed from: private */
    public void failConnection(@Nullable IOException iOException) {
        close(ErrorCode.PROTOCOL_ERROR, ErrorCode.PROTOCOL_ERROR, iOException);
    }

    public void start() throws IOException {
        start(true);
    }

    /* access modifiers changed from: 0000 */
    public void start(boolean z) throws IOException {
        if (z) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, (long) (initialWindowSize - SupportMenu.USER_MASK));
            }
        }
        new Thread(this.readerRunnable).start();
    }

    public void setSettings(Settings settings) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.shutdown) {
                    this.okHttpSettings.merge(settings);
                } else {
                    throw new ConnectionShutdownException();
                }
            }
            this.writer.settings(settings);
        }
    }

    public synchronized boolean isShutdown() {
        return this.shutdown;
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r3 = r8;
        r6 = r9;
        r7 = r10;
        r2 = new okhttp3.internal.http2.Http2Connection.AnonymousClass3(r3, "OkHttp %s Push Request[%s]", new java.lang.Object[]{r8.connectionName, java.lang.Integer.valueOf(r9)});
        pushExecutorExecute(r2);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void pushRequestLater(int r9, java.util.List<okhttp3.internal.http2.Header> r10) {
        /*
            r8 = this;
            monitor-enter(r8)
            java.util.Set<java.lang.Integer> r0 = r8.currentPushRequests     // Catch:{ all -> 0x003c }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x003c }
            boolean r0 = r0.contains(r1)     // Catch:{ all -> 0x003c }
            if (r0 == 0) goto L_0x0014
            okhttp3.internal.http2.ErrorCode r10 = okhttp3.internal.http2.ErrorCode.PROTOCOL_ERROR     // Catch:{ all -> 0x003c }
            r8.writeSynResetLater(r9, r10)     // Catch:{ all -> 0x003c }
            monitor-exit(r8)     // Catch:{ all -> 0x003c }
            return
        L_0x0014:
            java.util.Set<java.lang.Integer> r0 = r8.currentPushRequests     // Catch:{ all -> 0x003c }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x003c }
            r0.add(r1)     // Catch:{ all -> 0x003c }
            monitor-exit(r8)     // Catch:{ all -> 0x003c }
            okhttp3.internal.http2.Http2Connection$3 r0 = new okhttp3.internal.http2.Http2Connection$3     // Catch:{ RejectedExecutionException -> 0x003b }
            java.lang.String r4 = "OkHttp %s Push Request[%s]"
            r1 = 2
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch:{ RejectedExecutionException -> 0x003b }
            r1 = 0
            java.lang.String r2 = r8.connectionName     // Catch:{ RejectedExecutionException -> 0x003b }
            r5[r1] = r2     // Catch:{ RejectedExecutionException -> 0x003b }
            r1 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r9)     // Catch:{ RejectedExecutionException -> 0x003b }
            r5[r1] = r2     // Catch:{ RejectedExecutionException -> 0x003b }
            r2 = r0
            r3 = r8
            r6 = r9
            r7 = r10
            r2.<init>(r4, r5, r6, r7)     // Catch:{ RejectedExecutionException -> 0x003b }
            r8.pushExecutorExecute(r0)     // Catch:{ RejectedExecutionException -> 0x003b }
        L_0x003b:
            return
        L_0x003c:
            r9 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x003c }
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.pushRequestLater(int, java.util.List):void");
    }

    /* access modifiers changed from: 0000 */
    public void pushHeadersLater(int i, List<Header> list, boolean z) {
        try {
            final int i2 = i;
            final List<Header> list2 = list;
            final boolean z2 = z;
            AnonymousClass4 r0 = new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.connectionName, Integer.valueOf(i)}) {
                public void execute() {
                    boolean onHeaders = Http2Connection.this.pushObserver.onHeaders(i2, list2, z2);
                    if (onHeaders) {
                        try {
                            Http2Connection.this.writer.rstStream(i2, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    if (onHeaders || z2) {
                        synchronized (Http2Connection.this) {
                            Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i2));
                        }
                    }
                }
            };
            pushExecutorExecute(r0);
        } catch (RejectedExecutionException unused) {
        }
    }

    /* access modifiers changed from: 0000 */
    public void pushDataLater(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException {
        final Buffer buffer = new Buffer();
        long j = (long) i2;
        bufferedSource.require(j);
        bufferedSource.read(buffer, j);
        if (buffer.size() == j) {
            final int i3 = i;
            final int i4 = i2;
            final boolean z2 = z;
            AnonymousClass5 r0 = new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.connectionName, Integer.valueOf(i)}) {
                public void execute() {
                    try {
                        boolean onData = Http2Connection.this.pushObserver.onData(i3, buffer, i4, z2);
                        if (onData) {
                            Http2Connection.this.writer.rstStream(i3, ErrorCode.CANCEL);
                        }
                        if (onData || z2) {
                            synchronized (Http2Connection.this) {
                                Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i3));
                            }
                        }
                    } catch (IOException unused) {
                    }
                }
            };
            pushExecutorExecute(r0);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(buffer.size());
        sb.append(" != ");
        sb.append(i2);
        throw new IOException(sb.toString());
    }

    /* access modifiers changed from: 0000 */
    public void pushResetLater(int i, ErrorCode errorCode) {
        final int i2 = i;
        final ErrorCode errorCode2 = errorCode;
        AnonymousClass6 r0 = new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.connectionName, Integer.valueOf(i)}) {
            public void execute() {
                Http2Connection.this.pushObserver.onReset(i2, errorCode2);
                synchronized (Http2Connection.this) {
                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i2));
                }
            }
        };
        pushExecutorExecute(r0);
    }

    private synchronized void pushExecutorExecute(NamedRunnable namedRunnable) {
        if (!isShutdown()) {
            this.pushExecutor.execute(namedRunnable);
        }
    }
}