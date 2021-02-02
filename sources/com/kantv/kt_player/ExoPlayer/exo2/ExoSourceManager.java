package com.kantv.kt_player.ExoPlayer.exo2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.LoopingMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.Factory;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSourceFactory;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSourceFactory;
import com.google.android.exoplayer2.upstream.cache.CacheSpan;
import com.google.android.exoplayer2.upstream.cache.CacheUtil;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import com.google.android.exoplayer2.util.Util;
import com.kantv.kt_player.ExoPlayer.exo2.source.GSYExoHttpDataSourceFactory;
import java.io.File;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableSet;

public class ExoSourceManager {
    private static final long DEFAULT_MAX_SIZE = 536870912;
    private static final String TAG = "ExoSourceManager";
    public static final int TYPE_RTMP = 4;
    private static Cache mCache = null;
    private static boolean mSkipSSLChain = false;
    private static ExoMediaSourceInterceptListener sExoMediaSourceInterceptListener;
    private boolean isCached = false;
    private Context mAppContext;
    private String mDataSource;
    private Map<String, String> mMapHeadData;

    public static ExoSourceManager newInstance(Context context, @Nullable Map<String, String> map) {
        return new ExoSourceManager(context, map);
    }

    private ExoSourceManager(Context context, Map<String, String> map) {
        this.mAppContext = context.getApplicationContext();
        this.mMapHeadData = map;
    }

