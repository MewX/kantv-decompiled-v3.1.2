package com.kantv.video;

import android.content.Context;
import android.net.Uri;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.video.DummySurface;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.model.GSYModel;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import java.util.List;
import tv.danmaku.ijk.media.exo2.Exo2PlayerManager;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class MyFullScreenManager extends Exo2PlayerManager {
    private DummySurface dummySurface;
    private MyFullExoPlayer mediaPlayer;
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
        this.mediaPlayer = new MyFullExoPlayer(context);
        this.mediaPlayer.setAudioStreamType(3);
        boolean z = false;
        if (this.dummySurface == null) {
            this.dummySurface = DummySurface.newInstanceV17(context, false);
        }
        GSYModel gSYModel = (GSYModel) message.obj;
        try {
            this.mediaPlayer.setLooping(gSYModel.isLooping());
            MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
            if (gSYModel.getMapHeadData() != null && gSYModel.getMapHeadData().size() > 0) {
                z = true;
            }
            myFullExoPlayer.setPreview(z);
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
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            try {
                myFullExoPlayer.setSpeed(f, 1.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setNeedMute(boolean z) {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer == null) {
            return;
        }
        if (z) {
            myFullExoPlayer.setVolume(0.0f, 0.0f);
        } else {
            myFullExoPlayer.setVolume(1.0f, 1.0f);
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
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            myFullExoPlayer.setSurface(null);
            this.mediaPlayer.release();
        }
        DummySurface dummySurface2 = this.dummySurface;
        if (dummySurface2 != null) {
            dummySurface2.release();
            this.dummySurface = null;
        }
    }

    public int getBufferedPercentage() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.getBufferedPercentage();
        }
        return 0;
    }

    public long getNetSpeed() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        return 0;
    }

    public void start() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            myFullExoPlayer.start();
        }
    }

    public void stop() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            myFullExoPlayer.stop();
        }
    }

    public void pause() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            myFullExoPlayer.pause();
        }
    }

    public int getVideoWidth() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.getVideoHeight();
        }
        return 0;
    }

    public boolean isPlaying() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            myFullExoPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.getDuration();
        }
        return 0;
    }

    public int getVideoSarNum() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.getVideoSarNum();
        }
        return 1;
    }

    public int getVideoSarDen() {
        MyFullExoPlayer myFullExoPlayer = this.mediaPlayer;
        if (myFullExoPlayer != null) {
            return myFullExoPlayer.getVideoSarDen();
        }
        return 1;
    }
}
