package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.BufferedDataSink;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.spdy.FrameReader.Handler;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class AsyncSpdyConnection implements Handler {
    private static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    BufferedDataSink bufferedSocket;
    long bytesLeftInWriteWindow;
    boolean client = true;
    private int lastGoodStreamId;
    private int nextPingId;
    private int nextStreamId;
    final Settings okHttpSettings = new Settings();
    Settings peerSettings = new Settings();
    private Map<Integer, Ping> pings;
    Protocol protocol;
    FrameReader reader;
    private boolean receivedInitialPeerSettings = false;
    boolean shutdown;
    AsyncSocket socket;
    Hashtable<Integer, SpdySocket> sockets = new Hashtable<>();
    int totalWindowRead;
    Variant variant;
    FrameWriter writer;

    public class SpdySocket implements AsyncSocket {
        long bytesLeftInWriteWindow = ((long) AsyncSpdyConnection.this.peerSettings.getInitialWindowSize(65536));
        CompletedCallback closedCallback;
        DataCallback dataCallback;
        CompletedCallback endCallback;
        SimpleFuture<List<Header>> headers = new SimpleFuture<>();
        final int id;
        boolean isOpen = true;
        boolean paused;
        ByteBufferList pending = new ByteBufferList();
        int totalWindowRead;
        WritableCallback writable;
        ByteBufferList writing = new ByteBufferList();

        public String charset() {
            return null;
        }

        public boolean isChunked() {
            return false;
        }

        public AsyncSpdyConnection getConnection() {
            return AsyncSpdyConnection.this;
        }

        public SimpleFuture<List<Header>> headers() {
            return this.headers;
        }

        /* access modifiers changed from: 0000 */
        public void updateWindowRead(int i) {
            this.totalWindowRead += i;
            if (this.totalWindowRead >= AsyncSpdyConnection.this.okHttpSettings.getInitialWindowSize(65536) / 2) {
                try {
                    AsyncSpdyConnection.this.writer.windowUpdate(this.id, (long) this.totalWindowRead);
                    this.totalWindowRead = 0;
                } catch (IOException e) {
                    throw new AssertionError(e);
                }
            }
            AsyncSpdyConnection.this.updateWindowRead(i);
        }

        public SpdySocket(int i, boolean z, boolean z2, List<Header> list) {
            this.id = i;
        }

        public boolean isLocallyInitiated() {
            if (AsyncSpdyConnection.this.client == ((this.id & 1) == 1)) {
                return true;
            }
            return false;
        }

        public void addBytesToWriteWindow(long j) {
            long j2 = this.bytesLeftInWriteWindow;
            this.bytesLeftInWriteWindow = j + j2;
            if (this.bytesLeftInWriteWindow > 0 && j2 <= 0) {
                Util.writable(this.writable);
            }
        }

        public AsyncServer getServer() {
            return AsyncSpdyConnection.this.socket.getServer();
        }

        public void setDataCallback(DataCallback dataCallback2) {
            this.dataCallback = dataCallback2;
        }

        public DataCallback getDataCallback() {
            return this.dataCallback;
        }

        public void pause() {
            this.paused = true;
        }

        public void resume() {
            this.paused = false;
        }

        public void close() {
            this.isOpen = false;
        }

        public boolean isPaused() {
            return this.paused;
        }

        public void setEndCallback(CompletedCallback completedCallback) {
            this.endCallback = completedCallback;
        }

        public CompletedCallback getEndCallback() {
            return this.endCallback;
        }

        public void write(ByteBufferList byteBufferList) {
            int min = Math.min(byteBufferList.remaining(), (int) Math.min(this.bytesLeftInWriteWindow, AsyncSpdyConnection.this.bytesLeftInWriteWindow));
            if (min != 0) {
                if (min < byteBufferList.remaining()) {
                    if (!this.writing.hasRemaining()) {
                        byteBufferList.get(this.writing, min);
                        byteBufferList = this.writing;
                    } else {
                        throw new AssertionError("wtf");
                    }
                }
                try {
                    AsyncSpdyConnection.this.writer.data(false, this.id, byteBufferList);
                    this.bytesLeftInWriteWindow -= (long) min;
                } catch (IOException e) {
                    throw new AssertionError(e);
                }
            }
        }

        public void setWriteableCallback(WritableCallback writableCallback) {
            this.writable = writableCallback;
        }

        public WritableCallback getWriteableCallback() {
            return this.writable;
        }

        public boolean isOpen() {
            return this.isOpen;
        }

        public void end() {
            try {
                AsyncSpdyConnection.this.writer.data(true, this.id, this.writing);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        public void setClosedCallback(CompletedCallback completedCallback) {
            this.closedCallback = completedCallback;
        }

        public CompletedCallback getClosedCallback() {
            return this.closedCallback;
        }

        public void receiveHeaders(List<Header> list, HeadersMode headersMode) {
            this.headers.setComplete(list);
        }
    }

    public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
    }

    public void priority(int i, int i2, int i3, boolean z) {
    }

    public SpdySocket newStream(List<Header> list, boolean z, boolean z2) {
        return newStream(0, list, z, z2);
    }

    private SpdySocket newStream(int i, List<Header> list, boolean z, boolean z2) {
        boolean z3 = !z;
        boolean z4 = !z2;
        if (this.shutdown) {
            return null;
        }
        int i2 = this.nextStreamId;
        this.nextStreamId = i2 + 2;
        SpdySocket spdySocket = new SpdySocket(i2, z3, z4, list);
        if (spdySocket.isOpen()) {
            this.sockets.put(Integer.valueOf(i2), spdySocket);
        }
        if (i == 0) {
            try {
                this.writer.synStream(z3, z4, i2, i, list);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        } else if (!this.client) {
            this.writer.pushPromise(i, i2, list);
        } else {
            throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
        }
        return spdySocket;
    }

    /* access modifiers changed from: 0000 */
    public void updateWindowRead(int i) {
        this.totalWindowRead += i;
        if (this.totalWindowRead >= this.okHttpSettings.getInitialWindowSize(65536) / 2) {
            try {
                this.writer.windowUpdate(0, (long) this.totalWindowRead);
                this.totalWindowRead = 0;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    public AsyncSpdyConnection(AsyncSocket asyncSocket, Protocol protocol2) {
        this.protocol = protocol2;
        this.socket = asyncSocket;
        this.bufferedSocket = new BufferedDataSink(asyncSocket);
        if (protocol2 == Protocol.SPDY_3) {
            this.variant = new Spdy3();
        } else if (protocol2 == Protocol.HTTP_2) {
            this.variant = new Http20Draft13();
        }
        this.reader = this.variant.newReader(asyncSocket, this, true);
        this.writer = this.variant.newWriter(this.bufferedSocket, true);
        this.nextStreamId = 1;
        if (protocol2 == Protocol.HTTP_2) {
            this.nextStreamId += 2;
        }
        this.nextPingId = 1;
        this.okHttpSettings.set(7, 0, 16777216);
    }

    public void sendConnectionPreface() throws IOException {
        this.writer.connectionPreface();
        this.writer.settings(this.okHttpSettings);
        int initialWindowSize = this.okHttpSettings.getInitialWindowSize(65536);
        if (initialWindowSize != 65536) {
            this.writer.windowUpdate(0, (long) (initialWindowSize - 65536));
        }
    }

    private boolean pushedStream(int i) {
        return this.protocol == Protocol.HTTP_2 && i != 0 && (i & 1) == 0;
    }

    public void data(boolean z, int i, ByteBufferList byteBufferList) {
        if (!pushedStream(i)) {
            SpdySocket spdySocket = (SpdySocket) this.sockets.get(Integer.valueOf(i));
            if (spdySocket == null) {
                try {
                    this.writer.rstStream(i, ErrorCode.INVALID_STREAM);
                    byteBufferList.recycle();
                } catch (IOException e) {
                    throw new AssertionError(e);
                }
            } else {
                int remaining = byteBufferList.remaining();
                byteBufferList.get(spdySocket.pending);
                spdySocket.updateWindowRead(remaining);
                Util.emitAllData(spdySocket, spdySocket.pending);
                if (z) {
                    this.sockets.remove(Integer.valueOf(i));
                    spdySocket.close();
                    Util.end((DataEmitter) spdySocket, (Exception) null);
                }
            }
        } else {
            throw new AssertionError("push");
        }
    }

    public void headers(boolean z, boolean z2, int i, int i2, List<Header> list, HeadersMode headersMode) {
        if (pushedStream(i)) {
            throw new AssertionError("push");
        } else if (!this.shutdown) {
            SpdySocket spdySocket = (SpdySocket) this.sockets.get(Integer.valueOf(i));
            if (spdySocket == null) {
                if (headersMode.failIfStreamAbsent()) {
                    try {
                        this.writer.rstStream(i, ErrorCode.INVALID_STREAM);
                    } catch (IOException e) {
                        throw new AssertionError(e);
                    }
                } else if (i > this.lastGoodStreamId && i % 2 != this.nextStreamId % 2) {
                    throw new AssertionError("unexpected receive stream");
                }
            } else if (headersMode.failIfStreamPresent()) {
                try {
                    this.writer.rstStream(i, ErrorCode.INVALID_STREAM);
                    this.sockets.remove(Integer.valueOf(i));
                } catch (IOException e2) {
                    throw new AssertionError(e2);
                }
            } else {
                spdySocket.receiveHeaders(list, headersMode);
                if (z2) {
                    this.sockets.remove(Integer.valueOf(i));
                    Util.end((DataEmitter) spdySocket, (Exception) null);
                }
            }
        }
    }

    public void rstStream(int i, ErrorCode errorCode) {
        if (!pushedStream(i)) {
            SpdySocket spdySocket = (SpdySocket) this.sockets.remove(Integer.valueOf(i));
            if (spdySocket != null) {
                Util.end((DataEmitter) spdySocket, (Exception) new IOException(errorCode.toString()));
                return;
            }
            return;
        }
        throw new AssertionError("push");
    }

    public void settings(boolean z, Settings settings) {
        long j;
        int initialWindowSize = this.peerSettings.getInitialWindowSize(65536);
        if (z) {
            this.peerSettings.clear();
        }
        this.peerSettings.merge(settings);
        try {
            this.writer.ackSettings();
            int initialWindowSize2 = this.peerSettings.getInitialWindowSize(65536);
            if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                j = 0;
            } else {
                j = (long) (initialWindowSize2 - initialWindowSize);
                if (!this.receivedInitialPeerSettings) {
                    addBytesToWriteWindow(j);
                    this.receivedInitialPeerSettings = true;
                }
            }
            for (SpdySocket addBytesToWriteWindow : this.sockets.values()) {
                addBytesToWriteWindow.addBytesToWriteWindow(j);
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        for (SpdySocket writable : this.sockets.values()) {
            Util.writable((DataSink) writable);
        }
    }

    public void ackSettings() {
        try {
            this.writer.ackSettings();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    private void writePing(boolean z, int i, int i2, Ping ping) throws IOException {
        if (ping != null) {
            ping.send();
        }
        this.writer.ping(z, i, i2);
    }

    private synchronized Ping removePing(int i) {
        return this.pings != null ? (Ping) this.pings.remove(Integer.valueOf(i)) : null;
    }

    public void ping(boolean z, int i, int i2) {
        if (z) {
            Ping removePing = removePing(i);
            if (removePing != null) {
                removePing.receive();
                return;
            }
            return;
        }
        try {
            writePing(true, i, i2, null);
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
        this.shutdown = true;
        Iterator it = this.sockets.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (((Integer) entry.getKey()).intValue() > i && ((SpdySocket) entry.getValue()).isLocallyInitiated()) {
                Util.end((DataEmitter) entry.getValue(), (Exception) new IOException(ErrorCode.REFUSED_STREAM.toString()));
                it.remove();
            }
        }
    }

    public void windowUpdate(int i, long j) {
        if (i == 0) {
            addBytesToWriteWindow(j);
            return;
        }
        SpdySocket spdySocket = (SpdySocket) this.sockets.get(Integer.valueOf(i));
        if (spdySocket != null) {
            spdySocket.addBytesToWriteWindow(j);
        }
    }

    public void pushPromise(int i, int i2, List<Header> list) {
        throw new AssertionError("pushPromise");
    }

    public void error(Exception exc) {
        this.socket.close();
        Iterator it = this.sockets.entrySet().iterator();
        while (it.hasNext()) {
            Util.end((DataEmitter) ((Entry) it.next()).getValue(), exc);
            it.remove();
        }
    }
}
