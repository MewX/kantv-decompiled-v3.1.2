package com.koushikdutta.async.http.spdy;

import android.os.Build.VERSION;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.avos.avospush.session.SessionControlPacket.SessionControlOp;
import com.koushikdutta.async.BufferedDataSink;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataEmitterReader;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.spdy.FrameReader.Handler;
import com.koushikdutta.async.util.Charsets;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Locale;
import java.util.zip.Deflater;

final class Spdy3 implements Variant {
    static final byte[] DICTIONARY;
    static final int FLAG_FIN = 1;
    static final int FLAG_UNIDIRECTIONAL = 2;
    static final int TYPE_DATA = 0;
    static final int TYPE_GOAWAY = 7;
    static final int TYPE_HEADERS = 8;
    static final int TYPE_PING = 6;
    static final int TYPE_RST_STREAM = 3;
    static final int TYPE_SETTINGS = 4;
    static final int TYPE_SYN_REPLY = 2;
    static final int TYPE_SYN_STREAM = 1;
    static final int TYPE_WINDOW_UPDATE = 9;
    static final int VERSION = 3;

    static final class Reader implements FrameReader {
        private final boolean client;
        private final DataEmitter emitter;
        /* access modifiers changed from: private */
        public final ByteBufferList emptyList = new ByteBufferList();
        int flags;
        /* access modifiers changed from: private */
        public final Handler handler;
        private final HeaderReader headerReader = new HeaderReader();
        boolean inFinished;
        int length;
        /* access modifiers changed from: private */
        public final DataCallback onDataFrame = new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                int min = Math.min(byteBufferList.remaining(), Reader.this.length);
                if (min < byteBufferList.remaining()) {
                    byteBufferList.get(Reader.this.partial, min);
                    byteBufferList = Reader.this.partial;
                }
                Reader.this.length -= min;
                Reader.this.handler.data(Reader.this.length == 0 && Reader.this.inFinished, Reader.this.streamId, byteBufferList);
                if (Reader.this.length == 0) {
                    Reader.this.parseFrameHeader();
                }
            }
        };
        private final DataCallback onFrame = new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                byteBufferList.order(ByteOrder.BIG_ENDIAN);
                Reader.this.w1 = byteBufferList.getInt();
                Reader.this.w2 = byteBufferList.getInt();
                boolean z = false;
                boolean z2 = (Reader.this.w1 & Integer.MIN_VALUE) != 0;
                Reader reader = Reader.this;
                reader.flags = (reader.w2 & ViewCompat.MEASURED_STATE_MASK) >>> 24;
                Reader reader2 = Reader.this;
                reader2.length = reader2.w2 & ViewCompat.MEASURED_SIZE_MASK;
                if (!z2) {
                    Reader reader3 = Reader.this;
                    reader3.streamId = reader3.w1 & Integer.MAX_VALUE;
                    Reader reader4 = Reader.this;
                    if ((reader4.flags & 1) != 0) {
                        z = true;
                    }
                    reader4.inFinished = z;
                    dataEmitter.setDataCallback(Reader.this.onDataFrame);
                    if (Reader.this.length == 0) {
                        Reader.this.onDataFrame.onDataAvailable(dataEmitter, Reader.this.emptyList);
                        return;
                    }
                    return;
                }
                Reader.this.reader.read(Reader.this.length, Reader.this.onFullFrame);
            }
        };
        /* access modifiers changed from: private */
        public final DataCallback onFullFrame = new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                byteBufferList.order(ByteOrder.BIG_ENDIAN);
                int i = (Reader.this.w1 & 2147418112) >>> 16;
                int i2 = Reader.this.w1 & SupportMenu.USER_MASK;
                if (i == 3) {
                    switch (i2) {
                        case 1:
                            Reader.this.readSynStream(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        case 2:
                            Reader.this.readSynReply(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        case 3:
                            Reader.this.readRstStream(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        case 4:
                            Reader.this.readSettings(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        case 6:
                            Reader.this.readPing(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        case 7:
                            Reader.this.readGoAway(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        case 8:
                            Reader.this.readHeaders(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        case 9:
                            Reader.this.readWindowUpdate(byteBufferList, Reader.this.flags, Reader.this.length);
                            break;
                        default:
                            try {
                                byteBufferList.recycle();
                                break;
                            } catch (IOException e) {
                                Reader.this.handler.error(e);
                                return;
                            }
                    }
                    Reader.this.parseFrameHeader();
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("version != 3: ");
                sb.append(i);
                throw new ProtocolException(sb.toString());
            }
        };
        ByteBufferList partial = new ByteBufferList();
        /* access modifiers changed from: private */
        public final DataEmitterReader reader;
        int streamId;
        int w1;
        int w2;

        Reader(DataEmitter dataEmitter, Handler handler2, boolean z) {
            this.emitter = dataEmitter;
            this.handler = handler2;
            this.client = z;
            dataEmitter.setEndCallback(new CompletedCallback() {
                public void onCompleted(Exception exc) {
                }
            });
            this.reader = new DataEmitterReader();
            parseFrameHeader();
        }

        /* access modifiers changed from: private */
        public void parseFrameHeader() {
            this.emitter.setDataCallback(this.reader);
            this.reader.read(8, this.onFrame);
        }

        /* access modifiers changed from: private */
        public void readSynStream(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            int i3 = byteBufferList.getInt() & Integer.MAX_VALUE;
            int i4 = byteBufferList.getInt() & Integer.MAX_VALUE;
            byteBufferList.getShort();
            List readHeader = this.headerReader.readHeader(byteBufferList, i2 - 10);
            this.handler.headers((i & 2) != 0, (i & 1) != 0, i3, i4, readHeader, HeadersMode.SPDY_SYN_STREAM);
        }

        /* access modifiers changed from: private */
        public void readSynReply(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            this.handler.headers(false, (i & 1) != 0, byteBufferList.getInt() & Integer.MAX_VALUE, -1, this.headerReader.readHeader(byteBufferList, i2 - 4), HeadersMode.SPDY_REPLY);
        }

        /* access modifiers changed from: private */
        public void readRstStream(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            if (i2 == 8) {
                int i3 = byteBufferList.getInt() & Integer.MAX_VALUE;
                int i4 = byteBufferList.getInt();
                ErrorCode fromSpdy3Rst = ErrorCode.fromSpdy3Rst(i4);
                if (fromSpdy3Rst != null) {
                    this.handler.rstStream(i3, fromSpdy3Rst);
                } else {
                    throw ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i4));
                }
            } else {
                throw ioException("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i2));
            }
        }

        /* access modifiers changed from: private */
        public void readHeaders(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            this.handler.headers(false, false, byteBufferList.getInt() & Integer.MAX_VALUE, -1, this.headerReader.readHeader(byteBufferList, i2 - 4), HeadersMode.SPDY_HEADERS);
        }

        /* access modifiers changed from: private */
        public void readWindowUpdate(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            if (i2 == 8) {
                int i3 = byteBufferList.getInt() & Integer.MAX_VALUE;
                long j = (long) (byteBufferList.getInt() & Integer.MAX_VALUE);
                if (j != 0) {
                    this.handler.windowUpdate(i3, j);
                } else {
                    throw ioException("windowSizeIncrement was 0", Long.valueOf(j));
                }
            } else {
                throw ioException("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i2));
            }
        }

        /* access modifiers changed from: private */
        public void readPing(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            boolean z = true;
            if (i2 == 4) {
                int i3 = byteBufferList.getInt();
                if (this.client != ((i3 & 1) == 1)) {
                    z = false;
                }
                this.handler.ping(z, i3, 0);
                return;
            }
            throw ioException("TYPE_PING length: %d != 4", Integer.valueOf(i2));
        }

        /* access modifiers changed from: private */
        public void readGoAway(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            if (i2 == 8) {
                int i3 = byteBufferList.getInt() & Integer.MAX_VALUE;
                int i4 = byteBufferList.getInt();
                ErrorCode fromSpdyGoAway = ErrorCode.fromSpdyGoAway(i4);
                if (fromSpdyGoAway != null) {
                    this.handler.goAway(i3, fromSpdyGoAway, ByteString.EMPTY);
                } else {
                    throw ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i4));
                }
            } else {
                throw ioException("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i2));
            }
        }

        /* access modifiers changed from: private */
        public void readSettings(ByteBufferList byteBufferList, int i, int i2) throws IOException {
            int i3 = byteBufferList.getInt();
            boolean z = false;
            if (i2 == (i3 * 8) + 4) {
                Settings settings = new Settings();
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = byteBufferList.getInt();
                    int i6 = (-16777216 & i5) >>> 24;
                    settings.set(i5 & ViewCompat.MEASURED_SIZE_MASK, i6, byteBufferList.getInt());
                }
                if ((i & 1) != 0) {
                    z = true;
                }
                this.handler.settings(z, settings);
                return;
            }
            throw ioException("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i2), Integer.valueOf(i3));
        }

        private static IOException ioException(String str, Object... objArr) throws IOException {
            throw new IOException(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    static final class Writer implements FrameWriter {
        private final boolean client;
        private boolean closed;
        ByteBufferList dataList = new ByteBufferList();
        private final Deflater deflater = new Deflater();
        private ByteBufferList frameHeader = new ByteBufferList();
        ByteBufferList headerBlockList = new ByteBufferList();
        private final BufferedDataSink sink;

        public void ackSettings() {
        }

        public void pushPromise(int i, int i2, List<Header> list) throws IOException {
        }

        Writer(BufferedDataSink bufferedDataSink, boolean z) {
            this.sink = bufferedDataSink;
            this.client = z;
            this.deflater.setDictionary(Spdy3.DICTIONARY);
        }

        public synchronized void connectionPreface() {
        }

        public synchronized void synStream(boolean z, boolean z2, int i, int i2, List<Header> list) throws IOException {
            if (!this.closed) {
                ByteBufferList writeNameValueBlockToBuffer = writeNameValueBlockToBuffer(list);
                int remaining = writeNameValueBlockToBuffer.remaining() + 10;
                boolean z3 = z | (z2 ? (char) 2 : 0);
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287039);
                order.putInt(((z3 & true ? 1 : 0) << true) | (remaining & ViewCompat.MEASURED_SIZE_MASK));
                order.putInt(i & Integer.MAX_VALUE);
                order.putInt(Integer.MAX_VALUE & i2);
                order.putShort((short) 0);
                order.flip();
                this.sink.write(this.frameHeader.add(order).add(writeNameValueBlockToBuffer));
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
            if (!this.closed) {
                ByteBufferList writeNameValueBlockToBuffer = writeNameValueBlockToBuffer(list);
                int i2 = z ? 1 : 0;
                int remaining = writeNameValueBlockToBuffer.remaining() + 4;
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287038);
                order.putInt(((i2 & 255) << 24) | (remaining & ViewCompat.MEASURED_SIZE_MASK));
                order.putInt(Integer.MAX_VALUE & i);
                order.flip();
                this.sink.write(this.frameHeader.add(order).add(writeNameValueBlockToBuffer));
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void headers(int i, List<Header> list) throws IOException {
            if (!this.closed) {
                ByteBufferList writeNameValueBlockToBuffer = writeNameValueBlockToBuffer(list);
                int remaining = writeNameValueBlockToBuffer.remaining() + 4;
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287032);
                order.putInt((remaining & ViewCompat.MEASURED_SIZE_MASK) | 0);
                order.putInt(i & Integer.MAX_VALUE);
                order.flip();
                this.sink.write(this.frameHeader.add(order).add(writeNameValueBlockToBuffer));
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
            if (this.closed) {
                throw new IOException(SessionControlOp.CLOSED);
            } else if (errorCode.spdyRstCode != -1) {
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287037);
                order.putInt(8);
                order.putInt(i & Integer.MAX_VALUE);
                order.putInt(errorCode.spdyRstCode);
                order.flip();
                this.sink.write(this.frameHeader.addAll(order));
            } else {
                throw new IllegalArgumentException();
            }
        }

        public synchronized void data(boolean z, int i, ByteBufferList byteBufferList) throws IOException {
            sendDataFrame(i, z ? 1 : 0, byteBufferList);
        }

        /* access modifiers changed from: 0000 */
        public void sendDataFrame(int i, int i2, ByteBufferList byteBufferList) throws IOException {
            if (!this.closed) {
                int remaining = byteBufferList.remaining();
                if (((long) remaining) <= 16777215) {
                    ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                    order.putInt(i & Integer.MAX_VALUE);
                    order.putInt(((i2 & 255) << 24) | (16777215 & remaining));
                    order.flip();
                    this.dataList.add(order).add(byteBufferList);
                    this.sink.write(this.dataList);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("FRAME_TOO_LARGE max size is 16Mib: ");
                sb.append(remaining);
                throw new IllegalArgumentException(sb.toString());
            }
            throw new IOException(SessionControlOp.CLOSED);
        }

        private ByteBufferList writeNameValueBlockToBuffer(List<Header> list) throws IOException {
            int i;
            if (!this.headerBlockList.hasRemaining()) {
                ByteBuffer order = ByteBufferList.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                order.putInt(list.size());
                int size = list.size();
                ByteBuffer byteBuffer = order;
                for (int i2 = 0; i2 < size; i2++) {
                    ByteString byteString = ((Header) list.get(i2)).name;
                    byteBuffer.putInt(byteString.size());
                    byteBuffer.put(byteString.toByteArray());
                    ByteString byteString2 = ((Header) list.get(i2)).value;
                    byteBuffer.putInt(byteString2.size());
                    byteBuffer.put(byteString2.toByteArray());
                    if (byteBuffer.remaining() < byteBuffer.capacity() / 2) {
                        ByteBuffer order2 = ByteBufferList.obtain(byteBuffer.capacity() * 2).order(ByteOrder.BIG_ENDIAN);
                        byteBuffer.flip();
                        order2.put(byteBuffer);
                        ByteBufferList.reclaim(byteBuffer);
                        byteBuffer = order2;
                    }
                }
                byteBuffer.flip();
                this.deflater.setInput(byteBuffer.array(), 0, byteBuffer.remaining());
                while (!this.deflater.needsInput()) {
                    ByteBuffer order3 = ByteBufferList.obtain(byteBuffer.capacity()).order(ByteOrder.BIG_ENDIAN);
                    if (VERSION.SDK_INT >= 19) {
                        i = this.deflater.deflate(order3.array(), 0, order3.capacity(), 2);
                    } else {
                        i = this.deflater.deflate(order3.array(), 0, order3.capacity());
                    }
                    order3.limit(i);
                    this.headerBlockList.add(order3);
                }
                ByteBufferList.reclaim(byteBuffer);
                return this.headerBlockList;
            }
            throw new IllegalStateException();
        }

        public synchronized void settings(Settings settings) throws IOException {
            if (!this.closed) {
                int size = settings.size();
                int i = (size * 8) + 4;
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287036);
                order.putInt((i & ViewCompat.MEASURED_SIZE_MASK) | 0);
                order.putInt(size);
                for (int i2 = 0; i2 <= 10; i2++) {
                    if (settings.isSet(i2)) {
                        order.putInt(((settings.flags(i2) & 255) << 24) | (i2 & ViewCompat.MEASURED_SIZE_MASK));
                        order.putInt(settings.get(i2));
                    }
                }
                order.flip();
                this.sink.write(this.frameHeader.addAll(order));
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            if (!this.closed) {
                if (z == (this.client != ((i & 1) == 1))) {
                    ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                    order.putInt(-2147287034);
                    order.putInt(4);
                    order.putInt(i);
                    order.flip();
                    this.sink.write(this.frameHeader.addAll(order));
                } else {
                    throw new IllegalArgumentException("payload != reply");
                }
            } else {
                throw new IOException(SessionControlOp.CLOSED);
            }
        }

        public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (this.closed) {
                throw new IOException(SessionControlOp.CLOSED);
            } else if (errorCode.spdyGoAwayCode != -1) {
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287033);
                order.putInt(8);
                order.putInt(i);
                order.putInt(errorCode.spdyGoAwayCode);
                order.flip();
                this.sink.write(this.frameHeader.addAll(order));
            } else {
                throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            }
        }

        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.closed) {
                throw new IOException(SessionControlOp.CLOSED);
            } else if (j == 0 || j > 2147483647L) {
                StringBuilder sb = new StringBuilder();
                sb.append("windowSizeIncrement must be between 1 and 0x7fffffff: ");
                sb.append(j);
                throw new IllegalArgumentException(sb.toString());
            } else {
                ByteBuffer order = ByteBufferList.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287031);
                order.putInt(8);
                order.putInt(i);
                order.putInt((int) j);
                order.flip();
                this.sink.write(this.frameHeader.addAll(order));
            }
        }

        public synchronized void close() throws IOException {
            this.closed = true;
        }
    }

    public int maxFrameSize() {
        return 16383;
    }

    Spdy3() {
    }

    public Protocol getProtocol() {
        return Protocol.SPDY_3;
    }

    static {
        try {
            DICTIONARY = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(Charsets.UTF_8.name());
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    public FrameReader newReader(DataEmitter dataEmitter, Handler handler, boolean z) {
        return new Reader(dataEmitter, handler, z);
    }

    public FrameWriter newWriter(BufferedDataSink bufferedDataSink, boolean z) {
        return new Writer(bufferedDataSink, z);
    }
}
