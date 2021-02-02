package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.ByteBufferList;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

class HeaderReader {
    Inflater inflater = new Inflater() {
        public int inflate(byte[] bArr, int i, int i2) throws DataFormatException {
            int inflate = super.inflate(bArr, i, i2);
            if (inflate != 0 || !needsDictionary()) {
                return inflate;
            }
            setDictionary(Spdy3.DICTIONARY);
            return super.inflate(bArr, i, i2);
        }
    };

    public List<Header> readHeader(ByteBufferList byteBufferList, int i) throws IOException {
        byte[] bArr = new byte[i];
        byteBufferList.get(bArr);
        this.inflater.setInput(bArr);
        ByteBufferList order = new ByteBufferList().order(ByteOrder.BIG_ENDIAN);
        while (!this.inflater.needsInput()) {
            ByteBuffer obtain = ByteBufferList.obtain(8192);
            try {
                obtain.limit(this.inflater.inflate(obtain.array()));
                order.add(obtain);
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
        int i2 = order.getInt();
        ArrayList arrayList = new ArrayList(i2);
        int i3 = 0;
        while (i3 < i2) {
            ByteString asciiLowercase = readByteString(order).toAsciiLowercase();
            ByteString readByteString = readByteString(order);
            if (asciiLowercase.size() != 0) {
                arrayList.add(new Header(asciiLowercase, readByteString));
                i3++;
            } else {
                throw new IOException("name.size == 0");
            }
        }
        return arrayList;
    }

    private static ByteString readByteString(ByteBufferList byteBufferList) {
        return ByteString.of(byteBufferList.getBytes(byteBufferList.getInt()));
    }
}
