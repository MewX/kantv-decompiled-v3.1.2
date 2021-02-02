package okio;

import com.avos.avospush.session.SessionControlPacket.SessionControlOp;
import java.io.IOException;
import javax.annotation.Nullable;

public final class Pipe {
    final Buffer buffer = new Buffer();
    /* access modifiers changed from: private */
    @Nullable
    public Sink foldedSink;
    final long maxBufferSize;
    private final Sink sink = new PipeSink();
    boolean sinkClosed;
    private final Source source = new PipeSource();
    boolean sourceClosed;

    final class PipeSink implements Sink {
        final PushableTimeout timeout = new PushableTimeout();

        PipeSink() {
        }

        public void write(Buffer buffer, long j) throws IOException {
            Sink sink;
            synchronized (Pipe.this.buffer) {
                if (!Pipe.this.sinkClosed) {
                    while (true) {
                        if (j <= 0) {
                            sink = null;
                            break;
                        } else if (Pipe.this.foldedSink != null) {
                            sink = Pipe.this.foldedSink;
                            break;
                        } else if (!Pipe.this.sourceClosed) {
                            long size = Pipe.this.maxBufferSize - Pipe.this.buffer.size();
                            if (size == 0) {
                                this.timeout.waitUntilNotified(Pipe.this.buffer);
                            } else {
                                long min = Math.min(size, j);
                                Pipe.this.buffer.write(buffer, min);
                                j -= min;
                                Pipe.this.buffer.notifyAll();
                            }
                        } else {
                            throw new IOException("source is closed");
                        }
                    }
                } else {
                    throw new IllegalStateException(SessionControlOp.CLOSED);
                }
            }
            if (sink != null) {
                this.timeout.push(sink.timeout());
                try {
                    sink.write(buffer, j);
                } finally {
                    this.timeout.pop();
                }
            }
        }

