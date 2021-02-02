package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.FilteredDataSink;
import java.nio.ByteBuffer;

public class ChunkedOutputFilter extends FilteredDataSink {
    public ChunkedOutputFilter(DataSink dataSink) {
        super(dataSink);
    }

    public ByteBufferList filter(ByteBufferList byteBufferList) {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(byteBufferList.remaining(), 16));
        String str = "\r\n";
        sb.append(str);
        byteBufferList.addFirst(ByteBuffer.wrap(sb.toString().getBytes()));
        byteBufferList.add(ByteBuffer.wrap(str.getBytes()));
        return byteBufferList;
    }

    public void end() {
        setMaxBuffer(Integer.MAX_VALUE);
        write(new ByteBufferList());
        setMaxBuffer(0);
    }
}
