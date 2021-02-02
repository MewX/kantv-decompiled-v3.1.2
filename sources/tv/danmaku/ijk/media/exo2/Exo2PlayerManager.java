package tv.danmaku.ijk.media.exo2;

import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.video.DummySurface;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.model.GSYModel;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import com.shuyu.gsyvideoplayer.player.BasePlayerManager;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class Exo2PlayerManager extends BasePlayerManager {
    private Context context;
    private DummySurface dummySurface;
    private long lastTimeStamp = 0;
    private long lastTotalRxBytes = 0;
    private IjkExo2MediaPlayer mediaPlayer;
    private Surface surface;

    public boolean isSurfaceSupportLockCanvas() {
        return false;
    }

    public void setSpeedPlaying(float f, boolean z) {
    }

    public IMediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    public void initVideoPlayer(Context context2, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        this.context = context2.getApplicationContext();
        this.mediaPlayer = new IjkExo2MediaPlayer(context2);
        this.mediaPlayer.setAudioStreamType(3);
        boolean z = false;
        if (this.dummySurface == null) {
            this.dummySurface = DummySurface.newInstanceV17(context2, false);
        }
        GSYModel gSYModel = (GSYModel) message.obj;
        try {
            this.mediaPlayer.setLooping(gSYModel.isLooping());
            IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
            if (gSYModel.getMapHeadData() != null && gSYModel.getMapHeadData().size() > 0) {
                z = true;
            }
            ijkExo2MediaPlayer.setPreview(z);
            if (!gSYModel.isCache() || iCacheManager == null) {
                this.mediaPlayer.setCache(gSYModel.isCache());
                this.mediaPlayer.setCacheDir(gSYModel.getCachePath());
                this.mediaPlayer.setOverrideExtension(gSYModel.getOverrideExtension());
                this.mediaPlayer.setDataSource(context2, Uri.parse(gSYModel.getUrl()), gSYModel.getMapHeadData());
            } else {
                iCacheManager.doCacheLogic(context2, this.mediaPlayer, gSYModel.getUrl(), gSYModel.getMapHeadData(), gSYModel.getCachePath());
            }
            if (gSYModel.getSpeed() != 1.0f && gSYModel.getSpeed() > 0.0f) {
                this.mediaPlayer.setSpeed(gSYModel.getSpeed(), 1.0f);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        initSuccess(gSYModel);
    }

    public void showDisplay(Message message) {
        if (this.mediaPlayer != null) {
            if (message.obj == null) {
                this.mediaPlayer.setSurface(this.dummySurface);
            } else {
                Surface surface2 = (Surface) message.obj;
                this.surface = surface2;
                this.mediaPlayer.setSurface(surface2);
            }
        }
    }

    public void setSpeed(float f, boolean z) {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            try {
                ijkExo2MediaPlayer.setSpeed(f, 1.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setNeedMute(boolean z) {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer == null) {
            return;
        }
        if (z) {
            ijkExo2MediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            ijkExo2MediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    public void releaseSurface() {
        if (this.surface != null) {
            this.surface = null;
        }
    }

    public void release() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            ijkExo2MediaPlayer.setSurface(null);
            this.mediaPlayer.release();
        }
        DummySurface dummySurface2 = this.dummySurface;
        if (dummySurface2 != null) {
            dummySurface2.release();
            this.dummySurface = null;
        }
        this.lastTotalRxBytes = 0;
        this.lastTimeStamp = 0;
    }

    public int getBufferedPercentage() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.getBufferedPercentage();
        }
        return 0;
    }

    public long getNetSpeed() {
        if (this.mediaPlayer != null) {
            return getNetSpeed(this.context);
        }
        return 0;
    }

    public void start() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            ijkExo2MediaPlayer.start();
        }
    }

    public void stop() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            ijkExo2MediaPlayer.stop();
        }
    }

    public void pause() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            ijkExo2MediaPlayer.pause();
        }
    }

    public int getVideoWidth() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.getVideoHeight();
        }
        return 0;
    }

    public boolean isPlaying() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            ijkExo2MediaPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.getDuration();
        }
        return 0;
    }

    public int getVideoSarNum() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    public int getVideoSarDen() {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            return ijkExo2MediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    public void setSeekParameter(@Nullable SeekParameters seekParameters) {
        IjkExo2MediaPlayer ijkExo2MediaPlayer = this.mediaPlayer;
        if (ijkExo2MediaPlayer != null) {
            ijkExo2MediaPlayer.setSeekParameter(seekParameters);
        }
    }

    private long getNetSpeed(Context context2) {
        if (context2 == null) {
            return 0;
        }
        long totalRxBytes = TrafficStats.getUidRxBytes(context2.getApplicationInfo().uid) == -1 ? 0 : TrafficStats.getTotalRxBytes() / 1024;
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.lastTimeStamp;
        if (j == 0) {
            return j;
        }
        long j2 = ((totalRxBytes - this.lastTotalRxBytes) * 1000) / j;
        this.lastTimeStamp = currentTimeMillis;
        this.lastTotalRxBytes = totalRxBytes;
        return j2;
    }
}