    public MediaSource getMediaSource(String str, boolean z, boolean z2, boolean z3, File file, @Nullable String str2) {
        MediaSource mediaSource;
        ExoMediaSourceInterceptListener exoMediaSourceInterceptListener = sExoMediaSourceInterceptListener;
        MediaSource mediaSource2 = exoMediaSourceInterceptListener != null ? exoMediaSourceInterceptListener.getMediaSource(str, z, z2, z3, file) : null;
        if (mediaSource2 != null) {
            return mediaSource2;
        }
        this.mDataSource = str;
        Uri parse = Uri.parse(str);
        int inferContentType = inferContentType(str, str2);
        if (inferContentType == 0) {
            Factory factory = new Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file));
            Context context = this.mAppContext;
            mediaSource = new DashMediaSource.Factory(factory, new DefaultDataSourceFactory(context, (TransferListener) null, getHttpDataSourceFactory(context, z))).createMediaSource(parse);
        } else if (inferContentType == 1) {
            DefaultSsChunkSource.Factory factory2 = new DefaultSsChunkSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file));
            Context context2 = this.mAppContext;
            mediaSource = new SsMediaSource.Factory(factory2, new DefaultDataSourceFactory(context2, (TransferListener) null, getHttpDataSourceFactory(context2, z))).createMediaSource(parse);
        } else if (inferContentType != 2) {
            mediaSource = new ExtractorMediaSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file)).setExtractorsFactory(new DefaultExtractorsFactory()).createMediaSource(parse);
        } else {
            mediaSource = new HlsMediaSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file)).createMediaSource(parse);
        }
        return z3 ? new LoopingMediaSource(mediaSource) : mediaSource;
    }

    public static void setExoMediaSourceInterceptListener(ExoMediaSourceInterceptListener exoMediaSourceInterceptListener) {
        sExoMediaSourceInterceptListener = exoMediaSourceInterceptListener;
    }

    public static void resetExoMediaSourceInterceptListener() {
        sExoMediaSourceInterceptListener = null;
    }

    public static ExoMediaSourceInterceptListener getExoMediaSourceInterceptListener() {
        return sExoMediaSourceInterceptListener;
    }

    @SuppressLint({"WrongConstant"})
    public static int inferContentType(String str, @Nullable String str2) {
        String lowerInvariant = Util.toLowerInvariant(str);
        if (lowerInvariant.startsWith("rtmp:")) {
            return 4;
        }
        return inferContentType(Uri.parse(lowerInvariant), str2);
    }

    public static int inferContentType(Uri uri, @Nullable String str) {
        return Util.inferContentType(uri, str);
    }

    public static synchronized Cache getCacheSingleInstance(Context context, File file) {
        Cache cache;
        synchronized (ExoSourceManager.class) {
            String absolutePath = context.getCacheDir().getAbsolutePath();
            if (file != null) {
                absolutePath = file.getAbsolutePath();
            }
            if (mCache == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(absolutePath);
                sb.append(File.separator);
                sb.append("exo");
                String sb2 = sb.toString();
                if (!SimpleCache.isCacheFolderLocked(new File(sb2))) {
                    mCache = new SimpleCache(new File(sb2), new LeastRecentlyUsedCacheEvictor(536870912));
                }
            }
            cache = mCache;
        }
        return cache;
    }

    public void release() {
        this.isCached = false;
        Cache cache = mCache;
        if (cache != null) {
            try {
                cache.release();
                mCache = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void clearCache(Context context, File file, String str) {
        try {
            Cache cacheSingleInstance = getCacheSingleInstance(context, file);
            if (!TextUtils.isEmpty(str)) {
                if (cacheSingleInstance != null) {
                    CacheUtil.remove(cacheSingleInstance, CacheUtil.generateKey(Uri.parse(str)));
                }
            } else if (cacheSingleInstance != null) {
                for (String remove : cacheSingleInstance.getKeys()) {
                    CacheUtil.remove(cacheSingleInstance, remove);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean cachePreView(Context context, File file, String str) {
        return resolveCacheState(getCacheSingleInstance(context, file), str);
    }

    public boolean hadCached() {
        return this.isCached;
    }

    public static boolean isSkipSSLChain() {
        return mSkipSSLChain;
    }

    public static void setSkipSSLChain(boolean z) {
        mSkipSSLChain = z;
    }

    private DataSource.Factory getDataSourceFactoryCache(Context context, boolean z, boolean z2, File file) {
        if (z) {
            Cache cacheSingleInstance = getCacheSingleInstance(context, file);
            if (cacheSingleInstance != null) {
                this.isCached = resolveCacheState(cacheSingleInstance, this.mDataSource);
                return new CacheDataSourceFactory(cacheSingleInstance, getDataSourceFactory(context, z2), 2);
            }
        }
        return getDataSourceFactory(context, z2);
    }

    private DataSource.Factory getDataSourceFactory(Context context, boolean z) {
        return new DefaultDataSourceFactory(context, (TransferListener) z ? null : new DefaultBandwidthMeter(), getHttpDataSourceFactory(context, z));
    }

    private DataSource.Factory getHttpDataSourceFactory(Context context, boolean z) {
        Map<String, String> map = this.mMapHeadData;
        boolean equals = (map == null || map.size() <= 0) ? false : "true".equals(this.mMapHeadData.get("allowCrossProtocolRedirects"));
        boolean z2 = mSkipSSLChain;
        String str = TAG;
        if (z2) {
            GSYExoHttpDataSourceFactory gSYExoHttpDataSourceFactory = new GSYExoHttpDataSourceFactory(Util.getUserAgent(context, str), z ? null : new DefaultBandwidthMeter(), 8000, 8000, equals);
            Map<String, String> map2 = this.mMapHeadData;
            if (map2 != null && map2.size() > 0) {
                for (Entry entry : this.mMapHeadData.entrySet()) {
                    gSYExoHttpDataSourceFactory.getDefaultRequestProperties().set((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return gSYExoHttpDataSourceFactory;
        }
        DefaultHttpDataSourceFactory defaultHttpDataSourceFactory = new DefaultHttpDataSourceFactory(Util.getUserAgent(context, str), z ? null : new DefaultBandwidthMeter(), 8000, 8000, equals);
        Map<String, String> map3 = this.mMapHeadData;
        if (map3 != null && map3.size() > 0) {
            for (Entry entry2 : this.mMapHeadData.entrySet()) {
                defaultHttpDataSourceFactory.getDefaultRequestProperties().set((String) entry2.getKey(), (String) entry2.getValue());
            }
        }
        return defaultHttpDataSourceFactory;
    }

    private static boolean resolveCacheState(Cache cache, String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String generateKey = CacheUtil.generateKey(Uri.parse(str));
        if (!TextUtils.isEmpty(generateKey)) {
            NavigableSet<CacheSpan> cachedSpans = cache.getCachedSpans(generateKey);
            if (cachedSpans.size() != 0) {
                long j = cache.getContentMetadata(generateKey).get(ContentMetadata.KEY_CONTENT_LENGTH, -1);
                long j2 = 0;
                for (CacheSpan cacheSpan : cachedSpans) {
                    j2 += cache.getCachedLength(generateKey, cacheSpan.position, cacheSpan.length);
                }
                if (j2 >= j) {
                    return true;
                }
            }
        }
        return false;
    }
}
