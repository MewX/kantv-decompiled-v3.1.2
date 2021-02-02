package com.tencent.imsdk.log;

import android.text.TextUtils;
import android.util.Log;

public class QLog {
    private static final String TAG = "QLog";

    public static native void nativeWriteLog(int i, String str, String str2, int i2, String str3);

    static {
        try {
            System.loadLibrary("ImSDK");
            Log.i(TAG, "system load so library succ, libImSDK.so");
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "system load so library failed, libImSDK.so \n ", e);
        }
    }

    public static void v(String str, String str2) {
        log(2, str, str2);
    }

    public static void d(String str, String str2) {
        log(3, str, str2);
    }

    public static void i(String str, String str2) {
        log(4, str, str2);
    }

    public static void w(String str, String str2) {
        log(5, str, str2);
    }

    public static void e(String str, String str2) {
        log(6, str, str2);
    }

    private static void log(int i, String str, String str2) {
        String str3 = "logLevel is illegal ： ";
        if (i < 0 || i > 6) {
            String str4 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            sb.append(i);
            e(str4, sb.toString());
        } else if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            String str5 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str3);
            sb2.append(i);
            e(str5, sb2.toString());
        } else {
            nativeWriteLog(i, str, "", 0, str2);
        }
    }

    public static void writeException(String str, String str2, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        String str3 = " exception : ";
        sb.append(str3);
        sb.append(Log.getStackTraceString(th));
        Log.e(str, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(str3);
        sb2.append(Log.getStackTraceString(th));
        e(str, sb2.toString());
    }
}
