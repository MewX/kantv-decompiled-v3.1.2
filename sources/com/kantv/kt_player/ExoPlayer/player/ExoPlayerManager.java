package com.kantv.kt_player.ExoPlayer.player;

import android.content.Context;
import android.net.Uri;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.video.DummySurface;
import com.kantv.kt_player.ExoPlayer.cache.ICacheManager;
import com.kantv.kt_player.ExoPlayer.model.GSYModel;
import com.kantv.kt_player.ExoPlayer.model.VideoOptionModel;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class ExoPlayerManager implements IPlayerManager {
    private DummySurface dummySurface;
    private ExoMediaPlayer mediaPlayer;
    private Surface surface;

    public boolean isSurfaceSupportLockCanvas() {
        return false;
    }

    public void setSpeedPlaying(float f, boolean z) {
    }

    public IMediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        this.mediaPlayer = new ExoMediaPlayer(context);
        this.mediaPlayer.setAudioStreamType(3);
        boolean z = false;
        if (this.dummySurface == null) {
            this.dummySurface = DummySurface.newInstanceV17(context, false);
        }
        GSYModel gSYModel = (GSYModel) message.obj;
        try {
            this.mediaPlayer.setLooping(gSYModel.isLooping());
            ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
            if (gSYModel.getMapHeadData() != null && gSYModel.getMapHeadData().size() > 0) {
                z = true;
            }
            exoMediaPlayer.setPreview(z);
            if (!gSYModel.isCache() || iCacheManager == null) {
                this.mediaPlayer.setCache(gSYModel.isCache());
                this.mediaPlayer.setCacheDir(gSYModel.getCachePath());
                this.mediaPlayer.setOverrideExtension(gSYModel.getOverrideExtension());
                this.mediaPlayer.setDataSource(context, Uri.parse(gSYModel.getUrl()), gSYModel.getMapHeadData());
            } else {
                iCacheManager.doCacheLogic(context, this.mediaPlayer, gSYModel.getUrl(), gSYModel.getMapHeadData(), gSYModel.getCachePath());
            }
            if (gSYModel.getSpeed() != 1.0f && gSYModel.getSpeed() > 0.0f) {
                this.mediaPlayer.setSpeed(gSYModel.getSpeed(), 1.0f);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void prepare(Context context, Message message) {
        this.mediaPlayer.prepare(((GSYModel) message.obj).getUrl());
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
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            try {
                exoMediaPlayer.setSpeed(f, 1.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setNeedMute(boolean z) {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer == null) {
            return;
        }
        if (z) {
            exoMediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            exoMediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    public void releaseSurface() {
        Surface surface2 = this.surface;
        if (surface2 != null) {
            surface2.release();
            this.surface = null;
        }
    }

    public void release() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            exoMediaPlayer.setSurface(null);
            this.mediaPlayer.release();
        }
        DummySurface dummySurface2 = this.dummySurface;
        if (dummySurface2 != null) {
            dummySurface2.release();
            this.dummySurface = null;
        }
    }

    public int getBufferedPercentage() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.getBufferedPercentage();
        }
        return 0;
    }

    public long getNetSpeed() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        return 0;
    }

    public void start() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            exoMediaPlayer.start();
        }
    }

    public void stop() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            exoMediaPlayer.stop();
        }
    }

    public void pause() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            exoMediaPlayer.pause();
        }
    }

    public int getVideoWidth() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    public boolean isPlaying() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            exoMediaPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.getDuration();
        }
        return 0;
    }

    public int getVideoSarNum() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    public int getVideoSarDen() {
        ExoMediaPlayer exoMediaPlayer = this.mediaPlayer;
        if (exoMediaPlayer != null) {
            return exoMediaPlayer.getVideoSarDen();
        }
        return 1;
    }
}
