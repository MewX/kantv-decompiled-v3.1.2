package com.shuyu.gsyvideoplayer.player;

import android.content.Context;
import android.media.PlaybackParams;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Message;
import android.view.Surface;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.model.GSYModel;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import java.util.List;
import tv.danmaku.ijk.media.player.AndroidMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class SystemPlayerManager extends BasePlayerManager {
    private Context context;
    private long lastTimeStamp = 0;
    private long lastTotalRxBytes = 0;
    private AndroidMediaPlayer mediaPlayer;
    private boolean release;
    private Surface surface;

    public int getBufferedPercentage() {
        return -1;
    }

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
        this.mediaPlayer = new AndroidMediaPlayer();
        this.mediaPlayer.setAudioStreamType(3);
        this.release = false;
        GSYModel gSYModel = (GSYModel) message.obj;
        try {
            if (!gSYModel.isCache() || iCacheManager == null) {
                this.mediaPlayer.setDataSource(context2, Uri.parse(gSYModel.getUrl()), gSYModel.getMapHeadData());
            } else {
                iCacheManager.doCacheLogic(context2, this.mediaPlayer, gSYModel.getUrl(), gSYModel.getMapHeadData(), gSYModel.getCachePath());
            }
            this.mediaPlayer.setLooping(gSYModel.isLooping());
            if (gSYModel.getSpeed() != 1.0f && gSYModel.getSpeed() > 0.0f) {
                setSpeed(gSYModel.getSpeed());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        initSuccess(gSYModel);
    }

    public void showDisplay(Message message) {
        if (message.obj == null) {
            AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
            if (androidMediaPlayer != null && !this.release) {
                androidMediaPlayer.setSurface(null);
                return;
            }
        }
        if (message.obj != null) {
            Surface surface2 = (Surface) message.obj;
            this.surface = surface2;
            if (this.mediaPlayer != null && surface2.isValid() && !this.release) {
                this.mediaPlayer.setSurface(surface2);
            }
        }
    }

    public void setSpeed(float f, boolean z) {
        setSpeed(f);
    }

    public void setNeedMute(boolean z) {
        try {
            if (this.mediaPlayer != null && !this.release) {
                if (z) {
                    this.mediaPlayer.setVolume(0.0f, 0.0f);
                } else {
                    this.mediaPlayer.setVolume(1.0f, 1.0f);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void releaseSurface() {
        if (this.surface != null) {
            this.surface = null;
        }
    }

    public void release() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            this.release = true;
            androidMediaPlayer.release();
        }
        this.lastTotalRxBytes = 0;
        this.lastTimeStamp = 0;
    }

    public long getNetSpeed() {
        if (this.mediaPlayer != null) {
            return getNetSpeed(this.context);
        }
        return 0;
    }

    public void start() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.start();
        }
    }

    public void stop() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.stop();
        }
    }

    public void pause() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.pause();
        }
    }

    public int getVideoWidth() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    public boolean isPlaying() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getDuration();
        }
        return 0;
    }

    public int getVideoSarNum() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    public int getVideoSarDen() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    private void setSpeed(float f) {
        if (!this.release) {
            AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
            if (!(androidMediaPlayer == null || androidMediaPlayer.getInternalMediaPlayer() == null || !this.mediaPlayer.isPlayable())) {
                try {
                    if (VERSION.SDK_INT >= 23) {
                        PlaybackParams playbackParams = new PlaybackParams();
                        playbackParams.setSpeed(f);
                        this.mediaPlayer.getInternalMediaPlayer().setPlaybackParams(playbackParams);
                    } else {
                        Debuger.printfError(" not support setSpeed");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
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
