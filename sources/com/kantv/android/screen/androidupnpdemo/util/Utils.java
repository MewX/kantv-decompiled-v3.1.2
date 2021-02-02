package com.kantv.android.screen.androidupnpdemo.util;

import java.util.Formatter;
import java.util.Locale;

public class Utils {
    public static boolean isNull(Object obj) {
        return obj == null;
    }

    public static boolean isNotNull(Object obj) {
        return !isNull(obj);
    }

    public static String getStringTime(int i) {
        StringBuilder sb = new StringBuilder();
        Formatter formatter = new Formatter(sb, Locale.getDefault());
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / 3600;
        sb.setLength(0);
        return formatter.format("%02d:%02d:%02d", new Object[]{Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)}).toString();
    }

    public static String stringForTime(int i) {
        if (i <= 0 || i >= 86400000) {
            return "00:00";
        }
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / 3600;
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        if (i5 > 0) {
            return formatter.format("%d:%02d:%02d", new Object[]{Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)}).toString();
        }
        return formatter.format("%02d:%02d", new Object[]{Integer.valueOf(i4), Integer.valueOf(i3)}).toString();
    }

    public static int getIntTime(String str) {
        if (isNull(str)) {
            return 0;
        }
        String[] split = str.split(":");
        if (split.length < 3) {
            return 0;
        }
        return ((Integer.valueOf(split[0]).intValue() * 3600) + (Integer.valueOf(split[1]).intValue() * 60) + Integer.valueOf(split[2]).intValue()) * 1000;
    }
}
