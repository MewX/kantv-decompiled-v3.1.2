package com.koushikdutta.async;

public class FilteredDataSink extends BufferedDataSink {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public ByteBufferList filter(ByteBufferList byteBufferList) {
        return byteBufferList;
    }

    public FilteredDataSink(DataSink dataSink) {
        super(dataSink);
        setMaxBuffer(0);
    }

    public final void write(ByteBufferList byteBufferList) {
        if (!isBuffering() || getMaxBuffer() == Integer.MAX_VALUE) {
            super.write(filter(byteBufferList), true);
            if (byteBufferList != null) {
                byteBufferList.recycle();
            }
        }
    }
}
