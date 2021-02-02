package com.shuyu.gsyvideoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.shuyu.gsyvideoplayer.cache.CacheFactory;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.cache.ICacheManager.ICacheAvailableListener;
import com.shuyu.gsyvideoplayer.listener.GSYMediaPlayerListener;
import com.shuyu.gsyvideoplayer.model.GSYModel;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import com.shuyu.gsyvideoplayer.player.BasePlayerManager;
import com.shuyu.gsyvideoplayer.player.IPlayerInitSuccessListener;
import com.shuyu.gsyvideoplayer.player.IPlayerManager;
import com.shuyu.gsyvideoplayer.player.PlayerFactory;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoViewBridge;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener;
import tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener;
import tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener;
import tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener;
import tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener;
import tv.danmaku.ijk.media.player.IMediaPlayer.OnSeekCompleteListener;
import tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener;

public abstract class GSYVideoBaseManager implements OnPreparedListener, OnCompletionListener, OnBufferingUpdateListener, OnSeekCompleteListener, OnErrorListener, OnVideoSizeChangedListener, OnInfoListener, ICacheAvailableListener, GSYVideoViewBridge {
    protected static final int BUFFER_TIME_OUT_ERROR = -192;
    protected static final int HANDLER_PREPARE = 0;
    protected static final int HANDLER_RELEASE = 2;
    protected static final int HANDLER_RELEASE_SURFACE = 3;
    protected static final int HANDLER_SETDISPLAY = 1;
    public static String TAG = "GSYVideoBaseManager";
    protected int bufferPoint;
    protected ICacheManager cacheManager;
    protected Context context;
    protected int currentVideoHeight = 0;
    protected int currentVideoWidth = 0;
    protected WeakReference<GSYMediaPlayerListener> lastListener;
    protected int lastState;
    protected WeakReference<GSYMediaPlayerListener> listener;
    protected MediaHandler mMediaHandler;
    protected IPlayerInitSuccessListener mPlayerInitSuccessListener;
    private Runnable mTimeOutRunnable = new Runnable() {
        public void run() {
            if (GSYVideoBaseManager.this.listener != null) {
                Debuger.printfError("time out for error listener");
                GSYVideoBaseManager.this.listener().onError(GSYVideoBaseManager.BUFFER_TIME_OUT_ERROR, GSYVideoBaseManager.BUFFER_TIME_OUT_ERROR);
            }
        }
    };
    protected Handler mainThreadHandler;
    protected boolean needMute = false;
    protected boolean needTimeOutOther;
    protected List<VideoOptionModel> optionModelList;
    protected int playPosition = -22;
    protected String playTag = "";
    protected IPlayerManager playerManager;
    protected int timeOut = 8000;

