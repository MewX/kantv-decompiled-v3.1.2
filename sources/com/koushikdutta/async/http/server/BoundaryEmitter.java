package com.koushikdutta.async.http.server;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import java.nio.ByteBuffer;

public class BoundaryEmitter extends FilteredDataEmitter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private byte[] boundary;
    int state = 2;

    /* access modifiers changed from: protected */
    public void onBoundaryEnd() {
    }

    /* access modifiers changed from: protected */
    public void onBoundaryStart() {
    }

    public void setBoundary(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("\r\n--");
        sb.append(str);
        this.boundary = sb.toString().getBytes();
    }

    public String getBoundary() {
        byte[] bArr = this.boundary;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, 4, bArr.length - 4);
    }

    public String getBoundaryStart() {
        byte[] bArr = this.boundary;
        return new String(bArr, 2, bArr.length - 2);
    }

    public String getBoundaryEnd() {
        StringBuilder sb = new StringBuilder();
        sb.append(getBoundaryStart());
        sb.append("--\r\n");
        return sb.toString();
    }

    public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        if (this.state > 0) {
            ByteBuffer obtain = ByteBufferList.obtain(this.boundary.length);
            obtain.put(this.boundary, 0, this.state);
            obtain.flip();
            byteBufferList.addFirst(obtain);
            this.state = 0;
        }
        byte[] bArr = new byte[byteBufferList.remaining()];
        byteBufferList.get(bArr);
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            int i3 = this.state;
            if (i3 >= 0) {
                byte b = bArr[i];
                byte[] bArr2 = this.boundary;
                if (b == bArr2[i3]) {
                    this.state = i3 + 1;
                    if (this.state == bArr2.length) {
                        this.state = -1;
                    }
                } else if (i3 > 0) {
                    i -= i3;
                    this.state = 0;
                }
            } else if (i3 == -1) {
                if (bArr[i] == 13) {
                    this.state = -4;
                    int length = (i - i2) - this.boundary.length;
                    if (!(i2 == 0 && length == 0)) {
                        ByteBuffer put = ByteBufferList.obtain(length).put(bArr, i2, length);
                        put.flip();
                        ByteBufferList byteBufferList2 = new ByteBufferList();
                        byteBufferList2.add(put);
                        super.onDataAvailable(this, byteBufferList2);
                    }
                    onBoundaryStart();
                } else if (bArr[i] == 45) {
                    this.state = -2;
                } else {
                    report(new MimeEncodingException("Invalid multipart/form-data. Expected \r or -"));
                    return;
                }
            } else if (i3 == -2) {
                if (bArr[i] == 45) {
                    this.state = -3;
                } else {
                    report(new MimeEncodingException("Invalid multipart/form-data. Expected -"));
                    return;
                }
            } else if (i3 == -3) {
                if (bArr[i] == 13) {
                    this.state = -4;
                    int i4 = i - i2;
                    ByteBuffer put2 = ByteBufferList.obtain((i4 - this.boundary.length) - 2).put(bArr, i2, (i4 - this.boundary.length) - 2);
                    put2.flip();
                    ByteBufferList byteBufferList3 = new ByteBufferList();
                    byteBufferList3.add(put2);
                    super.onDataAvailable(this, byteBufferList3);
                    onBoundaryEnd();
                } else {
                    report(new MimeEncodingException("Invalid multipart/form-data. Expected \r"));
                    return;
                }
            } else if (i3 != -4) {
                report(new MimeEncodingException("Invalid multipart/form-data. Unknown state?"));
            } else if (bArr[i] == 10) {
                i2 = i + 1;
                this.state = 0;
            } else {
                report(new MimeEncodingException("Invalid multipart/form-data. Expected \n"));
            }
            i++;
        }
        if (i2 < bArr.length) {
            int max = Math.max(this.state, 0);
            ByteBuffer put3 = ByteBufferList.obtain((bArr.length - i2) - max).put(bArr, i2, (bArr.length - i2) - max);
            put3.flip();
            ByteBufferList byteBufferList4 = new ByteBufferList();
            byteBufferList4.add(put3);
            super.onDataAvailable(this, byteBufferList4);
        }
    }
}
