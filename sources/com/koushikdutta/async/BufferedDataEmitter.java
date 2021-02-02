package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;

public class BufferedDataEmitter implements DataEmitter {
    ByteBufferList mBuffers = new ByteBufferList();
    DataCallback mDataCallback;
    DataEmitter mEmitter;
    CompletedCallback mEndCallback;
    Exception mEndException;
    boolean mEnded = false;

    public boolean isChunked() {
        return false;
    }

    public BufferedDataEmitter(DataEmitter dataEmitter) {
        this.mEmitter = dataEmitter;
        this.mEmitter.setDataCallback(new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                byteBufferList.get(BufferedDataEmitter.this.mBuffers);
                BufferedDataEmitter.this.onDataAvailable();
            }
        });
        this.mEmitter.setEndCallback(new CompletedCallback() {
            public void onCompleted(Exception exc) {
                BufferedDataEmitter bufferedDataEmitter = BufferedDataEmitter.this;
                bufferedDataEmitter.mEnded = true;
                bufferedDataEmitter.mEndException = exc;
                if (bufferedDataEmitter.mBuffers.remaining() == 0 && BufferedDataEmitter.this.mEndCallback != null) {
                    BufferedDataEmitter.this.mEndCallback.onCompleted(exc);
                }
            }
        });
    }

    public void close() {
        this.mEmitter.close();
    }

    public void onDataAvailable() {
        if (this.mDataCallback != null && !isPaused() && this.mBuffers.remaining() > 0) {
            this.mDataCallback.onDataAvailable(this, this.mBuffers);
        }
        if (this.mEnded && !this.mBuffers.hasRemaining()) {
            CompletedCallback completedCallback = this.mEndCallback;
            if (completedCallback != null) {
                completedCallback.onCompleted(this.mEndException);
            }
        }
    }

    public void setDataCallback(DataCallback dataCallback) {
        if (this.mDataCallback == null) {
            this.mDataCallback = dataCallback;
            return;
        }
        throw new RuntimeException("Buffered Data Emitter callback may only be set once");
    }

    public DataCallback getDataCallback() {
        return this.mDataCallback;
    }

    public void pause() {
        this.mEmitter.pause();
    }

    public void resume() {
        this.mEmitter.resume();
        onDataAvailable();
    }

    public boolean isPaused() {
        return this.mEmitter.isPaused();
    }

    public void setEndCallback(CompletedCallback completedCallback) {
        this.mEndCallback = completedCallback;
    }

    public CompletedCallback getEndCallback() {
        return this.mEndCallback;
    }

    public AsyncServer getServer() {
        return this.mEmitter.getServer();
    }

    public String charset() {
        return this.mEmitter.charset();
    }
}
