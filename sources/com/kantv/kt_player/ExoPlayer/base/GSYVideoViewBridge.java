package com.kantv.kt_player.ExoPlayer.base;

import android.content.Context;
import android.view.Surface;
import com.kantv.kt_player.ExoPlayer.listener.GSYMediaPlayerListener;
import java.io.File;
import java.util.Map;

public interface GSYVideoViewBridge {
    boolean cachePreview(Context context, File file, String str);

    void clearCache(Context context, File file, String str);

    int getBufferedPercentage();

    long getCurrentPosition();

    int getCurrentVideoHeight();

    int getCurrentVideoWidth();

    long getDuration();

    int getLastState();

    long getNetSpeed();

    int getPlayPosition();

    String getPlayTag();

    int getRotateInfoFlag();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    void initVideo(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2);

    boolean isCacheFile();

    boolean isPlaying();

    boolean isSurfaceSupportLockCanvas();

    GSYMediaPlayerListener listener();

    void pause();

    void prepare(String str, Map<String, String> map, boolean z, float f, boolean z2, File file);

    void prepare(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2);

    void releaseMediaPlayer();

    void releaseSurface(Surface surface);

    void seekTo(long j);

    void setCurrentVideoHeight(int i);

    void setCurrentVideoWidth(int i);

    void setDisplay(Surface surface);

    void setLastState(int i);

    void setListener(GSYMediaPlayerListener gSYMediaPlayerListener);

    void setPlayPosition(int i);

    void setPlayTag(String str);

    void setSpeed(float f, boolean z);

    void setSpeedPlaying(float f, boolean z);

    void start();

    void stop();
}
