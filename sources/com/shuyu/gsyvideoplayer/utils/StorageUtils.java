package com.shuyu.gsyvideoplayer.utils;

import android.content.Context;
import android.os.Environment;
import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import java.io.File;

public class StorageUtils {
    private static final String INDIVIDUAL_DIR_NAME = "video-cache";

    public static File getIndividualCacheDirectory(Context context) {
        return new File(getCacheDirectory(context, true), INDIVIDUAL_DIR_NAME);
    }

    private static File getCacheDirectory(Context context, boolean z) {
        String str;
        try {
            str = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            str = "";
        }
        File externalCacheDir = (!z || !"mounted".equals(str)) ? null : getExternalCacheDir(context);
        if (externalCacheDir == null) {
            externalCacheDir = context.getCacheDir();
        }
        if (externalCacheDir != null) {
            return externalCacheDir;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("/data/data/");
        sb.append(context.getPackageName());
        sb.append("/cache/");
        return new File(sb.toString());
    }

    private static File getExternalCacheDir(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), ResponseCacheMiddleware.CACHE);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }
}
