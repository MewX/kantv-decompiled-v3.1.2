package com.tencent.wxop.stat.common;

public class h {
    static final /* synthetic */ boolean a = (!h.class.desiredAssertionStatus());

    private h() {
    }

    public static byte[] a(byte[] bArr, int i) {
        return a(bArr, 0, bArr.length, i);
    }

    public static byte[] a(byte[] bArr, int i, int i2, int i3) {
        j jVar = new j(i3, new byte[((i2 * 3) / 4)]);
        if (!jVar.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (jVar.b == jVar.a.length) {
            return jVar.a;
        } else {
            byte[] bArr2 = new byte[jVar.b];
            System.arraycopy(jVar.a, 0, bArr2, 0, jVar.b);
            return bArr2;
        }
    }

    public static byte[] b(byte[] bArr, int i) {
        return b(bArr, 0, bArr.length, i);
    }

    public static byte[] b(byte[] bArr, int i, int i2, int i3) {
        k kVar = new k(i3, null);
        int i4 = (i2 / 3) * 4;
        int i5 = 2;
        if (!kVar.d) {
            int i6 = i2 % 3;
            if (i6 != 0) {
                if (i6 == 1) {
                    i4 += 2;
                } else if (i6 == 2) {
                    i4 += 3;
                }
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (kVar.e && i2 > 0) {
            int i7 = ((i2 - 1) / 57) + 1;
            if (!kVar.f) {
                i5 = 1;
            }
            i4 += i7 * i5;
        }
        kVar.a = new byte[i4];
        kVar.a(bArr, i, i2, true);
        if (a || kVar.b == i4) {
            return kVar.a;
        }
        throw new AssertionError();
    }
}
