package com.alibaba.fastjson.asm;

public class ByteVector {
    byte[] data;
    int length;

    public ByteVector() {
        this.data = new byte[64];
    }

    public ByteVector(int i) {
        this.data = new byte[i];
    }

    public ByteVector putByte(int i) {
        int i2 = this.length;
        int i3 = i2 + 1;
        if (i3 > this.data.length) {
            enlarge(1);
        }
        this.data[i2] = (byte) i;
        this.length = i3;
        return this;
    }

    /* access modifiers changed from: 0000 */
    public ByteVector put11(int i, int i2) {
        int i3 = this.length;
        if (i3 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        int i5 = i4 + 1;
        bArr[i4] = (byte) i2;
        this.length = i5;
        return this;
    }

    public ByteVector putShort(int i) {
        int i2 = this.length;
        if (i2 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        this.length = i4;
        return this;
    }

    /* access modifiers changed from: 0000 */
    public ByteVector put12(int i, int i2) {
        int i3 = this.length;
        if (i3 + 3 > this.data.length) {
            enlarge(3);
        }
        byte[] bArr = this.data;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        int i6 = i5 + 1;
        bArr[i5] = (byte) i2;
        this.length = i6;
        return this;
    }

    public ByteVector putInt(int i) {
        int i2 = this.length;
        if (i2 + 4 > this.data.length) {
            enlarge(4);
        }
        byte[] bArr = this.data;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i >>> 8);
        int i6 = i5 + 1;
        bArr[i5] = (byte) i;
        this.length = i6;
        return this;
    }

    public ByteVector putUTF8(String str) {
        int length2 = str.length();
        int i = this.length;
        if (i + 2 + length2 > this.data.length) {
            enlarge(length2 + 2);
        }
        byte[] bArr = this.data;
        int i2 = i + 1;
        bArr[i] = (byte) (length2 >>> 8);
        int i3 = i2 + 1;
        bArr[i2] = (byte) length2;
        int i4 = 0;
        while (i4 < length2) {
            char charAt = str.charAt(i4);
            if (charAt < 1 || charAt > 127) {
                throw new UnsupportedOperationException();
            }
            int i5 = i3 + 1;
            bArr[i3] = (byte) charAt;
            i4++;
            i3 = i5;
        }
        this.length = i3;
        return this;
    }

    public ByteVector putByteArray(byte[] bArr, int i, int i2) {
        if (this.length + i2 > this.data.length) {
            enlarge(i2);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i, this.data, this.length, i2);
        }
        this.length += i2;
        return this;
    }

    private void enlarge(int i) {
        int length2 = this.data.length * 2;
        int i2 = i + this.length;
        if (length2 > i2) {
            i2 = length2;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.data, 0, bArr, 0, this.length);
        this.data = bArr;
    }
}
