package com.google.android.exoplayer2.util;

import androidx.core.view.MotionEventCompat;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;

public final class ParsableBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i) {
        this.data = bArr;
        this.byteLimit = i;
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(ParsableByteArray parsableByteArray) {
        reset(parsableByteArray.data, parsableByteArray.limit());
        setPosition(parsableByteArray.getPosition() * 8);
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i;
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public int getBytePosition() {
        Assertions.checkState(this.bitOffset == 0);
        return this.byteOffset;
    }

    public void setPosition(int i) {
        this.byteOffset = i / 8;
        this.bitOffset = i - (this.byteOffset * 8);
        assertValidOffset();
    }

    public void skipBit() {
        int i = this.bitOffset + 1;
        this.bitOffset = i;
        if (i == 8) {
            this.bitOffset = 0;
            this.byteOffset++;
        }
        assertValidOffset();
    }

    public void skipBits(int i) {
        int i2 = i / 8;
        this.byteOffset += i2;
        this.bitOffset += i - (i2 * 8);
        int i3 = this.bitOffset;
        if (i3 > 7) {
            this.byteOffset++;
            this.bitOffset = i3 - 8;
        }
        assertValidOffset();
    }

    public boolean readBit() {
        boolean z = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.bitOffset += i;
        int i3 = 0;
        while (true) {
            i2 = this.bitOffset;
            if (i2 <= 8) {
                break;
            }
            this.bitOffset = i2 - 8;
            byte[] bArr = this.data;
            int i4 = this.byteOffset;
            this.byteOffset = i4 + 1;
            i3 |= (bArr[i4] & Draft_75.END_OF_FRAME) << this.bitOffset;
        }
        byte[] bArr2 = this.data;
        int i5 = this.byteOffset;
        int i6 = (-1 >>> (32 - i)) & (i3 | ((bArr2[i5] & Draft_75.END_OF_FRAME) >> (8 - i2)));
        if (i2 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i5 + 1;
        }
        assertValidOffset();
        return i6;
    }

    public void readBits(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.data;
            int i4 = this.byteOffset;
            this.byteOffset = i4 + 1;
            byte b = bArr2[i4];
            int i5 = this.bitOffset;
            bArr[i] = (byte) (b << i5);
            bArr[i] = (byte) (((255 & bArr2[this.byteOffset]) >> (8 - i5)) | bArr[i]);
            i++;
        }
        int i6 = i2 & 7;
        if (i6 != 0) {
            bArr[i3] = (byte) (bArr[i3] & (255 >> i6));
            int i7 = this.bitOffset;
            if (i7 + i6 > 8) {
                byte b2 = bArr[i3];
                byte[] bArr3 = this.data;
                int i8 = this.byteOffset;
                this.byteOffset = i8 + 1;
                bArr[i3] = (byte) (b2 | ((bArr3[i8] & Draft_75.END_OF_FRAME) << i7));
                this.bitOffset = i7 - 8;
            }
            this.bitOffset += i6;
            byte[] bArr4 = this.data;
            int i9 = this.byteOffset;
            byte b3 = bArr4[i9] & Draft_75.END_OF_FRAME;
            int i10 = this.bitOffset;
            bArr[i3] = (byte) (((byte) ((b3 >> (8 - i10)) << (8 - i6))) | bArr[i3]);
            if (i10 == 8) {
                this.bitOffset = 0;
                this.byteOffset = i9 + 1;
            }
            assertValidOffset();
        }
    }

    public void byteAlign() {
        if (this.bitOffset != 0) {
            this.bitOffset = 0;
            this.byteOffset++;
            assertValidOffset();
        }
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        Assertions.checkState(this.bitOffset == 0);
        System.arraycopy(this.data, this.byteOffset, bArr, i, i2);
        this.byteOffset += i2;
        assertValidOffset();
    }

    public void skipBytes(int i) {
        Assertions.checkState(this.bitOffset == 0);
        this.byteOffset += i;
        assertValidOffset();
    }

    public void putInt(int i, int i2) {
        if (i2 < 32) {
            i &= (1 << i2) - 1;
        }
        int min = Math.min(8 - this.bitOffset, i2);
        int i3 = this.bitOffset;
        int i4 = (8 - i3) - min;
        byte b = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i3) | ((1 << i4) - 1);
        byte[] bArr = this.data;
        int i5 = this.byteOffset;
        bArr[i5] = (byte) (b & bArr[i5]);
        int i6 = i2 - min;
        bArr[i5] = (byte) (((i >>> i6) << i4) | bArr[i5]);
        int i7 = i5 + 1;
        while (i6 > 8) {
            int i8 = i7 + 1;
            this.data[i7] = (byte) (i >>> (i6 - 8));
            i6 -= 8;
            i7 = i8;
        }
        int i9 = 8 - i6;
        byte[] bArr2 = this.data;
        bArr2[i7] = (byte) (bArr2[i7] & ((1 << i9) - 1));
        bArr2[i7] = (byte) (((i & ((1 << i6) - 1)) << i9) | bArr2[i7]);
        skipBits(i2);
        assertValidOffset();
    }

    private void assertValidOffset() {
        boolean z;
        int i = this.byteOffset;
        if (i >= 0) {
            int i2 = this.byteLimit;
            if (i < i2 || (i == i2 && this.bitOffset == 0)) {
                z = true;
                Assertions.checkState(z);
            }
        }
        z = false;
        Assertions.checkState(z);
    }
}
