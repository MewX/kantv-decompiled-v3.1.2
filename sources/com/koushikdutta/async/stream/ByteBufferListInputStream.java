package com.koushikdutta.async.stream;

import com.koushikdutta.async.ByteBufferList;
import java.io.IOException;
import java.io.InputStream;

public class ByteBufferListInputStream extends InputStream {
    ByteBufferList bb;

    public ByteBufferListInputStream(ByteBufferList byteBufferList) {
        this.bb = byteBufferList;
    }

    public int read() throws IOException {
        if (this.bb.remaining() <= 0) {
            return -1;
        }
        return this.bb.get();
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.bb.remaining() <= 0) {
            return -1;
        }
        int min = Math.min(i2, this.bb.remaining());
        this.bb.get(bArr, i, min);
        return min;
    }
}
