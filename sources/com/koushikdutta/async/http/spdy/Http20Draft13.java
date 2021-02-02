package com.koushikdutta.async.http.spdy;

import androidx.core.view.MotionEventCompat;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.avos.avospush.session.SessionControlPacket.SessionControlOp;
import com.koushikdutta.async.BufferedDataSink;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataEmitterReader;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.spdy.FrameReader.Handler;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.http.HttpTokens;

final class Http20Draft13 implements Variant {
    /* access modifiers changed from: private */
    public static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    static final byte FLAG_ACK = 1;
    static final byte FLAG_COMPRESSED = 32;
    static final byte FLAG_END_HEADERS = 4;
    static final byte FLAG_END_PUSH_PROMISE = 4;
    static final byte FLAG_END_SEGMENT = 2;
    static final byte FLAG_END_STREAM = 1;
    static final byte FLAG_NONE = 0;
    static final byte FLAG_PADDED = 8;
    static final byte FLAG_PRIORITY = 32;
    static final int MAX_FRAME_SIZE = 16383;
    static final byte TYPE_CONTINUATION = 9;
    static final byte TYPE_DATA = 0;
    static final byte TYPE_GOAWAY = 7;
    static final byte TYPE_HEADERS = 1;
    static final byte TYPE_PING = 6;
    static final byte TYPE_PRIORITY = 2;
    static final byte TYPE_PUSH_PROMISE = 5;
    static final byte TYPE_RST_STREAM = 3;
    static final byte TYPE_SETTINGS = 4;
    static final byte TYPE_WINDOW_UPDATE = 8;
    /* access modifiers changed from: private */
    public static final Logger logger = Logger.getLogger(Http20Draft13.class.getName());

    static final class FrameLogger {
        private static final String[] BINARY = new String[256];
        private static final String[] FLAGS = new String[64];
        private static final String[] TYPES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        FrameLogger() {
        }

        static String formatHeader(boolean z, int i, int i2, byte b, byte b2) {
            String[] strArr = TYPES;
            String format = b < strArr.length ? strArr[b] : String.format(Locale.ENGLISH, "0x%02x", new Object[]{Byte.valueOf(b)});
            String formatFlags = formatFlags(b, b2);
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[5];
            objArr[0] = z ? "<<" : ">>";
            objArr[1] = Integer.valueOf(i);
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = format;
            objArr[4] = formatFlags;
            return String.format(locale, "%s 0x%08x %5d %-13s %s", objArr);
        }

        static String formatFlags(byte b, byte b2) {
            if (b2 == 0) {
                return "";
            }
            if (!(b == 2 || b == 3)) {
                if (b == 4 || b == 6) {
                    return b2 == 1 ? "ACK" : BINARY[b2];
                } else if (!(b == 7 || b == 8)) {
                    String[] strArr = FLAGS;
                    String str = b2 < strArr.length ? strArr[b2] : BINARY[b2];
                    if (b == 5 && (b2 & 4) != 0) {
                        return str.replace("HEADERS", "PUSH_PROMISE");
                    }
                    if (b != 0 || (b2 & HttpTokens.SPACE) == 0) {
                        return str;
                    }
                    return str.replace("PRIORITY", "COMPRESSED");
                }
            }
            return BINARY[b2];
        }

