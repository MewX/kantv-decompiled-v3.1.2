package com.shuyu.gsyvideoplayer.player;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.model.GSYModel;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.GSYVideoType;
import com.shuyu.gsyvideoplayer.utils.RawDataSourceProvider;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkLibLoader;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaPlayer.OnNativeInvokeListener;
import tv.danmaku.ijk.media.player.misc.IMediaDataSource;

public class IjkPlayerManager extends BasePlayerManager {
    private static IjkLibLoader ijkLibLoader = null;
    private static int logLevel = 1;
    private IjkMediaPlayer mediaPlayer;
    private List<VideoOptionModel> optionModelList;
    private Surface surface;

    public int getBufferedPercentage() {
        return -1;
    }

    public boolean isSurfaceSupportLockCanvas() {
        return true;
    }

    public IMediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        IjkLibLoader ijkLibLoader2 = ijkLibLoader;
        this.mediaPlayer = ijkLibLoader2 == null ? new IjkMediaPlayer() : new IjkMediaPlayer(ijkLibLoader2);
        this.mediaPlayer.setAudioStreamType(3);
        this.mediaPlayer.setOnNativeInvokeListener(new OnNativeInvokeListener() {
            public boolean onNativeInvoke(int i, Bundle bundle) {
                return true;
            }
        });
        GSYModel gSYModel = (GSYModel) message.obj;
        String url = gSYModel.getUrl();
        try {
            if (GSYVideoType.isMediaCodec()) {
                Debuger.printfLog("enable mediaCodec");
                this.mediaPlayer.setOption(4, "mediacodec", 1);
                this.mediaPlayer.setOption(4, "mediacodec-auto-rotate", 1);
                this.mediaPlayer.setOption(4, "mediacodec-handle-resolution-change", 1);
            }
            if (gSYModel.isCache() && iCacheManager != null) {
                iCacheManager.doCacheLogic(context, this.mediaPlayer, url, gSYModel.getMapHeadData(), gSYModel.getCachePath());
            } else if (!TextUtils.isEmpty(url)) {
                Uri parse = Uri.parse(url);
                if (parse.getScheme().equals("android.resource")) {
                    this.mediaPlayer.setDataSource((IMediaDataSource) RawDataSourceProvider.create(context, parse));
                } else {
                    this.mediaPlayer.setDataSource(url, gSYModel.getMapHeadData());
                }
            } else {
                this.mediaPlayer.setDataSource(url, gSYModel.getMapHeadData());
            }
            this.mediaPlayer.setLooping(gSYModel.isLooping());
            if (gSYModel.getSpeed() != 1.0f && gSYModel.getSpeed() > 0.0f) {
                this.mediaPlayer.setSpeed(gSYModel.getSpeed());
            }
            IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
            IjkMediaPlayer.native_setLogLevel(logLevel);
            initIJKOption(this.mediaPlayer, list);
        } catch (IOException e) {
            e.printStackTrace();
        }
        initSuccess(gSYModel);
    }

    public void showDisplay(Message message) {
        if (message.obj == null) {
            IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
            if (ijkMediaPlayer != null) {
                ijkMediaPlayer.setSurface(null);
                return;
            }
        }
        Surface surface2 = (Surface) message.obj;
        this.surface = surface2;
        if (this.mediaPlayer != null && surface2.isValid()) {
            this.mediaPlayer.setSurface(surface2);
        }
    }

    public void setSpeed(float f, boolean z) {
        if (f > 0.0f) {
            try {
                if (this.mediaPlayer != null) {
                    this.mediaPlayer.setSpeed(f);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (z) {
                VideoOptionModel videoOptionModel = new VideoOptionModel(4, "soundtouch", 1);
                List optionModelList2 = getOptionModelList();
                if (optionModelList2 != null) {
                    optionModelList2.add(videoOptionModel);
                } else {
                    optionModelList2 = new ArrayList();
                    optionModelList2.add(videoOptionModel);
                }
                setOptionModelList(optionModelList2);
            }
        }
    }

    public void setNeedMute(boolean z) {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer == null) {
            return;
        }
        if (z) {
            ijkMediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            ijkMediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    public void releaseSurface() {
        if (this.surface != null) {
            this.surface = null;
        }
    }

    public void release() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.release();
        }
    }

    public long getNetSpeed() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getTcpSpeed();
        }
        return 0;
    }

    public void setSpeedPlaying(float f, boolean z) {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.setSpeed(f);
            this.mediaPlayer.setOption(4, "soundtouch", z ? 1 : 0);
        }
    }

    public void start() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.start();
        }
    }

    public void stop() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.stop();
        }
    }

    public void pause() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.pause();
        }
    }

    public int getVideoWidth() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    public boolean isPlaying() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            ijkMediaPlayer.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getDuration();
        }
        return 0;
    }

    public int getVideoSarNum() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    public int getVideoSarDen() {
        IjkMediaPlayer ijkMediaPlayer = this.mediaPlayer;
        if (ijkMediaPlayer != null) {
            return ijkMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    private void initIJKOption(IjkMediaPlayer ijkMediaPlayer, List<VideoOptionModel> list) {
        if (list != null && list.size() > 0) {
            for (VideoOptionModel videoOptionModel : list) {
                if (videoOptionModel.getValueType() == 0) {
                    ijkMediaPlayer.setOption(videoOptionModel.getCategory(), videoOptionModel.getName(), (long) videoOptionModel.getValueInt());
                } else {
                    ijkMediaPlayer.setOption(videoOptionModel.getCategory(), videoOptionModel.getName(), videoOptionModel.getValueString());
                }
            }
        }
    }

    public List<VideoOptionModel> getOptionModelList() {
        return this.optionModelList;
    }

    public void setOptionModelList(List<VideoOptionModel> list) {
        this.optionModelList = list;
    }

    public static IjkLibLoader getIjkLibLoader() {
        return ijkLibLoader;
    }

    public static void setIjkLibLoader(IjkLibLoader ijkLibLoader2) {
        ijkLibLoader = ijkLibLoader2;
    }

    public static int getLogLevel() {
        return logLevel;
    }

    public static void setLogLevel(int i) {
        logLevel = i;
    }
}
