package com.kantv.kt_player.ExoPlayer.cache;

import android.content.Context;
import java.io.File;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public interface ICacheManager {

    public interface ICacheAvailableListener {
        void onCacheAvailable(File file, String str, int i);
    }

    boolean cachePreview(Context context, File file, String str);

    void clearCache(Context context, File file, String str);

    void doCacheLogic(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file);

    boolean hadCached();

    void release();

    void setCacheAvailableListener(ICacheAvailableListener iCacheAvailableListener);
}
