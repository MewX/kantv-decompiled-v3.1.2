package com.tencent.wxop.stat.common;

class j extends i {
    private static final int[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    private static final int[] d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    private int e;
    private int f;
    private final int[] g;

    public j(int i, byte[] bArr) {
        this.a = bArr;
        this.g = (i & 8) == 0 ? c : d;
        this.e = 0;
        this.f = 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x007d, code lost:
        r0.e = 6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0080, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00f6, code lost:
        if (r21 != false) goto L_0x00ff;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00f8, code lost:
        r0.e = r5;
        r0.f = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00fc, code lost:
        r0.b = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00fe, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00ff, code lost:
        if (r5 == 0) goto L_0x0121;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0101, code lost:
        if (r5 == 1) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0103, code lost:
        if (r5 == 2) goto L_0x0119;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0105, code lost:
        if (r5 == 3) goto L_0x010a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0107, code lost:
        if (r5 == 4) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x010a, code lost:
        r1 = r11 + 1;
        r6[r11] = (byte) (r10 >> 10);
        r11 = r1 + 1;
        r6[r1] = (byte) (r10 >> 2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0119, code lost:
        r1 = r11 + 1;
        r6[r11] = (byte) (r10 >> 4);
        r11 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0121, code lost:
        r0.e = r5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(byte[] r18, int r19, int r20, boolean r21) {
        /*
            r17 = this;
            r0 = r17
            int r1 = r0.e
            r2 = 0
            r3 = 6
            if (r1 != r3) goto L_0x0009
            return r2
        L_0x0009:
            int r4 = r20 + r19
            int r5 = r0.f
            byte[] r6 = r0.a
            int[] r7 = r0.g
            r8 = 5
            r9 = 4
            r10 = r5
            r11 = 0
            r5 = r1
            r1 = r19
        L_0x0018:
            r12 = 3
            r13 = 2
            r14 = 1
            if (r1 >= r4) goto L_0x00f6
            if (r5 != 0) goto L_0x0063
        L_0x001f:
            int r15 = r1 + 4
            if (r15 > r4) goto L_0x0061
            byte r10 = r18[r1]
            r10 = r10 & 255(0xff, float:3.57E-43)
            r10 = r7[r10]
            int r10 = r10 << 18
            int r16 = r1 + 1
            byte r2 = r18[r16]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r2 = r7[r2]
            int r2 = r2 << 12
            r2 = r2 | r10
            int r10 = r1 + 2
            byte r10 = r18[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            r10 = r7[r10]
            int r10 = r10 << r3
            r2 = r2 | r10
            int r10 = r1 + 3
            byte r10 = r18[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            r10 = r7[r10]
            r10 = r10 | r2
            if (r10 < 0) goto L_0x0061
            int r1 = r11 + 2
            byte r2 = (byte) r10
            r6[r1] = r2
            int r1 = r11 + 1
            int r2 = r10 >> 8
            byte r2 = (byte) r2
            r6[r1] = r2
            int r1 = r10 >> 16
            byte r1 = (byte) r1
            r6[r11] = r1
            int r11 = r11 + 3
            r1 = r15
            r2 = 0
            goto L_0x001f
        L_0x0061:
            if (r1 >= r4) goto L_0x00f6
        L_0x0063:
            int r2 = r1 + 1
            byte r1 = r18[r1]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r7[r1]
            r15 = -1
            if (r5 == 0) goto L_0x00e6
            if (r5 == r14) goto L_0x00d8
            r14 = -2
            if (r5 == r13) goto L_0x00c3
            if (r5 == r12) goto L_0x008a
            if (r5 == r9) goto L_0x0081
            if (r5 == r8) goto L_0x007b
            goto L_0x00f2
        L_0x007b:
            if (r1 == r15) goto L_0x00f2
        L_0x007d:
            r0.e = r3
            r12 = 0
            return r12
        L_0x0081:
            r12 = 0
            if (r1 != r14) goto L_0x0085
            goto L_0x00de
        L_0x0085:
            if (r1 == r15) goto L_0x00f2
            r0.e = r3
            return r12
        L_0x008a:
            if (r1 < 0) goto L_0x00a8
            int r5 = r10 << 6
            r10 = r5 | r1
            int r1 = r11 + 2
            byte r5 = (byte) r10
            r6[r1] = r5
            int r1 = r11 + 1
            int r5 = r10 >> 8
            byte r5 = (byte) r5
            r6[r1] = r5
            int r1 = r10 >> 16
            byte r1 = (byte) r1
            r6[r11] = r1
            int r11 = r11 + 3
            r1 = r2
            r2 = 0
            r5 = 0
            goto L_0x0018
        L_0x00a8:
            if (r1 != r14) goto L_0x00bd
            int r1 = r11 + 1
            int r5 = r10 >> 2
            byte r5 = (byte) r5
            r6[r1] = r5
            int r1 = r10 >> 10
            byte r1 = (byte) r1
            r6[r11] = r1
            int r11 = r11 + 2
            r1 = r2
            r2 = 0
            r5 = 5
            goto L_0x0018
        L_0x00bd:
            if (r1 == r15) goto L_0x00f2
        L_0x00bf:
            r0.e = r3
            r1 = 0
            return r1
        L_0x00c3:
            if (r1 < 0) goto L_0x00c6
            goto L_0x00db
        L_0x00c6:
            if (r1 != r14) goto L_0x00d5
            int r1 = r11 + 1
            int r5 = r10 >> 4
            byte r5 = (byte) r5
            r6[r11] = r5
            r11 = r1
            r1 = r2
            r2 = 0
            r5 = 4
            goto L_0x0018
        L_0x00d5:
            if (r1 == r15) goto L_0x00f2
            goto L_0x007d
        L_0x00d8:
            r12 = 0
            if (r1 < 0) goto L_0x00e1
        L_0x00db:
            int r10 = r10 << 6
            r10 = r10 | r1
        L_0x00de:
            int r5 = r5 + 1
            goto L_0x00f2
        L_0x00e1:
            if (r1 == r15) goto L_0x00f2
            r0.e = r3
            return r12
        L_0x00e6:
            r12 = 0
            if (r1 < 0) goto L_0x00ed
            int r5 = r5 + 1
            r10 = r1
            goto L_0x00f2
        L_0x00ed:
            if (r1 == r15) goto L_0x00f2
            r0.e = r3
            return r12
        L_0x00f2:
            r1 = r2
            r2 = 0
            goto L_0x0018
        L_0x00f6:
            if (r21 != 0) goto L_0x00ff
            r0.e = r5
            r0.f = r10
        L_0x00fc:
            r0.b = r11
            return r14
        L_0x00ff:
            if (r5 == 0) goto L_0x0121
            if (r5 == r14) goto L_0x00bf
            if (r5 == r13) goto L_0x0119
            if (r5 == r12) goto L_0x010a
            if (r5 == r9) goto L_0x00bf
            goto L_0x0121
        L_0x010a:
            int r1 = r11 + 1
            int r2 = r10 >> 10
            byte r2 = (byte) r2
            r6[r11] = r2
            int r11 = r1 + 1
            int r2 = r10 >> 2
            byte r2 = (byte) r2
            r6[r1] = r2
            goto L_0x0121
        L_0x0119:
            int r1 = r11 + 1
            int r2 = r10 >> 4
            byte r2 = (byte) r2
            r6[r11] = r2
            r11 = r1
        L_0x0121:
            r0.e = r5
            goto L_0x00fc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.common.j.a(byte[], int, int, boolean):boolean");
    }
}
