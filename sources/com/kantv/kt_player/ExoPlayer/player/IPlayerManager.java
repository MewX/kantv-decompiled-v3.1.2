package com.kantv.kt_player.ExoPlayer.player;

import android.content.Context;
import android.os.Message;
import com.kantv.kt_player.ExoPlayer.cache.ICacheManager;
import com.kantv.kt_player.ExoPlayer.model.VideoOptionModel;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public interface IPlayerManager {
    int getBufferedPercentage();

    long getCurrentPosition();

    long getDuration();

    IMediaPlayer getMediaPlayer();

    long getNetSpeed();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager);

    boolean isPlaying();

    boolean isSurfaceSupportLockCanvas();

    void pause();

    void prepare(Context context, Message message);

    void release();

    void releaseSurface();

    void seekTo(long j);

    void setNeedMute(boolean z);

    void setSpeed(float f, boolean z);

    void setSpeedPlaying(float f, boolean z);

    void showDisplay(Message message);

    void start();

    void stop();
}
