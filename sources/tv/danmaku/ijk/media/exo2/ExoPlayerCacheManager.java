package tv.danmaku.ijk.media.exo2;

import android.content.Context;
import android.net.Uri;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.cache.ICacheManager.ICacheAvailableListener;
import java.io.File;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class ExoPlayerCacheManager implements ICacheManager {
    protected ExoSourceManager mExoSourceManager;

    public void setCacheAvailableListener(ICacheAvailableListener iCacheAvailableListener) {
    }

    public void doCacheLogic(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file) {
        if (iMediaPlayer instanceof IjkExo2MediaPlayer) {
            IjkExo2MediaPlayer ijkExo2MediaPlayer = (IjkExo2MediaPlayer) iMediaPlayer;
            this.mExoSourceManager = ijkExo2MediaPlayer.getExoHelper();
            ijkExo2MediaPlayer.setCache(true);
            ijkExo2MediaPlayer.setCacheDir(file);
            ijkExo2MediaPlayer.setDataSource(context, Uri.parse(str), map);
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