    private class MediaHandler extends Handler {
        MediaHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                GSYVideoBaseManager.this.initVideo(message);
            } else if (i == 1) {
            } else {
                if (i == 2) {
                    if (GSYVideoBaseManager.this.playerManager != null) {
                        GSYVideoBaseManager.this.playerManager.release();
                    }
                    if (GSYVideoBaseManager.this.cacheManager != null) {
                        GSYVideoBaseManager.this.cacheManager.release();
                    }
                    GSYVideoBaseManager gSYVideoBaseManager = GSYVideoBaseManager.this;
                    gSYVideoBaseManager.bufferPoint = 0;
                    gSYVideoBaseManager.setNeedMute(false);
                    GSYVideoBaseManager.this.cancelTimeOutBuffer();
                } else if (i == 3) {
                    GSYVideoBaseManager.this.releaseSurface(message);
                }
            }
        }
    }

    public int getRotateInfoFlag() {
        return 10001;
    }

    public void clearAllDefaultCache(Context context2) {
        clearDefaultCache(context2, null, null);
    }

    public void clearDefaultCache(Context context2, @Nullable File file, @Nullable String str) {
        ICacheManager iCacheManager = this.cacheManager;
        if (iCacheManager != null) {
            iCacheManager.clearCache(context2, file, str);
        } else if (getCacheManager() != null) {
            getCacheManager().clearCache(context2, file, str);
        }
    }

    /* access modifiers changed from: protected */
    public void init() {
        this.mMediaHandler = new MediaHandler(Looper.getMainLooper());
        this.mainThreadHandler = new Handler();
    }

    /* access modifiers changed from: protected */
    public IPlayerManager getPlayManager() {
        return PlayerFactory.getPlayManager();
    }

    /* access modifiers changed from: protected */
    public ICacheManager getCacheManager() {
        return CacheFactory.getCacheManager();
    }

    public GSYMediaPlayerListener listener() {
        WeakReference<GSYMediaPlayerListener> weakReference = this.listener;
        if (weakReference == null) {
            return null;
        }
        return (GSYMediaPlayerListener) weakReference.get();
    }

    public GSYMediaPlayerListener lastListener() {
        WeakReference<GSYMediaPlayerListener> weakReference = this.lastListener;
        if (weakReference == null) {
            return null;
        }
        return (GSYMediaPlayerListener) weakReference.get();
    }

    public void setListener(GSYMediaPlayerListener gSYMediaPlayerListener) {
        if (gSYMediaPlayerListener == null) {
            this.listener = null;
        } else {
            this.listener = new WeakReference<>(gSYMediaPlayerListener);
        }
    }

    public void setLastListener(GSYMediaPlayerListener gSYMediaPlayerListener) {
        if (gSYMediaPlayerListener == null) {
            this.lastListener = null;
        } else {
            this.lastListener = new WeakReference<>(gSYMediaPlayerListener);
        }
    }

    public void setSpeed(float f, boolean z) {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setSpeed(f, z);
        }
    }

    public void prepare(String str, Map<String, String> map, boolean z, float f, boolean z2, File file) {
        prepare(str, map, z, f, z2, file, null);
    }

    public void prepare(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2) {
        if (!TextUtils.isEmpty(str)) {
            Message message = new Message();
            message.what = 0;
            GSYModel gSYModel = new GSYModel(str, map, z, f, z2, file, str2);
            message.obj = gSYModel;
            sendMessage(message);
            if (this.needTimeOutOther) {
                startTimeOutBuffer();
            }
        }
    }

    public void releaseMediaPlayer() {
        Message message = new Message();
        message.what = 2;
        sendMessage(message);
        this.playTag = "";
        this.playPosition = -22;
    }

    public void setDisplay(Surface surface) {
        Message message = new Message();
        message.what = 1;
        message.obj = surface;
        showDisplay(message);
    }

    public void releaseSurface(Surface surface) {
        Message message = new Message();
        message.what = 3;
        message.obj = surface;
        sendMessage(message);
    }

    public void onPrepared(IMediaPlayer iMediaPlayer) {
        this.mainThreadHandler.post(new Runnable() {
            public void run() {
                GSYVideoBaseManager.this.cancelTimeOutBuffer();
                if (GSYVideoBaseManager.this.listener() != null) {
                    GSYVideoBaseManager.this.listener().onPrepared();
                }
            }
        });
    }

    public void onCompletion(IMediaPlayer iMediaPlayer) {
        this.mainThreadHandler.post(new Runnable() {
            public void run() {
                GSYVideoBaseManager.this.cancelTimeOutBuffer();
                if (GSYVideoBaseManager.this.listener() != null) {
                    GSYVideoBaseManager.this.listener().onAutoCompletion();
                }
            }
        });
    }

    public void onBufferingUpdate(IMediaPlayer iMediaPlayer, final int i) {
        this.mainThreadHandler.post(new Runnable() {
            public void run() {
                if (GSYVideoBaseManager.this.listener() == null) {
                    return;
                }
                if (i > GSYVideoBaseManager.this.bufferPoint) {
                    GSYVideoBaseManager.this.listener().onBufferingUpdate(i);
                } else {
                    GSYVideoBaseManager.this.listener().onBufferingUpdate(GSYVideoBaseManager.this.bufferPoint);
                }
            }
        });
    }

    public void onSeekComplete(IMediaPlayer iMediaPlayer) {
        this.mainThreadHandler.post(new Runnable() {
            public void run() {
                GSYVideoBaseManager.this.cancelTimeOutBuffer();
                if (GSYVideoBaseManager.this.listener() != null) {
                    GSYVideoBaseManager.this.listener().onSeekComplete();
                }
            }
        });
    }

    public boolean onError(IMediaPlayer iMediaPlayer, final int i, final int i2) {
        this.mainThreadHandler.post(new Runnable() {
            public void run() {
                GSYVideoBaseManager.this.cancelTimeOutBuffer();
                if (GSYVideoBaseManager.this.listener() != null) {
                    GSYVideoBaseManager.this.listener().onError(i, i2);
                }
            }
        });
        return true;
    }

    public boolean onInfo(IMediaPlayer iMediaPlayer, final int i, final int i2) {
        this.mainThreadHandler.post(new Runnable() {
            public void run() {
                if (GSYVideoBaseManager.this.needTimeOutOther) {
                    int i = i;
                    if (i == 701) {
                        GSYVideoBaseManager.this.startTimeOutBuffer();
                    } else if (i == 702) {
                        GSYVideoBaseManager.this.cancelTimeOutBuffer();
                    }
                }
                if (GSYVideoBaseManager.this.listener() != null) {
                    GSYVideoBaseManager.this.listener().onInfo(i, i2);
                }
            }
        });
        return false;
    }

    public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
        this.currentVideoWidth = iMediaPlayer.getVideoWidth();
        this.currentVideoHeight = iMediaPlayer.getVideoHeight();
        this.mainThreadHandler.post(new Runnable() {
            public void run() {
                if (GSYVideoBaseManager.this.listener() != null) {
                    GSYVideoBaseManager.this.listener().onVideoSizeChanged();
                }
            }
        });
    }

    public void onCacheAvailable(File file, String str, int i) {
        this.bufferPoint = i;
    }

    public int getLastState() {
        return this.lastState;
    }

    public void setLastState(int i) {
        this.lastState = i;
    }

    public int getCurrentVideoWidth() {
        return this.currentVideoWidth;
    }

    public int getCurrentVideoHeight() {
        return this.currentVideoHeight;
    }

    public void setCurrentVideoHeight(int i) {
        this.currentVideoHeight = i;
    }

    public void setCurrentVideoWidth(int i) {
        this.currentVideoWidth = i;
    }

    public String getPlayTag() {
        return this.playTag;
    }

    public void setPlayTag(String str) {
        this.playTag = str;
    }

    public int getPlayPosition() {
        return this.playPosition;
    }

    public void setPlayPosition(int i) {
        this.playPosition = i;
    }

    public boolean isCacheFile() {
        ICacheManager iCacheManager = this.cacheManager;
        return iCacheManager != null && iCacheManager.hadCached();
    }

    public boolean cachePreview(Context context2, File file, String str) {
        if (getCacheManager() != null) {
            return getCacheManager().cachePreview(context2, file, str);
        }
        return false;
    }

    public long getNetSpeed() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getNetSpeed();
        }
        return 0;
    }

    public void clearCache(Context context2, File file, String str) {
        clearDefaultCache(context2, file, str);
    }

    public int getBufferedPercentage() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getBufferedPercentage();
        }
        return 0;
    }

    public void setSpeedPlaying(float f, boolean z) {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setSpeedPlaying(f, z);
        }
    }

    public IPlayerManager getPlayer() {
        return this.playerManager;
    }

    public void start() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.start();
        }
    }

    public void stop() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.stop();
        }
    }

    public void pause() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.pause();
        }
    }

    public int getVideoWidth() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoWidth();
        }
        return 0;
    }

    public int getVideoHeight() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoHeight();
        }
        return 0;
    }

    public boolean isPlaying() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.isPlaying();
        }
        return false;
    }

    public void seekTo(long j) {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.seekTo(j);
        }
    }

    public long getCurrentPosition() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getCurrentPosition();
        }
        return 0;
    }

    public long getDuration() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getDuration();
        }
        return 0;
    }

    public int getVideoSarNum() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoSarNum();
        }
        return 0;
    }

    public int getVideoSarDen() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoSarDen();
        }
        return 0;
    }

    public boolean isSurfaceSupportLockCanvas() {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.isSurfaceSupportLockCanvas();
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void sendMessage(Message message) {
        this.mMediaHandler.sendMessage(message);
    }

    /* access modifiers changed from: private */
    public void initVideo(Message message) {
        try {
            this.currentVideoWidth = 0;
            this.currentVideoHeight = 0;
            if (this.playerManager != null) {
                this.playerManager.release();
            }
            this.playerManager = getPlayManager();
            this.cacheManager = getCacheManager();
            if (this.cacheManager != null) {
                this.cacheManager.setCacheAvailableListener(this);
            }
            if (this.playerManager instanceof BasePlayerManager) {
                ((BasePlayerManager) this.playerManager).setPlayerInitSuccessListener(this.mPlayerInitSuccessListener);
            }
            this.playerManager.initVideoPlayer(this.context, message, this.optionModelList, this.cacheManager);
            setNeedMute(this.needMute);
            IMediaPlayer mediaPlayer = this.playerManager.getMediaPlayer();
            mediaPlayer.setOnCompletionListener(this);
            mediaPlayer.setOnBufferingUpdateListener(this);
            mediaPlayer.setScreenOnWhilePlaying(true);
            mediaPlayer.setOnPreparedListener(this);
            mediaPlayer.setOnSeekCompleteListener(this);
            mediaPlayer.setOnErrorListener(this);
            mediaPlayer.setOnInfoListener(this);
            mediaPlayer.setOnVideoSizeChangedListener(this);
            mediaPlayer.prepareAsync();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void startTimeOutBuffer() {
        Debuger.printfError("startTimeOutBuffer");
        this.mainThreadHandler.postDelayed(this.mTimeOutRunnable, (long) this.timeOut);
    }

    /* access modifiers changed from: protected */
    public void cancelTimeOutBuffer() {
        Debuger.printfError("cancelTimeOutBuffer");
        if (this.needTimeOutOther) {
            this.mainThreadHandler.removeCallbacks(this.mTimeOutRunnable);
        }
    }

    /* access modifiers changed from: private */
    public void releaseSurface(Message message) {
        if (message.obj != null) {
            IPlayerManager iPlayerManager = this.playerManager;
            if (iPlayerManager != null) {
                iPlayerManager.releaseSurface();
            }
        }
    }

    private void showDisplay(Message message) {
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.showDisplay(message);
        }
    }

    public void initContext(Context context2) {
        this.context = context2.getApplicationContext();
    }

    public void enableRawPlay(Context context2) {
        this.context = context2.getApplicationContext();
    }

    public List<VideoOptionModel> getOptionModelList() {
        return this.optionModelList;
    }

    public void setOptionModelList(List<VideoOptionModel> list) {
        this.optionModelList = list;
    }

    public boolean isNeedMute() {
        return this.needMute;
    }

    public void setNeedMute(boolean z) {
        this.needMute = z;
        IPlayerManager iPlayerManager = this.playerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setNeedMute(z);
        }
    }

    public int getTimeOut() {
        return this.timeOut;
    }

    public boolean isNeedTimeOutOther() {
        return this.needTimeOutOther;
    }

    public void setTimeOut(int i, boolean z) {
        this.timeOut = i;
        this.needTimeOutOther = z;
    }

    public IPlayerManager getCurPlayerManager() {
        return this.playerManager;
    }

    public ICacheManager getCurCacheManager() {
        return this.cacheManager;
    }

    public IPlayerInitSuccessListener getPlayerPreparedSuccessListener() {
        return this.mPlayerInitSuccessListener;
    }

    public void setPlayerInitSuccessListener(IPlayerInitSuccessListener iPlayerInitSuccessListener) {
        this.mPlayerInitSuccessListener = iPlayerInitSuccessListener;
    }
}
