package com.danikula.videocache;

import android.content.Context;
import android.os.Environment;
import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import java.io.File;

final class StorageUtils {
    private static final String INDIVIDUAL_DIR_NAME = "video-cache";

    StorageUtils() {
    }

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
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Can't define system cache directory! '");
        sb3.append(sb2);
        sb3.append("%s' will be used.");
        HttpProxyCacheDebuger.printfWarning(sb3.toString());
        return new File(sb2);
    }

    private static File getExternalCacheDir(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), ResponseCacheMiddleware.CACHE);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        HttpProxyCacheDebuger.printfWarning("Unable to create external cache directory");
        return null;
    }
}