        static {
            String str;
            int[] iArr;
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = BINARY;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = String.format(Locale.ENGLISH, "%8s", new Object[]{Integer.toBinaryString(i2)}).replace(' ', '0');
                i2++;
            }
            String[] strArr2 = FLAGS;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            strArr2[2] = "END_SEGMENT";
            strArr2[3] = "END_STREAM|END_SEGMENT";
            int[] iArr2 = {1, 2, 3};
            strArr2[8] = "PADDED";
            int length = iArr2.length;
            int i3 = 0;
            while (true) {
                str = "|PADDED";
                if (i3 >= length) {
                    break;
                }
                int i4 = iArr2[i3];
                String[] strArr3 = FLAGS;
                int i5 = i4 | 8;
                StringBuilder sb = new StringBuilder();
                sb.append(FLAGS[i4]);
                sb.append(str);
                strArr3[i5] = sb.toString();
                i3++;
            }
            String[] strArr4 = FLAGS;
            strArr4[4] = "END_HEADERS";
            strArr4[32] = "PRIORITY";
            strArr4[36] = "END_HEADERS|PRIORITY";
            for (int i6 : new int[]{4, 32, 36}) {
                for (int i7 : iArr2) {
                    String[] strArr5 = FLAGS;
                    int i8 = i7 | i6;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(FLAGS[i7]);
                    sb2.append('|');
                    sb2.append(FLAGS[i6]);
                    strArr5[i8] = sb2.toString();
                    String[] strArr6 = FLAGS;
                    int i9 = i8 | 8;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(FLAGS[i7]);
                    sb3.append('|');
                    sb3.append(FLAGS[i6]);
                    sb3.append(str);
                    strArr6[i9] = sb3.toString();
                }
            }
            while (true) {
                String[] strArr7 = FLAGS;
                if (i < strArr7.length) {
                    if (strArr7[i] == null) {
                        strArr7[i] = BINARY[i];
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    static final class Reader implements FrameReader {
        private final boolean client;
        int continuingStreamId;
        private final DataEmitter emitter;
        byte flags;
        /* access modifiers changed from: private */
        public final Handler handler;
        final Reader hpackReader;
        short length;
        private final DataCallback onFrame = new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                byteBufferList.order(ByteOrder.BIG_ENDIAN);
                Reader.this.w1 = byteBufferList.getInt();
                Reader.this.w2 = byteBufferList.getInt();
                Reader reader = Reader.this;
                reader.length = (short) ((reader.w1 & 1073676288) >> 16);
                Reader reader2 = Reader.this;
                reader2.type = (byte) ((reader2.w1 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                Reader reader3 = Reader.this;
                reader3.flags = (byte) (reader3.w1 & 255);
                Reader reader4 = Reader.this;
                reader4.streamId = reader4.w2 & Integer.MAX_VALUE;
                if (Http20Draft13.logger.isLoggable(Level.FINE)) {
                    Http20Draft13.logger.fine(FrameLogger.formatHeader(true, Reader.this.streamId, Reader.this.length, Reader.this.type, Reader.this.flags));
                }
                Reader.this.reader.read(Reader.this.length, Reader.this.onFullFrame);
            }
        };
        /* access modifiers changed from: private */
        public final DataCallback onFullFrame = new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                try {
                    switch (Reader.this.type) {
                        case 0:
                            Reader.this.readData(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 1:
                            Reader.this.readHeaders(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 2:
                            Reader.this.readPriority(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 3:
                            Reader.this.readRstStream(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 4:
                            Reader.this.readSettings(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 5:
                            Reader.this.readPushPromise(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 6:
                            Reader.this.readPing(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 7:
                            Reader.this.readGoAway(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 8:
                            Reader.this.readWindowUpdate(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        case 9:
                            Reader.this.readContinuation(byteBufferList, Reader.this.length, Reader.this.flags, Reader.this.streamId);
                            break;
                        default:
                            byteBufferList.recycle();
                            break;
                    }
                    Reader.this.parseFrameHeader();
                } catch (IOException e) {
                    Reader.this.handler.error(e);
                }
            }
        };
        byte pendingHeaderType;
        int promisedStreamId;
        /* access modifiers changed from: private */
        public final DataEmitterReader reader;
        int streamId;
        byte type;
        int w1;
        int w2;

        Reader(DataEmitter dataEmitter, Handler handler2, int i, boolean z) {
            this.emitter = dataEmitter;
            this.client = z;
            this.hpackReader = new Reader(i);
            this.handler = handler2;
            this.reader = new DataEmitterReader();
            parseFrameHeader();
        }

        /* access modifiers changed from: private */
        public void parseFrameHeader() {
            this.emitter.setDataCallback(this.reader);
            this.reader.read(8, this.onFrame);
        }

        /* access modifiers changed from: private */
        public void readHeaders(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (i != 0) {
                short s2 = (b & 8) != 0 ? (short) (byteBufferList.get() & Draft_75.END_OF_FRAME) : 0;
                if ((b & HttpTokens.SPACE) != 0) {
                    readPriority(byteBufferList, i);
                    s = (short) (s - 5);
                }
                short access$1600 = Http20Draft13.lengthWithoutPadding(s, b, s2);
                this.pendingHeaderType = this.type;
                readHeaderBlock(byteBufferList, access$1600, s2, b, i);
                return;
            }
            throw Http20Draft13.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }

        /* access modifiers changed from: private */
        public void readContinuation(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (i == this.continuingStreamId) {
                readHeaderBlock(byteBufferList, s, 0, b, i);
                return;
            }
            throw new IOException("continuation stream id mismatch");
        }

        private void readHeaderBlock(ByteBufferList byteBufferList, short s, short s2, byte b, int i) throws IOException {
            byteBufferList.skip(s2);
            this.hpackReader.refill(byteBufferList);
            this.hpackReader.readHeaders();
            this.hpackReader.emitReferenceSet();
            if ((b & 4) != 0) {
                byte b2 = this.pendingHeaderType;
                if (b2 == 1) {
                    this.handler.headers(false, (b & 1) != 0, i, -1, this.hpackReader.getAndReset(), HeadersMode.HTTP_20_HEADERS);
                } else if (b2 == 5) {
                    this.handler.pushPromise(i, this.promisedStreamId, this.hpackReader.getAndReset());
                } else {
                    throw new AssertionError("unknown header type");
                }
            } else {
                this.continuingStreamId = i;
            }
        }

        /* access modifiers changed from: private */
        public void readData(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            boolean z = true;
            short s2 = 0;
            boolean z2 = (b & 1) != 0;
            if ((b & HttpTokens.SPACE) == 0) {
                z = false;
            }
            if (!z) {
                if ((b & 8) != 0) {
                    s2 = (short) (byteBufferList.get() & Draft_75.END_OF_FRAME);
                }
                Http20Draft13.lengthWithoutPadding(s, b, s2);
                this.handler.data(z2, i, byteBufferList);
                byteBufferList.skip(s2);
                return;
            }
            throw Http20Draft13.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }

        /* access modifiers changed from: private */
        public void readPriority(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (s != 5) {
                throw Http20Draft13.ioException("TYPE_PRIORITY length: %d != 5", Short.valueOf(s));
            } else if (i != 0) {
                readPriority(byteBufferList, i);
            } else {
                throw Http20Draft13.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
        }

        private void readPriority(ByteBufferList byteBufferList, int i) throws IOException {
            int i2 = byteBufferList.getInt();
            this.handler.priority(i, i2 & Integer.MAX_VALUE, (byteBufferList.get() & Draft_75.END_OF_FRAME) + 1, (Integer.MIN_VALUE & i2) != 0);
        }

        /* access modifiers changed from: private */
        public void readRstStream(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (s != 4) {
                throw Http20Draft13.ioException("TYPE_RST_STREAM length: %d != 4", Short.valueOf(s));
            } else if (i != 0) {
                int i2 = byteBufferList.getInt();
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(i2);
                if (fromHttp2 != null) {
                    this.handler.rstStream(i, fromHttp2);
                } else {
                    throw Http20Draft13.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i2));
                }
            } else {
                throw Http20Draft13.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
        }

        /* access modifiers changed from: private */
        public void readSettings(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (i != 0) {
                throw Http20Draft13.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
            } else if ((b & 1) != 0) {
                if (s == 0) {
                    this.handler.ackSettings();
                } else {
                    throw Http20Draft13.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
            } else if (s % 6 == 0) {
                Settings settings = new Settings();
                for (int i2 = 0; i2 < s; i2 += 6) {
                    short s2 = byteBufferList.getShort();
                    int i3 = byteBufferList.getInt();
                    if (s2 != 1) {
                        if (s2 != 2) {
                            if (s2 == 3) {
                                s2 = 4;
                            } else if (s2 == 4) {
                                s2 = 7;
                                if (i3 < 0) {
                                    throw Http20Draft13.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                }
                            } else if (s2 != 5) {
                                throw Http20Draft13.ioException("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(s2));
                            }
                        } else if (!(i3 == 0 || i3 == 1)) {
                            throw Http20Draft13.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        }
                    }
                    settings.set(s2, 0, i3);
                }
                this.handler.settings(false, settings);
                if (settings.getHeaderTableSize() >= 0) {
                    this.hpackReader.maxHeaderTableByteCountSetting(settings.getHeaderTableSize());
                }
            } else {
                throw Http20Draft13.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Short.valueOf(s));
            }
        }

        /* access modifiers changed from: private */
        public void readPushPromise(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (i != 0) {
                short s2 = (b & 8) != 0 ? (short) (byteBufferList.get() & Draft_75.END_OF_FRAME) : 0;
                this.promisedStreamId = byteBufferList.getInt() & Integer.MAX_VALUE;
                short access$1600 = Http20Draft13.lengthWithoutPadding((short) (s - 4), b, s2);
                this.pendingHeaderType = Http20Draft13.TYPE_PUSH_PROMISE;
                readHeaderBlock(byteBufferList, access$1600, s2, b, i);
                return;
            }
            throw Http20Draft13.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }

        /* access modifiers changed from: private */
        public void readPing(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            boolean z = false;
            if (s != 8) {
                throw Http20Draft13.ioException("TYPE_PING length != 8: %s", Short.valueOf(s));
            } else if (i == 0) {
                int i2 = byteBufferList.getInt();
                int i3 = byteBufferList.getInt();
                if ((b & 1) != 0) {
                    z = true;
                }
                this.handler.ping(z, i2, i3);
            } else {
                throw Http20Draft13.ioException("TYPE_PING streamId != 0", new Object[0]);
            }
        }

        /* access modifiers changed from: private */
        public void readGoAway(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (s < 8) {
                throw Http20Draft13.ioException("TYPE_GOAWAY length < 8: %s", Short.valueOf(s));
            } else if (i == 0) {
                int i2 = byteBufferList.getInt();
                int i3 = byteBufferList.getInt();
                int i4 = s - 8;
                ErrorCode fromHttp2 = ErrorCode.fromHttp2(i3);
                if (fromHttp2 != null) {
                    ByteString byteString = ByteString.EMPTY;
                    if (i4 > 0) {
                        byteString = ByteString.of(byteBufferList.getBytes(i4));
                    }
                    this.handler.goAway(i2, fromHttp2, byteString);
                    return;
                }
                throw Http20Draft13.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i3));
            } else {
                throw Http20Draft13.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
        }

        /* access modifiers changed from: private */
        public void readWindowUpdate(ByteBufferList byteBufferList, short s, byte b, int i) throws IOException {
            if (s == 4) {
                long j = ((long) byteBufferList.getInt()) & 2147483647L;
                if (j != 0) {
                    this.handler.windowUpdate(i, j);
                } else {
                    throw Http20Draft13.ioException("windowSizeIncrement was 0", Long.valueOf(j));
                }
            } else {
                throw Http20Draft13.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Short.valueOf(s));
            }
        }
    }

    static final class Writer implements FrameWriter {
        private final boolean client;
        private boolean closed;
        private final ByteBufferList frameHeader = new ByteBufferList();
        private final Writer hpackWriter;
        private final BufferedDataSink sink;

        Writer(BufferedDataSink bufferedDataSink, boolean z) {
            this.sink = bufferedDataSink;
            this.client = z;
            this.hpackWriter = new Writer();
        }

        public synchronized void ackSettings() throws IOException {
            if (!this.closed) {
                frameHeader(0, 0, 4, 1);
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void connectionPreface() throws IOException {
            if (this.closed) {
                throw new IOException(SessionControlOp.CLOSED);
            } else if (this.client) {
                if (Http20Draft13.logger.isLoggable(Level.FINE)) {
                    Http20Draft13.logger.fine(String.format(Locale.ENGLISH, ">> CONNECTION %s", new Object[]{Http20Draft13.CONNECTION_PREFACE.hex()}));
                }
                this.sink.write(new ByteBufferList(Http20Draft13.CONNECTION_PREFACE.toByteArray()));
            }
        }

        public synchronized void synStream(boolean z, boolean z2, int i, int i2, List<Header> list) throws IOException {
            if (!z2) {
                try {
                    if (!this.closed) {
                        headers(z, i, list);
                    } else {
                        throw new IOException(SessionControlOp.CLOSED);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }

        public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
            if (!this.closed) {
                headers(z, i, list);
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void headers(int i, List<Header> list) throws IOException {
            if (!this.closed) {
                headers(false, i, list);
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void pushPromise(int i, int i2, List<Header> list) throws IOException {
            if (!this.closed) {
                ByteBufferList writeHeaders = this.hpackWriter.writeHeaders(list);
                long remaining = (long) writeHeaders.remaining();
                int min = (int) Math.min(16379, remaining);
                long j = (long) min;
                frameHeader(i, min + 4, Http20Draft13.TYPE_PUSH_PROMISE, remaining == j ? (byte) 4 : 0);
                ByteBuffer order = ByteBufferList.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                order.putInt(i2 & Integer.MAX_VALUE);
                order.flip();
                this.frameHeader.add(order);
                writeHeaders.get(this.frameHeader, min);
                this.sink.write(this.frameHeader);
                if (remaining > j) {
                    writeContinuationFrames(writeHeaders, i);
                }
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        /* access modifiers changed from: 0000 */
        public void headers(boolean z, int i, List<Header> list) throws IOException {
            if (!this.closed) {
                ByteBufferList writeHeaders = this.hpackWriter.writeHeaders(list);
                long remaining = (long) writeHeaders.remaining();
                int min = (int) Math.min(16383, remaining);
                long j = (long) min;
                byte b = remaining == j ? (byte) 4 : 0;
                if (z) {
                    b = (byte) (b | 1);
                }
                frameHeader(i, min, 1, b);
                writeHeaders.get(this.frameHeader, min);
                this.sink.write(this.frameHeader);
                if (remaining > j) {
                    writeContinuationFrames(writeHeaders, i);
                    return;
                }
                return;
            }
            throw new IOException(SessionControlOp.CLOSED);
        }

        private void writeContinuationFrames(ByteBufferList byteBufferList, int i) throws IOException {
            while (byteBufferList.hasRemaining()) {
                int min = Math.min(Http20Draft13.MAX_FRAME_SIZE, byteBufferList.remaining());
                frameHeader(i, min, 9, byteBufferList.remaining() - min == 0 ? (byte) 4 : 0);
                byteBufferList.get(this.frameHeader, min);
                this.sink.write(this.frameHeader);
            }
        }

        public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
            if (this.closed) {
                throw new IOException(SessionControlOp.CLOSED);
            } else if (errorCode.spdyRstCode != -1) {
                frameHeader(i, 4, Http20Draft13.TYPE_RST_STREAM, 0);
                ByteBuffer order = ByteBufferList.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                order.putInt(errorCode.httpCode);
                order.flip();
                this.sink.write(this.frameHeader.add(order));
            } else {
                throw new IllegalArgumentException();
            }
        }

        public synchronized void data(boolean z, int i, ByteBufferList byteBufferList) throws IOException {
            if (!this.closed) {
                byte b = 0;
                if (z) {
                    b = (byte) 1;
                }
                dataFrame(i, b, byteBufferList);
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        /* access modifiers changed from: 0000 */
        public void dataFrame(int i, byte b, ByteBufferList byteBufferList) throws IOException {
            frameHeader(i, byteBufferList.remaining(), 0, b);
            this.sink.write(byteBufferList);
        }

        public synchronized void settings(Settings settings) throws IOException {
            if (!this.closed) {
                int i = 0;
                frameHeader(0, settings.size() * 6, 4, 0);
                ByteBuffer order = ByteBufferList.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                while (i < 10) {
                    if (settings.isSet(i)) {
                        int i2 = i == 4 ? 3 : i == 7 ? 4 : i;
                        order.putShort((short) i2);
                        order.putInt(settings.get(i));
                    }
                    i++;
                }
                order.flip();
                this.sink.write(this.frameHeader.add(order));
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            if (!this.closed) {
                frameHeader(0, 8, Http20Draft13.TYPE_PING, z ? (byte) 1 : 0);
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(i);
                order.putInt(i2);
                order.flip();
                this.sink.write(this.frameHeader.add(order));
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (this.closed) {
                throw new IOException(SessionControlOp.CLOSED);
            } else if (errorCode.httpCode != -1) {
                frameHeader(0, bArr.length + 8, Http20Draft13.TYPE_GOAWAY, 0);
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(i);
                order.putInt(errorCode.httpCode);
                order.put(bArr);
                order.flip();
                this.sink.write(this.frameHeader.add(order));
            } else {
                throw Http20Draft13.illegalArgument("errorCode.httpCode == -1", new Object[0]);
            }
        }

        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.closed) {
                throw new IOException(SessionControlOp.CLOSED);
            } else if (j == 0 || j > 2147483647L) {
                throw Http20Draft13.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            } else {
                frameHeader(i, 4, 8, 0);
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt((int) j);
                order.flip();
                this.sink.write(this.frameHeader.add(order));
            }
        }

        public synchronized void close() throws IOException {
            this.closed = true;
        }

        /* access modifiers changed from: 0000 */
        public void frameHeader(int i, int i2, byte b, byte b2) throws IOException {
            if (Http20Draft13.logger.isLoggable(Level.FINE)) {
                Http20Draft13.logger.fine(FrameLogger.formatHeader(false, i, i2, b, b2));
            }
            if (i2 > Http20Draft13.MAX_FRAME_SIZE) {
                throw Http20Draft13.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(Http20Draft13.MAX_FRAME_SIZE), Integer.valueOf(i2));
            } else if ((Integer.MIN_VALUE & i) == 0) {
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(((i2 & Http20Draft13.MAX_FRAME_SIZE) << 16) | ((b & Draft_75.END_OF_FRAME) << 8) | (b2 & Draft_75.END_OF_FRAME));
                order.putInt(i & Integer.MAX_VALUE);
                order.flip();
                this.sink.write(this.frameHeader.add(order));
            } else {
                throw Http20Draft13.illegalArgument("reserved bit set: %s", Integer.valueOf(i));
            }
        }
    }

    public int maxFrameSize() {
        return MAX_FRAME_SIZE;
    }

    Http20Draft13() {
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    public FrameReader newReader(DataEmitter dataEmitter, Handler handler, boolean z) {
        return new Reader(dataEmitter, handler, 4096, z);
    }

    public FrameWriter newWriter(BufferedDataSink bufferedDataSink, boolean z) {
        return new Writer(bufferedDataSink, z);
    }

    /* access modifiers changed from: private */
    public static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, str, objArr));
    }

    /* access modifiers changed from: private */
    public static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(Locale.ENGLISH, str, objArr));
    }

    /* access modifiers changed from: private */
    public static short lengthWithoutPadding(short s, byte b, short s2) throws IOException {
        if ((b & 8) != 0) {
            s = (short) (s - 1);
        }
        if (s2 <= s) {
            return (short) (s - s2);
        }
        throw ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s2), Short.valueOf(s));
    }
}
