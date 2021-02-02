package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.util.Allocator;
import com.koushikdutta.async.util.StreamUtility;
import com.koushikdutta.async.wrapper.AsyncSocketWrapper;
import com.koushikdutta.async.wrapper.DataEmitterWrapper;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

public class Util {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static boolean SUPRESS_DEBUG_EXCEPTIONS = false;

    public static void emitAllData(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        String str;
        DataCallback dataCallback = null;
        while (true) {
            str = "handler: ";
            if (dataEmitter.isPaused()) {
                break;
            }
            dataCallback = dataEmitter.getDataCallback();
            if (dataCallback == null) {
                break;
            }
            int remaining = byteBufferList.remaining();
            if (remaining <= 0) {
                break;
            }
            dataCallback.onDataAvailable(dataEmitter, byteBufferList);
            if (remaining == byteBufferList.remaining() && dataCallback == dataEmitter.getDataCallback() && !dataEmitter.isPaused()) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(dataCallback);
                printStream.println(sb.toString());
                byteBufferList.recycle();
                if (!SUPRESS_DEBUG_EXCEPTIONS) {
                    throw new RuntimeException("mDataHandler failed to consume data, yet remains the mDataHandler.");
                }
                return;
            }
        }
        if (byteBufferList.remaining() != 0 && !dataEmitter.isPaused()) {
            PrintStream printStream2 = System.out;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(dataCallback);
            printStream2.println(sb2.toString());
            PrintStream printStream3 = System.out;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("emitter: ");
            sb3.append(dataEmitter);
            printStream3.println(sb3.toString());
            byteBufferList.recycle();
            if (!SUPRESS_DEBUG_EXCEPTIONS) {
                throw new RuntimeException("Not all data was consumed by Util.emitAllData");
            }
        }
    }

    public static void pump(InputStream inputStream, DataSink dataSink, CompletedCallback completedCallback) {
        pump(inputStream, 2147483647L, dataSink, completedCallback);
    }

    public static void pump(InputStream inputStream, long j, DataSink dataSink, final CompletedCallback completedCallback) {
        AnonymousClass1 r6 = new CompletedCallback() {
            boolean reported;

            public void onCompleted(Exception exc) {
                if (!this.reported) {
                    this.reported = true;
                    completedCallback.onCompleted(exc);
                }
            }
        };
        final DataSink dataSink2 = dataSink;
        final InputStream inputStream2 = inputStream;
        final long j2 = j;
        final AnonymousClass1 r5 = r6;
        AnonymousClass2 r0 = new WritableCallback() {
            Allocator allocator = new Allocator();
            ByteBufferList pending = new ByteBufferList();
            int totalRead = 0;

            private void cleanup() {
                dataSink2.setClosedCallback(null);
                dataSink2.setWriteableCallback(null);
                this.pending.recycle();
                StreamUtility.closeQuietly(inputStream2);
            }

            public void onWriteable() {
                do {
                    try {
                        if (!this.pending.hasRemaining()) {
                            ByteBuffer allocate = this.allocator.allocate();
                            int read = inputStream2.read(allocate.array(), 0, (int) Math.min(j2 - ((long) this.totalRead), (long) allocate.capacity()));
                            if (read != -1) {
                                if (((long) this.totalRead) != j2) {
                                    this.allocator.track((long) read);
                                    this.totalRead += read;
                                    allocate.position(0);
                                    allocate.limit(read);
                                    this.pending.add(allocate);
                                }
                            }
                            cleanup();
                            r5.onCompleted(null);
                            return;
                        }
                        dataSink2.write(this.pending);
                    } catch (Exception e) {
                        cleanup();
                        r5.onCompleted(e);
                    }
                } while (!this.pending.hasRemaining());
            }
        };
        dataSink.setWriteableCallback(r0);
        dataSink.setClosedCallback(r6);
        r0.onWriteable();
    }

    public static void pump(final DataEmitter dataEmitter, final DataSink dataSink, final CompletedCallback completedCallback) {
        dataEmitter.setDataCallback(new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                dataSink.write(byteBufferList);
                if (byteBufferList.remaining() > 0) {
                    dataEmitter.pause();
                }
            }
        });
        dataSink.setWriteableCallback(new WritableCallback() {
            public void onWriteable() {
                dataEmitter.resume();
            }
        });
        final AnonymousClass5 r0 = new CompletedCallback() {
            boolean reported;

            public void onCompleted(Exception exc) {
                if (!this.reported) {
                    this.reported = true;
                    dataEmitter.setDataCallback(null);
                    dataEmitter.setEndCallback(null);
                    dataSink.setClosedCallback(null);
                    dataSink.setWriteableCallback(null);
                    completedCallback.onCompleted(exc);
                }
            }
        };
        dataEmitter.setEndCallback(r0);
        dataSink.setClosedCallback(new CompletedCallback() {
            public void onCompleted(Exception exc) {
                if (exc == null) {
                    exc = new IOException("sink was closed before emitter ended");
                }
                r0.onCompleted(exc);
            }
        });
    }

    public static void stream(AsyncSocket asyncSocket, AsyncSocket asyncSocket2, CompletedCallback completedCallback) {
        pump((DataEmitter) asyncSocket, (DataSink) asyncSocket2, completedCallback);
        pump((DataEmitter) asyncSocket2, (DataSink) asyncSocket, completedCallback);
    }

    public static void pump(File file, DataSink dataSink, final CompletedCallback completedCallback) {
        if (file == null || dataSink == null) {
            completedCallback.onCompleted(null);
            return;
        }
        try {
            final FileInputStream fileInputStream = new FileInputStream(file);
            pump((InputStream) fileInputStream, dataSink, (CompletedCallback) new CompletedCallback() {
                public void onCompleted(Exception exc) {
                    try {
                        fileInputStream.close();
                        completedCallback.onCompleted(exc);
                    } catch (IOException e) {
                        completedCallback.onCompleted(e);
                    }
                }
            });
        } catch (Exception e) {
            completedCallback.onCompleted(e);
        }
    }

    public static void writeAll(final DataSink dataSink, final ByteBufferList byteBufferList, final CompletedCallback completedCallback) {
        AnonymousClass8 r0 = new WritableCallback() {
            public void onWriteable() {
                dataSink.write(byteBufferList);
                if (byteBufferList.remaining() == 0 && completedCallback != null) {
                    dataSink.setWriteableCallback(null);
                    completedCallback.onCompleted(null);
                }
            }
        };
        dataSink.setWriteableCallback(r0);
        r0.onWriteable();
    }

    public static void writeAll(DataSink dataSink, byte[] bArr, CompletedCallback completedCallback) {
        ByteBuffer obtain = ByteBufferList.obtain(bArr.length);
        obtain.put(bArr);
        obtain.flip();
        ByteBufferList byteBufferList = new ByteBufferList();
        byteBufferList.add(obtain);
        writeAll(dataSink, byteBufferList, completedCallback);
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=com.koushikdutta.async.AsyncSocket, code=T, for r1v0, types: [T, java.lang.Object, com.koushikdutta.async.AsyncSocket] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T extends com.koushikdutta.async.AsyncSocket> T getWrappedSocket(T r1, java.lang.Class<T> r2) {
        /*
            boolean r0 = r2.isInstance(r1)
            if (r0 == 0) goto L_0x0007
            return r1
        L_0x0007:
            boolean r0 = r1 instanceof com.koushikdutta.async.wrapper.AsyncSocketWrapper
            if (r0 == 0) goto L_0x0018
            com.koushikdutta.async.wrapper.AsyncSocketWrapper r1 = (com.koushikdutta.async.wrapper.AsyncSocketWrapper) r1
            com.koushikdutta.async.AsyncSocket r1 = r1.getSocket()
            boolean r0 = r2.isInstance(r1)
            if (r0 == 0) goto L_0x0007
            return r1
        L_0x0018:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.Util.getWrappedSocket(com.koushikdutta.async.AsyncSocket, java.lang.Class):com.koushikdutta.async.AsyncSocket");
    }

    public static DataEmitter getWrappedDataEmitter(DataEmitter dataEmitter, Class cls) {
        if (cls.isInstance(dataEmitter)) {
            return dataEmitter;
        }
        while (dataEmitter instanceof DataEmitterWrapper) {
            dataEmitter = ((AsyncSocketWrapper) dataEmitter).getSocket();
            if (cls.isInstance(dataEmitter)) {
                return dataEmitter;
            }
        }
        return null;
    }

    public static void end(DataEmitter dataEmitter, Exception exc) {
        if (dataEmitter != null) {
            end(dataEmitter.getEndCallback(), exc);
        }
    }

    public static void end(CompletedCallback completedCallback, Exception exc) {
        if (completedCallback != null) {
            completedCallback.onCompleted(exc);
        }
    }

    public static void writable(DataSink dataSink) {
        if (dataSink != null) {
            writable(dataSink.getWriteableCallback());
        }
    }

    public static void writable(WritableCallback writableCallback) {
        if (writableCallback != null) {
            writableCallback.onWriteable();
        }
    }
}
