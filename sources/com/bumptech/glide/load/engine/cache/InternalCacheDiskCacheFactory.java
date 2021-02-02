package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskCache.Factory;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter;
import java.io.File;

public final class InternalCacheDiskCacheFactory extends DiskLruCacheFactory {
    public InternalCacheDiskCacheFactory(Context context) {
        this(context, Factory.DEFAULT_DISK_CACHE_DIR, Factory.DEFAULT_DISK_CACHE_SIZE);
    }

    public InternalCacheDiskCacheFactory(Context context, int i) {
        this(context, Factory.DEFAULT_DISK_CACHE_DIR, i);
    }

    public InternalCacheDiskCacheFactory(final Context context, final String str, int i) {
        super((CacheDirectoryGetter) new CacheDirectoryGetter() {
            public File getCacheDirectory() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                String str = str;
                return str != null ? new File(cacheDir, str) : cacheDir;
            }
        }, i);
    }
}
