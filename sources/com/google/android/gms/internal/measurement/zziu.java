package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import org.eclipse.jetty.util.StringUtil;

public final class zziu {
    private static final Charset ISO_8859_1 = Charset.forName(StringUtil.__ISO_8859_1);
    protected static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final Object zzaov = new Object();

    public static boolean equals(Object[] objArr, Object[] objArr2) {
        int i;
        int length = objArr == null ? 0 : objArr.length;
        if (objArr2 == null) {
            i = 0;
        } else {
            i = objArr2.length;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length || objArr[i2] != null) {
                while (i3 < i && objArr2[i3] == null) {
                    i3++;
                }
                boolean z = i2 >= length;
                boolean z2 = i3 >= i;
                if (z && z2) {
                    return true;
                }
                if (z != z2 || !objArr[i2].equals(objArr2[i3])) {
                    return false;
                }
                i2++;
                i3++;
            } else {
                i2++;
            }
        }
    }

    public static int hashCode(Object[] objArr) {
        int length = objArr == null ? 0 : objArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            if (obj != null) {
                i = (i * 31) + obj.hashCode();
            }
        }
        return i;
    }

    public static void zza(zziq zziq, zziq zziq2) {
        if (zziq.zzaoo != null) {
            zziq2.zzaoo = (zzis) zziq.zzaoo.clone();
        }
    }
}
