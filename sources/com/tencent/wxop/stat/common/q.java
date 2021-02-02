package com.tencent.wxop.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class q {
    private static SharedPreferences a;

    public static int a(Context context, String str, int i) {
        StringBuilder sb = new StringBuilder(StatConstants.MTA_COOPERATION_TAG);
        sb.append(str);
        return a(context).getInt(l.a(context, sb.toString()), i);
    }

    public static long a(Context context, String str, long j) {
        StringBuilder sb = new StringBuilder(StatConstants.MTA_COOPERATION_TAG);
        sb.append(str);
        return a(context).getLong(l.a(context, sb.toString()), j);
    }

    static synchronized SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (q.class) {
            SharedPreferences sharedPreferences2 = context.getSharedPreferences(".mta-wxop", 0);
            a = sharedPreferences2;
            if (sharedPreferences2 == null) {
                a = PreferenceManager.getDefaultSharedPreferences(context);
            }
            sharedPreferences = a;
        }
        return sharedPreferences;
    }

    public static String a(Context context, String str, String str2) {
        StringBuilder sb = new StringBuilder(StatConstants.MTA_COOPERATION_TAG);
        sb.append(str);
        return a(context).getString(l.a(context, sb.toString()), str2);
    }

    public static void b(Context context, String str, int i) {
        StringBuilder sb = new StringBuilder(StatConstants.MTA_COOPERATION_TAG);
        sb.append(str);
        String a2 = l.a(context, sb.toString());
        Editor edit = a(context).edit();
        edit.putInt(a2, i);
        edit.commit();
    }

    public static void b(Context context, String str, long j) {
        StringBuilder sb = new StringBuilder(StatConstants.MTA_COOPERATION_TAG);
        sb.append(str);
        String a2 = l.a(context, sb.toString());
        Editor edit = a(context).edit();
        edit.putLong(a2, j);
        edit.commit();
    }

    public static void b(Context context, String str, String str2) {
        StringBuilder sb = new StringBuilder(StatConstants.MTA_COOPERATION_TAG);
        sb.append(str);
        String a2 = l.a(context, sb.toString());
        Editor edit = a(context).edit();
        edit.putString(a2, str2);
        edit.commit();
    }
}
