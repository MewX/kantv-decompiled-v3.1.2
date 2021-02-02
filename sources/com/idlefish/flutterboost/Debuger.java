package com.idlefish.flutterboost;

import android.util.Log;

public class Debuger {
    private static final Debuger DEBUG = new Debuger();
    private static final String TAG = "FlutterBoost#";

    private Debuger() {
    }

    private void print(String str) {
        if (isDebug()) {
            Log.e(TAG, str);
        }
    }

    public static void log(String str) {
        DEBUG.print(str);
    }

    public static void exception(String str) {
        if (!isDebug()) {
            Log.e(TAG, "exception", new RuntimeException(str));
            return;
        }
        throw new RuntimeException(str);
    }

    public static void exception(Throwable th) {
        if (!isDebug()) {
            Log.e(TAG, "exception", th);
            return;
        }
        throw new RuntimeException(th);
    }

    public static boolean isDebug() {
        try {
            return NewFlutterBoost.instance().platform().isDebug();
        } catch (Throwable unused) {
            return false;
        }
    }
}
