package io.flutter.util;

import android.content.Context;
import android.os.Build.VERSION;

public final class PathUtils {
    public static String getFilesDir(Context context) {
        return context.getFilesDir().getPath();
    }

    public static String getDataDirectory(Context context) {
        return context.getDir("flutter", 0).getPath();
    }

    public static String getCacheDirectory(Context context) {
        if (VERSION.SDK_INT >= 21) {
            return context.getCodeCacheDir().getPath();
        }
        return context.getCacheDir().getPath();
    }
}
