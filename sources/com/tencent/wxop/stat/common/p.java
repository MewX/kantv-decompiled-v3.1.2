package com.tencent.wxop.stat.common;

import java.io.File;

class p {
    private static int a = -1;

    public static boolean a() {
        int i = a;
        if (i == 1) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        String[] strArr = {"/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        int i2 = 0;
        while (i2 < 6) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(strArr[i2]);
                sb.append("su");
                if (new File(sb.toString()).exists()) {
                    a = 1;
                    return true;
                }
                i2++;
            } catch (Exception unused) {
            }
        }
        a = 0;
        return false;
    }
}
