package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.WritableCallback;

public class BufferedDataSink implements DataSink {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    boolean endPending;
    boolean forceBuffering;
    DataSink mDataSink;
    int mMaxBuffer = Integer.MAX_VALUE;
    ByteBufferList mPendingWrites = new ByteBufferList();
    WritableCallback mWritable;

    public BufferedDataSink(DataSink dataSink) {
        setDataSink(dataSink);
    }

    public boolean isBuffering() {
        return this.mPendingWrites.hasRemaining() || this.forceBuffering;
    }

    public DataSink getDataSink() {
        return this.mDataSink;
    }

    public void forceBuffering(boolean z) {
        this.forceBuffering = z;
        if (!z) {
            writePending();
        }
    }

    public void setDataSink(DataSink dataSink) {
        this.mDataSink = dataSink;
        this.mDataSink.setWriteableCallback(new WritableCallback() {
            public void onWriteable() {
                BufferedDataSink.this.writePending();
            }
        });
    }

    /* access modifiers changed from: private */
    public void writePending() {
        if (!this.forceBuffering) {
            if (this.mPendingWrites.hasRemaining()) {
                this.mDataSink.write(this.mPendingWrites);
                if (this.mPendingWrites.remaining() == 0 && this.endPending) {
                    this.mDataSink.end();
                }
            }
            if (!this.mPendingWrites.hasRemaining()) {
                WritableCallback writableCallback = this.mWritable;
                if (writableCallback != null) {
                    writableCallback.onWriteable();
                }
            }
        }
    }

    public void write(ByteBufferList byteBufferList) {
        write(byteBufferList, false);
    }

    /* access modifiers changed from: protected */
    public void write(final ByteBufferList byteBufferList, final boolean z) {
        if (getServer().getAffinity() != Thread.currentThread()) {
            getServer().run((Runnable) new Runnable() {
                public void run() {
                    BufferedDataSink.this.write(byteBufferList, z);
                }
            });
            return;
        }
        if (!isBuffering()) {
            this.mDataSink.write(byteBufferList);
        }
        if (byteBufferList.remaining() > 0) {
            int min = Math.min(byteBufferList.remaining(), this.mMaxBuffer);
            if (z) {
                min = byteBufferList.remaining();
            }
            if (min > 0) {
                byteBufferList.get(this.mPendingWrites, min);
            }
        }
    }

    public void setWriteableCallback(WritableCallback writableCallback) {
        this.mWritable = writableCallback;
    }

    public WritableCallback getWriteableCallback() {
        return this.mWritable;
    }

    public int remaining() {
        return this.mPendingWrites.remaining();
    }

    public int getMaxBuffer() {
        return this.mMaxBuffer;
    }

    public void setMaxBuffer(int i) {
        this.mMaxBuffer = i;
    }

    public boolean isOpen() {
        return this.mDataSink.isOpen();
    }

    public void end() {
        if (getServer().getAffinity() != Thread.currentThread()) {
            getServer().run((Runnable) new Runnable() {
                public void run() {
                    BufferedDataSink.this.end();
                }
            });
        } else if (this.mPendingWrites.hasRemaining()) {
            this.endPending = true;
        } else {
            this.mDataSink.end();
        }
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.mDataSink.setClosedCallback(completedCallback);
    }

    public CompletedCallback getClosedCallback() {
        return this.mDataSink.getClosedCallback();
    }

    public AsyncServer getServer() {
        return this.mDataSink.getServer();
    }
}
