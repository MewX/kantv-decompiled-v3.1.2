package com.kantv.kt_player.ExoPlayer.exo2;

import android.content.Context;
import android.net.Uri;
import com.kantv.kt_player.ExoPlayer.cache.ICacheManager;
import com.kantv.kt_player.ExoPlayer.cache.ICacheManager.ICacheAvailableListener;
import com.kantv.kt_player.ExoPlayer.player.ExoMediaPlayer;
import java.io.File;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class ExoPlayerCacheManager implements ICacheManager {
    protected ExoSourceManager mExoSourceManager;

    public void setCacheAvailableListener(ICacheAvailableListener iCacheAvailableListener) {
    }

    public void doCacheLogic(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file) {
        if (iMediaPlayer instanceof ExoMediaPlayer) {
            ExoMediaPlayer exoMediaPlayer = (ExoMediaPlayer) iMediaPlayer;
            this.mExoSourceManager = exoMediaPlayer.getExoHelper();
            exoMediaPlayer.setCache(true);
            exoMediaPlayer.setCacheDir(file);
            exoMediaPlayer.setDataSource(context, Uri.parse(str), map);
            return;
        }
        throw new UnsupportedOperationException("ExoPlayerCacheManager only support IjkExo2MediaPlayer");
    }

    public void clearCache(Context context, File file, String str) {
        ExoSourceManager.clearCache(context, file, str);
    }

    public void release() {
        this.mExoSourceManager = null;
    }

    public boolean hadCached() {
        ExoSourceManager exoSourceManager = this.mExoSourceManager;
        return exoSourceManager != null && exoSourceManager.hadCached();
    }

    public boolean cachePreview(Context context, File file, String str) {
        return ExoSourceManager.cachePreView(context, file, str);
    }
}