        public void flush() throws IOException {
            Sink sink;
            synchronized (Pipe.this.buffer) {
                if (Pipe.this.sinkClosed) {
                    throw new IllegalStateException(SessionControlOp.CLOSED);
                } else if (Pipe.this.foldedSink != null) {
                    sink = Pipe.this.foldedSink;
                } else {
                    if (Pipe.this.sourceClosed) {
                        if (Pipe.this.buffer.size() > 0) {
                            throw new IOException("source is closed");
                        }
                    }
                    sink = null;
                }
            }
            if (sink != null) {
                this.timeout.push(sink.timeout());
                try {
                    sink.flush();
                } finally {
                    this.timeout.pop();
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0047, code lost:
            if (r1 == null) goto L_0x0062;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0049, code lost:
            r6.timeout.push(r1.timeout());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
            r1.close();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x005b, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x005c, code lost:
            r6.timeout.pop();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x0061, code lost:
            throw r0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0062, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void close() throws java.io.IOException {
            /*
                r6 = this;
                okio.Pipe r0 = okio.Pipe.this
                okio.Buffer r0 = r0.buffer
                monitor-enter(r0)
                okio.Pipe r1 = okio.Pipe.this     // Catch:{ all -> 0x0063 }
                boolean r1 = r1.sinkClosed     // Catch:{ all -> 0x0063 }
                if (r1 == 0) goto L_0x000d
                monitor-exit(r0)     // Catch:{ all -> 0x0063 }
                return
            L_0x000d:
                okio.Pipe r1 = okio.Pipe.this     // Catch:{ all -> 0x0063 }
                okio.Sink r1 = r1.foldedSink     // Catch:{ all -> 0x0063 }
                if (r1 == 0) goto L_0x001c
                okio.Pipe r1 = okio.Pipe.this     // Catch:{ all -> 0x0063 }
                okio.Sink r1 = r1.foldedSink     // Catch:{ all -> 0x0063 }
                goto L_0x0046
            L_0x001c:
                okio.Pipe r1 = okio.Pipe.this     // Catch:{ all -> 0x0063 }
                boolean r1 = r1.sourceClosed     // Catch:{ all -> 0x0063 }
                if (r1 == 0) goto L_0x0039
                okio.Pipe r1 = okio.Pipe.this     // Catch:{ all -> 0x0063 }
                okio.Buffer r1 = r1.buffer     // Catch:{ all -> 0x0063 }
                long r1 = r1.size()     // Catch:{ all -> 0x0063 }
                r3 = 0
                int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r5 > 0) goto L_0x0031
                goto L_0x0039
            L_0x0031:
                java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x0063 }
                java.lang.String r2 = "source is closed"
                r1.<init>(r2)     // Catch:{ all -> 0x0063 }
                throw r1     // Catch:{ all -> 0x0063 }
            L_0x0039:
                okio.Pipe r1 = okio.Pipe.this     // Catch:{ all -> 0x0063 }
                r2 = 1
                r1.sinkClosed = r2     // Catch:{ all -> 0x0063 }
                okio.Pipe r1 = okio.Pipe.this     // Catch:{ all -> 0x0063 }
                okio.Buffer r1 = r1.buffer     // Catch:{ all -> 0x0063 }
                r1.notifyAll()     // Catch:{ all -> 0x0063 }
                r1 = 0
            L_0x0046:
                monitor-exit(r0)     // Catch:{ all -> 0x0063 }
                if (r1 == 0) goto L_0x0062
                okio.PushableTimeout r0 = r6.timeout
                okio.Timeout r2 = r1.timeout()
                r0.push(r2)
                r1.close()     // Catch:{ all -> 0x005b }
                okio.PushableTimeout r0 = r6.timeout
                r0.pop()
                goto L_0x0062
            L_0x005b:
                r0 = move-exception
                okio.PushableTimeout r1 = r6.timeout
                r1.pop()
                throw r0
            L_0x0062:
                return
            L_0x0063:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x0063 }
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Pipe.PipeSink.close():void");
        }

        public Timeout timeout() {
            return this.timeout;
        }
    }

    final class PipeSource implements Source {
        final Timeout timeout = new Timeout();

        PipeSource() {
        }

        public long read(Buffer buffer, long j) throws IOException {
            synchronized (Pipe.this.buffer) {
                if (!Pipe.this.sourceClosed) {
                    while (Pipe.this.buffer.size() == 0) {
                        if (Pipe.this.sinkClosed) {
                            return -1;
                        }
                        this.timeout.waitUntilNotified(Pipe.this.buffer);
                    }
                    long read = Pipe.this.buffer.read(buffer, j);
                    Pipe.this.buffer.notifyAll();
                    return read;
                }
                throw new IllegalStateException(SessionControlOp.CLOSED);
            }
        }

        public void close() throws IOException {
            synchronized (Pipe.this.buffer) {
                Pipe.this.sourceClosed = true;
                Pipe.this.buffer.notifyAll();
            }
        }

        public Timeout timeout() {
            return this.timeout;
        }
    }

    public Pipe(long j) {
        if (j >= 1) {
            this.maxBufferSize = j;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("maxBufferSize < 1: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    public final Source source() {
        return this.source;
    }

    public final Sink sink() {
        return this.sink;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0036, code lost:
        monitor-enter(r6.buffer);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
        r6.sourceClosed = true;
        r6.buffer.notifyAll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x003f, code lost:
        throw r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void fold(okio.Sink r7) throws java.io.IOException {
        /*
            r6 = this;
        L_0x0000:
            okio.Buffer r0 = r6.buffer
            monitor-enter(r0)
            okio.Sink r1 = r6.foldedSink     // Catch:{ all -> 0x004b }
            if (r1 != 0) goto L_0x0043
            okio.Buffer r1 = r6.buffer     // Catch:{ all -> 0x004b }
            boolean r1 = r1.exhausted()     // Catch:{ all -> 0x004b }
            r2 = 1
            if (r1 == 0) goto L_0x0016
            r6.sourceClosed = r2     // Catch:{ all -> 0x004b }
            r6.foldedSink = r7     // Catch:{ all -> 0x004b }
            monitor-exit(r0)     // Catch:{ all -> 0x004b }
            return
        L_0x0016:
            okio.Buffer r1 = new okio.Buffer     // Catch:{ all -> 0x004b }
            r1.<init>()     // Catch:{ all -> 0x004b }
            okio.Buffer r3 = r6.buffer     // Catch:{ all -> 0x004b }
            okio.Buffer r4 = r6.buffer     // Catch:{ all -> 0x004b }
            long r4 = r4.size     // Catch:{ all -> 0x004b }
            r1.write(r3, r4)     // Catch:{ all -> 0x004b }
            okio.Buffer r3 = r6.buffer     // Catch:{ all -> 0x004b }
            r3.notifyAll()     // Catch:{ all -> 0x004b }
            monitor-exit(r0)     // Catch:{ all -> 0x004b }
            long r3 = r1.size     // Catch:{ all -> 0x0033 }
            r7.write(r1, r3)     // Catch:{ all -> 0x0033 }
            r7.flush()     // Catch:{ all -> 0x0033 }
            goto L_0x0000
        L_0x0033:
            r7 = move-exception
            okio.Buffer r1 = r6.buffer
            monitor-enter(r1)
            r6.sourceClosed = r2     // Catch:{ all -> 0x0040 }
            okio.Buffer r0 = r6.buffer     // Catch:{ all -> 0x0040 }
            r0.notifyAll()     // Catch:{ all -> 0x0040 }
            monitor-exit(r1)     // Catch:{ all -> 0x0040 }
            throw r7
        L_0x0040:
            r7 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0040 }
            throw r7
        L_0x0043:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch:{ all -> 0x004b }
            java.lang.String r1 = "sink already folded"
            r7.<init>(r1)     // Catch:{ all -> 0x004b }
            throw r7     // Catch:{ all -> 0x004b }
        L_0x004b:
            r7 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x004b }
            goto L_0x004f
        L_0x004e:
            throw r7
        L_0x004f:
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Pipe.fold(okio.Sink):void");
    }
}
