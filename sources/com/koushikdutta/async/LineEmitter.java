package com.koushikdutta.async;

import com.koushikdutta.async.callback.DataCallback;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class LineEmitter implements DataCallback {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    Charset charset;
    ByteBufferList data;
    StringCallback mLineCallback;

    public interface StringCallback {
        void onStringAvailable(String str);
    }

    public LineEmitter() {
        this(null);
    }

    public LineEmitter(Charset charset2) {
        this.data = new ByteBufferList();
        this.charset = charset2;
    }

    public void setLineCallback(StringCallback stringCallback) {
        this.mLineCallback = stringCallback;
    }

    public StringCallback getLineCallback() {
        return this.mLineCallback;
    }

    public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBufferList.remaining());
        while (byteBufferList.remaining() > 0) {
            byte b = byteBufferList.get();
            if (b == 10) {
                allocate.flip();
                this.data.add(allocate);
                this.mLineCallback.onStringAvailable(this.data.readString(this.charset));
                this.data = new ByteBufferList();
                return;
            }
            allocate.put(b);
        }
        allocate.flip();
        this.data.add(allocate);
    }
}
