package com.kantv.video;

import android.content.Context;
import android.net.Uri;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.video.DummySurface;
import com.kantv.common.log.AILog;
import com.kantv.ui.activity.VideoPlayActivity;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import java.util.List;
import tv.danmaku.ijk.media.exo2.Exo2PlayerManager;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class MyExoPlayerManager extends Exo2PlayerManager {
    private DummySurface dummySurface;
    private MyExoPlayer mediaPlayer;
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
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        String str = VideoPlayActivity.TAG;
        if (myExoPlayer == null) {
            this.mediaPlayer = new MyExoPlayer(context);
            this.mediaPlayer.setAudioStreamType(3);
            boolean z = false;
            if (this.dummySurface == null) {
                this.dummySurface = DummySurface.newInstanceV17(context, false);
            }
            MyGSYModel myGSYModel = (MyGSYModel) message.obj;
            try {
                this.mediaPlayer.setLooping(myGSYModel.isLooping());
                MyExoPlayer myExoPlayer2 = this.mediaPlayer;
                if (myGSYModel.getMapHeadData() != null && myGSYModel.getMapHeadData().size() > 0) {
                    z = true;
                }
                myExoPlayer2.setPreview(z);
                if (!myGSYModel.isCache() || iCacheManager == null) {
                    AILog.d(str, "initVideoPlayer:setDataSource");
                    this.mediaPlayer.setCache(myGSYModel.isCache());
                    this.mediaPlayer.setCacheDir(myGSYModel.getCachePath());
                    this.mediaPlayer.setOverrideExtension(myGSYModel.getOverrideExtension());
                    this.mediaPlayer.setDataSource(context, Uri.parse(myGSYModel.getUrl()), myGSYModel.getMapHeadData());
                } else {
                    AILog.d(str, "initVideoPlayer:doCacheLogic");
                    iCacheManager.doCacheLogic(context, this.mediaPlayer, myGSYModel.getUrl(), myGSYModel.getMapHeadData(), myGSYModel.getCachePath());
                }
                if (myGSYModel.getSpeed() != 1.0f && myGSYModel.getSpeed() > 0.0f) {
                    this.mediaPlayer.setSpeed(myGSYModel.getSpeed(), 1.0f);
                }
                if (myGSYModel.getAds() != null && myGSYModel.getAds().size() > 0) {
                    this.mediaPlayer.setAds(myGSYModel.getAds());
                }
                if (myGSYModel.getListener() != null) {
                    this.mediaPlayer.setOnAdEndListener(myGSYModel.getListener());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("initVideoPlayer:");
        sb.append(this.mediaPlayer);
        AILog.d(str, sb.toString());
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

    public void release() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            myExoPlayer.setSurface(null);
            this.mediaPlayer.release();
        }
        DummySurface dummySurface2 = this.dummySurface;
        if (dummySurface2 != null) {
            dummySurface2.release();
            this.dummySurface = null;
        }
    }

    public void setSpeed(float f, boolean z) {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            try {
                myExoPlayer.setSpeed(f, 1.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setNeedMute(boolean z) {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer == null) {
            return;
        }
        if (z) {
            myExoPlayer.setVolume(0.0f, 0.0f);
        } else {
            myExoPlayer.setVolume(1.0f, 1.0f);
        }
    }

    public int getBufferedPercentage() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.getBufferedPercentage();
        }
        return 0;
    }

    public long getNetSpeed() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        return 0;
    }

    public void start() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            myExoPlayer.start();
        }
    }

    public void stop() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            myExoPlayer.stop();
        }
    }

    public void pause() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            myExoPlayer.pause();
        }
    }

    public int getVideoWidth() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.getVideoHeight();
        }
        return 0;
    }

    public boolean isPlaying() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            myExoPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.getDuration();
        }
        return 0;
    }

    public int getVideoSarNum() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.getVideoSarNum();
        }
        return 1;
    }

    public int getVideoSarDen() {
        MyExoPlayer myExoPlayer = this.mediaPlayer;
        if (myExoPlayer != null) {
            return myExoPlayer.getVideoSarDen();
        }
        return 1;
    }
}
