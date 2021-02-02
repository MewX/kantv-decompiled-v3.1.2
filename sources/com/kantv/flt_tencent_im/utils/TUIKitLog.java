package com.kantv.flt_tencent_im.utils;

import com.tencent.imsdk.log.QLog;

public class TUIKitLog extends QLog {
    private static final String PRE = "TUIKit-";

    private static String mixTag(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(PRE);
        sb.append(str);
        return sb.toString();
    }

    public static void v(String str, String str2) {
        QLog.v(mixTag(str), str2);
    }

    public static void d(String str, String str2) {
        QLog.d(mixTag(str), str2);
    }

    public static void i(String str, String str2) {
        QLog.i(mixTag(str), str2);
    }

    public static void w(String str, String str2) {
        QLog.w(mixTag(str), str2);
    }

    public static void w(String str, String str2, Throwable th) {
        String mixTag = mixTag(str);
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(th.getMessage());
        QLog.w(mixTag, sb.toString());
    }

    public static void e(String str, String str2) {
        QLog.e(mixTag(str), str2);
    }
}
