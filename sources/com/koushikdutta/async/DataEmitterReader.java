package com.koushikdutta.async;

import com.koushikdutta.async.callback.DataCallback;

public class DataEmitterReader implements DataCallback {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    ByteBufferList mPendingData = new ByteBufferList();
    DataCallback mPendingRead;
    int mPendingReadLength;

    public void read(int i, DataCallback dataCallback) {
        this.mPendingReadLength = i;
        this.mPendingRead = dataCallback;
        this.mPendingData.recycle();
    }

    private boolean handlePendingData(DataEmitter dataEmitter) {
        if (this.mPendingReadLength > this.mPendingData.remaining()) {
            return false;
        }
        DataCallback dataCallback = this.mPendingRead;
        this.mPendingRead = null;
        dataCallback.onDataAvailable(dataEmitter, this.mPendingData);
        return true;
    }

    public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        do {
            byteBufferList.get(this.mPendingData, Math.min(byteBufferList.remaining(), this.mPendingReadLength - this.mPendingData.remaining()));
            byteBufferList.remaining();
            if (!handlePendingData(dataEmitter)) {
                break;
            }
        } while (this.mPendingRead != null);
        byteBufferList.remaining();
    }
}
