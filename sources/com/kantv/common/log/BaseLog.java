package com.kantv.common.log;

import android.text.TextUtils;
import android.util.Log;

public class BaseLog extends Constant {
    protected static void printLine(String str, boolean z) {
        if (z) {
            Log.d(str, "╔═══════════════════════════════════════════════════════════════════════════════════════");
        } else {
            Log.d(str, "╚═══════════════════════════════════════════════════════════════════════════════════════");
        }
    }

    protected static boolean isEmpty(String str) {
        return TextUtils.isEmpty(str) || str.equals("\n") || str.equals("\t") || TextUtils.isEmpty(str.trim());
    }

    public static void printDefault(int i, String str, String str2) {
        switch (i) {
            case 1:
                Log.v(str, str2);
                return;
            case 2:
                Log.d(str, str2);
                return;
            case 3:
                Log.i(str, str2);
                return;
            case 4:
                Log.w(str, str2);
                return;
            case 5:
                Log.e(str, str2);
                return;
            case 6:
                Log.wtf(str, str2);
                return;
            default:
                return;
        }
    }
}
