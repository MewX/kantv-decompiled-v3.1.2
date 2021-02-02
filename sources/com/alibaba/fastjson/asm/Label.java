package com.alibaba.fastjson.asm;

public class Label {
    int inputStackTop;
    Label next;
    int outputStackMax;
    int position;
    private int referenceCount;
    private int[] srcAndRefPositions;
    int status;
    Label successor;

    /* access modifiers changed from: 0000 */
    public void put(MethodWriter methodWriter, ByteVector byteVector, int i) {
        if ((this.status & 2) == 0) {
            addReference(i, byteVector.length);
            byteVector.putShort(-1);
            return;
        }
        byteVector.putShort(this.position - i);
    }

    private void addReference(int i, int i2) {
        if (this.srcAndRefPositions == null) {
            this.srcAndRefPositions = new int[6];
        }
        int i3 = this.referenceCount;
        int[] iArr = this.srcAndRefPositions;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[(iArr.length + 6)];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.srcAndRefPositions = iArr2;
        }
        int[] iArr3 = this.srcAndRefPositions;
        int i4 = this.referenceCount;
        this.referenceCount = i4 + 1;
        iArr3[i4] = i;
        int i5 = this.referenceCount;
        this.referenceCount = i5 + 1;
        iArr3[i5] = i2;
    }

    /* access modifiers changed from: 0000 */
    public void resolve(MethodWriter methodWriter, int i, byte[] bArr) {
        this.status |= 2;
        this.position = i;
        int i2 = 0;
        while (i2 < this.referenceCount) {
            int[] iArr = this.srcAndRefPositions;
            int i3 = i2 + 1;
            int i4 = iArr[i2];
            int i5 = i3 + 1;
            int i6 = iArr[i3];
            int i7 = i - i4;
            int i8 = i6 + 1;
            bArr[i6] = (byte) (i7 >>> 8);
            bArr[i8] = (byte) i7;
            i2 = i5;
        }
    }
}
