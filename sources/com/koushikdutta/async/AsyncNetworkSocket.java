package com.koushikdutta.async;

import android.util.Log;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.util.Allocator;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;

public class AsyncNetworkSocket implements AsyncSocket {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    Allocator allocator;
    boolean closeReported;
    private ChannelWrapper mChannel;
    CompletedCallback mClosedHander;
    private CompletedCallback mCompletedCallback;
    DataCallback mDataHandler;
    boolean mEndReported;
    private SelectionKey mKey;
    boolean mPaused = false;
    Exception mPendingEndException;
    private AsyncServer mServer;
    WritableCallback mWriteableHandler;
    private ByteBufferList pending = new ByteBufferList();
    InetSocketAddress socketAddress;

    public String charset() {
        return null;
    }

    AsyncNetworkSocket() {
    }

    public void end() {
        this.mChannel.shutdownOutput();
    }

    public boolean isChunked() {
        return this.mChannel.isChunked();
    }

    /* access modifiers changed from: 0000 */
    public void attach(SocketChannel socketChannel, InetSocketAddress inetSocketAddress) throws IOException {
        this.socketAddress = inetSocketAddress;
        this.allocator = new Allocator();
        this.mChannel = new SocketChannelWrapper(socketChannel);
    }

    /* access modifiers changed from: 0000 */
    public void attach(DatagramChannel datagramChannel) throws IOException {
        this.mChannel = new DatagramChannelWrapper(datagramChannel);
        this.allocator = new Allocator(8192);
    }

    /* access modifiers changed from: 0000 */
    public ChannelWrapper getChannel() {
        return this.mChannel;
    }

    public void onDataWritable() {
        if (!this.mChannel.isChunked()) {
            SelectionKey selectionKey = this.mKey;
            selectionKey.interestOps(selectionKey.interestOps() & -5);
        }
        WritableCallback writableCallback = this.mWriteableHandler;
        if (writableCallback != null) {
            writableCallback.onWriteable();
        }
    }

    /* access modifiers changed from: 0000 */
    public void setup(AsyncServer asyncServer, SelectionKey selectionKey) {
        this.mServer = asyncServer;
        this.mKey = selectionKey;
    }

    public void write(final ByteBufferList byteBufferList) {
        if (this.mServer.getAffinity() != Thread.currentThread()) {
            this.mServer.run((Runnable) new Runnable() {
                public void run() {
                    AsyncNetworkSocket.this.write(byteBufferList);
                }
            });
        } else if (this.mChannel.isConnected()) {
            try {
                int remaining = byteBufferList.remaining();
                ByteBuffer[] allArray = byteBufferList.getAllArray();
                this.mChannel.write(allArray);
                byteBufferList.addAll(allArray);
                handleRemaining(byteBufferList.remaining());
                this.mServer.onDataSent(remaining - byteBufferList.remaining());
            } catch (IOException e) {
                closeInternal();
                reportEndPending(e);
                reportClose(e);
            }
        }
    }

    private void handleRemaining(int i) throws IOException {
        if (!this.mKey.isValid()) {
            throw new IOException(new CancelledKeyException());
        } else if (i > 0) {
            SelectionKey selectionKey = this.mKey;
            selectionKey.interestOps(selectionKey.interestOps() | 4);
        } else {
            SelectionKey selectionKey2 = this.mKey;
            selectionKey2.interestOps(selectionKey2.interestOps() & -5);
        }
    }

    /* access modifiers changed from: 0000 */
    public int onReadable() {
        boolean z;
        spitPending();
        int i = 0;
        if (this.mPaused) {
            return 0;
        }
        try {
            ByteBuffer allocate = this.allocator.allocate();
            long read = (long) this.mChannel.read(allocate);
            if (read < 0) {
                closeInternal();
                z = true;
            } else {
                i = (int) (((long) 0) + read);
                z = false;
            }
            if (read > 0) {
                this.allocator.track(read);
                allocate.flip();
                this.pending.add(allocate);
                Util.emitAllData(this, this.pending);
            } else {
                ByteBufferList.reclaim(allocate);
            }
            if (z) {
                reportEndPending(null);
                reportClose(null);
            }
        } catch (Exception e) {
            closeInternal();
            reportEndPending(e);
            reportClose(e);
        }
        return i;
    }

    /* access modifiers changed from: protected */
    public void reportClose(Exception exc) {
        if (!this.closeReported) {
            this.closeReported = true;
            CompletedCallback completedCallback = this.mClosedHander;
            if (completedCallback != null) {
                completedCallback.onCompleted(exc);
                this.mClosedHander = null;
            }
        }
    }

    public void close() {
        closeInternal();
        reportClose(null);
    }

    public void closeInternal() {
        this.mKey.cancel();
        try {
            this.mChannel.close();
        } catch (IOException unused) {
        }
    }

    public void setWriteableCallback(WritableCallback writableCallback) {
        this.mWriteableHandler = writableCallback;
    }

    public void setDataCallback(DataCallback dataCallback) {
        this.mDataHandler = dataCallback;
    }

    public DataCallback getDataCallback() {
        return this.mDataHandler;
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.mClosedHander = completedCallback;
    }

    public CompletedCallback getClosedCallback() {
        return this.mClosedHander;
    }

    public WritableCallback getWriteableCallback() {
        return this.mWriteableHandler;
    }

    /* access modifiers changed from: 0000 */
    public void reportEnd(Exception exc) {
        if (!this.mEndReported) {
            this.mEndReported = true;
            CompletedCallback completedCallback = this.mCompletedCallback;
            if (completedCallback != null) {
                completedCallback.onCompleted(exc);
            } else if (exc != null) {
                Log.e(AsyncServer.LOGTAG, "Unhandled exception", exc);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void reportEndPending(Exception exc) {
        if (this.pending.hasRemaining()) {
            this.mPendingEndException = exc;
        } else {
            reportEnd(exc);
        }
    }

    public void setEndCallback(CompletedCallback completedCallback) {
        this.mCompletedCallback = completedCallback;
    }

    public CompletedCallback getEndCallback() {
        return this.mCompletedCallback;
    }

    public boolean isOpen() {
        return this.mChannel.isConnected() && this.mKey.isValid();
    }

    public void pause() {
        if (this.mServer.getAffinity() != Thread.currentThread()) {
            this.mServer.run((Runnable) new Runnable() {
                public void run() {
                    AsyncNetworkSocket.this.pause();
                }
            });
        } else if (!this.mPaused) {
            this.mPaused = true;
            try {
                this.mKey.interestOps(this.mKey.interestOps() & -2);
            } catch (Exception unused) {
            }
        }
    }

    private void spitPending() {
        if (this.pending.hasRemaining()) {
            Util.emitAllData(this, this.pending);
        }
    }

    public void resume() {
        if (this.mServer.getAffinity() != Thread.currentThread()) {
            this.mServer.run((Runnable) new Runnable() {
                public void run() {
                    AsyncNetworkSocket.this.resume();
                }
            });
        } else if (this.mPaused) {
            this.mPaused = false;
            try {
                this.mKey.interestOps(this.mKey.interestOps() | 1);
            } catch (Exception unused) {
            }
            spitPending();
            if (!isOpen()) {
                reportEndPending(this.mPendingEndException);
            }
        }
    }

    public boolean isPaused() {
        return this.mPaused;
    }

    public AsyncServer getServer() {
        return this.mServer;
    }

    public InetSocketAddress getRemoteAddress() {
        return this.socketAddress;
    }

    public int getLocalPort() {
        return this.mChannel.getLocalPort();
    }

    public Object getSocket() {
        return getChannel().getSocket();
    }
}
