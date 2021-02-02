package com.shuyu.gsyvideoplayer.video.base;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.shuyu.gsyvideoplayer.R;
import com.shuyu.gsyvideoplayer.listener.GSYMediaPlayerListener;
import com.shuyu.gsyvideoplayer.listener.VideoAllCallBack;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.NetInfoModule;
import com.shuyu.gsyvideoplayer.utils.NetInfoModule.NetChangeListener;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public abstract class GSYVideoView extends GSYTextureRenderView implements GSYMediaPlayerListener {
    public static final int CHANGE_DELAY_TIME = 2000;
    public static final int CURRENT_STATE_AUTO_COMPLETE = 6;
    public static final int CURRENT_STATE_ERROR = 7;
    public static final int CURRENT_STATE_NORMAL = 0;
    public static final int CURRENT_STATE_PAUSE = 5;
    public static final int CURRENT_STATE_PLAYING = 2;
    public static final int CURRENT_STATE_PLAYING_BUFFERING_START = 3;
    public static final int CURRENT_STATE_PREPAREING = 1;
    protected AudioManager mAudioManager;
    protected int mBackUpPlayingBufferState = -1;
    protected int mBufferPoint;
    protected boolean mCache = false;
    protected File mCachePath;
    protected Context mContext;
    protected long mCurrentPosition;
    /* access modifiers changed from: protected */
    public int mCurrentState = -1;
    protected boolean mHadPlay = false;
    protected boolean mHadPrepared = false;
    /* access modifiers changed from: protected */
    public boolean mIfCurrentIsFullscreen = false;
    protected boolean mLooping = false;
    protected Map<String, String> mMapHeadData = new HashMap();
    protected boolean mNetChanged = false;
    protected NetInfoModule mNetInfoModule;
    protected String mNetSate = "NORMAL";
    protected String mOriginUrl;
    protected String mOverrideExtension;
    protected boolean mPauseBeforePrepared = false;
    protected int mPlayPosition = -22;
    protected String mPlayTag = "";
    protected boolean mReleaseWhenLossAudio = true;
    protected long mSaveChangeViewTIme = 0;
    protected int mScreenHeight;
    protected int mScreenWidth;
    protected long mSeekOnStart = -1;
    protected boolean mShowPauseCover = false;
    protected boolean mSoundTouch = false;
    protected float mSpeed = 1.0f;
    protected boolean mStartAfterPrepared = true;
    /* access modifiers changed from: protected */
    public String mTitle;
    /* access modifiers changed from: protected */
    public String mUrl;
    protected VideoAllCallBack mVideoAllCallBack;
    protected OnAudioFocusChangeListener onAudioFocusChangeListener = new OnAudioFocusChangeListener() {
        public void onAudioFocusChange(int i) {
            if (i == -3) {
                GSYVideoView.this.onLossTransientCanDuck();
            } else if (i == -2) {
                GSYVideoView.this.onLossTransientAudio();
            } else if (i == -1) {
                GSYVideoView.this.onLossAudio();
            } else if (i == 1) {
                GSYVideoView.this.onGankAudio();
            }
        }
    };

    /* access modifiers changed from: protected */
    public abstract boolean backFromFull(Context context);

    public abstract GSYVideoViewBridge getGSYVideoManager();

    public abstract int getLayoutId();

    /* access modifiers changed from: protected */
    public void onGankAudio() {
    }

    /* access modifiers changed from: protected */
    public void onLossTransientCanDuck() {
    }

    /* access modifiers changed from: protected */
    public abstract void releaseVideos();

    /* access modifiers changed from: protected */
    public abstract void setStateAndUi(int i);

    public abstract void startPlayLogic();

    public GSYVideoView(@NonNull Context context) {
        super(context);
        init(context);
    }

    public GSYVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public GSYVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public GSYVideoView(Context context, Boolean bool) {
        super(context);
        this.mIfCurrentIsFullscreen = bool.booleanValue();
        init(context);
    }

    /* access modifiers changed from: protected */
    public void showPauseCover() {
        if (this.mCurrentState == 5 && this.mFullPauseBitmap != null && !this.mFullPauseBitmap.isRecycled() && this.mShowPauseCover && this.mSurface != null && this.mSurface.isValid() && getGSYVideoManager().isSurfaceSupportLockCanvas()) {
            try {
                RectF rectF = new RectF(0.0f, 0.0f, (float) this.mTextureView.getWidth(), (float) this.mTextureView.getHeight());
                Canvas lockCanvas = this.mSurface.lockCanvas(new Rect(0, 0, this.mTextureView.getWidth(), this.mTextureView.getHeight()));
                if (lockCanvas != null) {
                    lockCanvas.drawBitmap(this.mFullPauseBitmap, null, rectF, null);
                    this.mSurface.unlockCanvasAndPost(lockCanvas);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void releasePauseCover() {
        try {
            if (this.mCurrentState != 5 && this.mFullPauseBitmap != null && !this.mFullPauseBitmap.isRecycled() && this.mShowPauseCover) {
                this.mFullPauseBitmap.recycle();
                this.mFullPauseBitmap = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getCurrentVideoWidth() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoWidth();
        }
        return 0;
    }

    public int getCurrentVideoHeight() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoHeight();
        }
        return 0;
    }

    public int getVideoSarNum() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoSarNum();
        }
        return 0;
    }

    public int getVideoSarDen() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoSarDen();
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void updatePauseCover() {
        if ((this.mFullPauseBitmap == null || this.mFullPauseBitmap.isRecycled()) && this.mShowPauseCover) {
            try {
                initCover();
            } catch (Exception e) {
                e.printStackTrace();
                this.mFullPauseBitmap = null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public Context getActivityContext() {
        return CommonUtil.getActivityContext(getContext());
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        if (getActivityContext() != null) {
            this.mContext = getActivityContext();
        } else {
            this.mContext = context;
        }
        initInflate(this.mContext);
        this.mTextureViewContainer = (ViewGroup) findViewById(R.id.surface_container);
        if (!isInEditMode()) {
            this.mScreenWidth = this.mContext.getResources().getDisplayMetrics().widthPixels;
            this.mScreenHeight = this.mContext.getResources().getDisplayMetrics().heightPixels;
            this.mAudioManager = (AudioManager) this.mContext.getApplicationContext().getSystemService("audio");
        }
    }

    /* access modifiers changed from: protected */
    public void initInflate(Context context) {
        try {
            View.inflate(context, getLayoutId(), this);
        } catch (InflateException e) {
            if (!e.toString().contains("GSYImageCover")) {
                e.printStackTrace();
                return;
            }
            Debuger.printfError("********************\n*****   注意   *************************\n*该版本需要清除布局文件中的GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n");
            e.printStackTrace();
            throw new InflateException("该版本需要清除布局文件中的GSYImageCover，please remove GSYImageCover from your layout");
        }
    }

    /* access modifiers changed from: protected */
    public void startButtonLogic() {
        if (this.mVideoAllCallBack != null && this.mCurrentState == 0) {
            Debuger.printfLog("onClickStartIcon");
            this.mVideoAllCallBack.onClickStartIcon(this.mOriginUrl, this.mTitle, this);
        } else if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onClickStartError");
            this.mVideoAllCallBack.onClickStartError(this.mOriginUrl, this.mTitle, this);
        }
        prepareVideo();
    }

    /* access modifiers changed from: protected */
    public void prepareVideo() {
        startPrepare();
    }

    /* access modifiers changed from: protected */
    public void startPrepare() {
        if (getGSYVideoManager().listener() != null) {
            getGSYVideoManager().listener().onCompletion();
        }
        if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onStartPrepared");
            this.mVideoAllCallBack.onStartPrepared(this.mOriginUrl, this.mTitle, this);
        }
        getGSYVideoManager().setListener(this);
        getGSYVideoManager().setPlayTag(this.mPlayTag);
        getGSYVideoManager().setPlayPosition(this.mPlayPosition);
        this.mAudioManager.requestAudioFocus(this.onAudioFocusChangeListener, 3, 2);
        Context context = this.mContext;
        if (context instanceof Activity) {
            ((Activity) context).getWindow().addFlags(128);
        }
        this.mBackUpPlayingBufferState = -1;
        GSYVideoViewBridge gSYVideoManager = getGSYVideoManager();
        String str = this.mUrl;
        Map map = this.mMapHeadData;
        if (map == null) {
            map = new HashMap();
        }
        gSYVideoManager.prepare(str, map, this.mLooping, this.mSpeed, this.mCache, this.mCachePath, this.mOverrideExtension);
        setStateAndUi(1);
    }

    /* access modifiers changed from: protected */
    public void onLossAudio() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                if (GSYVideoView.this.mReleaseWhenLossAudio) {
                    GSYVideoView.this.releaseVideos();
                } else {
                    GSYVideoView.this.onVideoPause();
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onLossTransientAudio() {
        try {
            onVideoPause();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean setUp(String str, boolean z, String str2) {
        return setUp(str, z, null, str2);
    }

    public boolean setUp(String str, boolean z, File file, Map<String, String> map, String str2) {
        if (!setUp(str, z, file, str2)) {
            return false;
        }
        Map<String, String> map2 = this.mMapHeadData;
        if (map2 != null) {
            map2.clear();
        } else {
            this.mMapHeadData = new HashMap();
        }
        if (map != null) {
            this.mMapHeadData.putAll(map);
        }
        return true;
    }

    public boolean setUp(String str, boolean z, File file, String str2) {
        return setUp(str, z, file, str2, true);
    }

    /* access modifiers changed from: protected */
    public boolean setUp(String str, boolean z, File file, String str2, boolean z2) {
        this.mCache = z;
        this.mCachePath = file;
        this.mOriginUrl = str;
        if (isCurrentMediaListener() && System.currentTimeMillis() - this.mSaveChangeViewTIme < 2000) {
            return false;
        }
        this.mCurrentState = 0;
        this.mUrl = str;
        this.mTitle = str2;
        if (z2) {
            setStateAndUi(0);
        }
        return true;
    }

    public void onVideoReset() {
        setStateAndUi(0);
    }

    public void onVideoPause() {
        if (this.mCurrentState == 1) {
            this.mPauseBeforePrepared = true;
        }
        try {
            if (getGSYVideoManager() != null && getGSYVideoManager().isPlaying()) {
                setStateAndUi(5);
                this.mCurrentPosition = getGSYVideoManager().getCurrentPosition();
                if (getGSYVideoManager() != null) {
                    getGSYVideoManager().pause();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onVideoResume() {
        onVideoResume(true);
    }

    public void onVideoResume(boolean z) {
        this.mPauseBeforePrepared = false;
        if (this.mCurrentState == 5) {
            try {
                if (this.mCurrentPosition >= 0 && getGSYVideoManager() != null) {
                    if (z) {
                        getGSYVideoManager().seekTo(this.mCurrentPosition);
                    }
                    getGSYVideoManager().start();
                    setStateAndUi(2);
                    if (this.mAudioManager != null && !this.mReleaseWhenLossAudio) {
                        this.mAudioManager.requestAudioFocus(this.onAudioFocusChangeListener, 3, 2);
                    }
                    this.mCurrentPosition = 0;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void netWorkErrorLogic() {
        final long currentPositionWhenPlaying = (long) getCurrentPositionWhenPlaying();
        StringBuilder sb = new StringBuilder();
        sb.append("******* Net State Changed. renew player to connect *******");
        sb.append(currentPositionWhenPlaying);
        Debuger.printfError(sb.toString());
        getGSYVideoManager().releaseMediaPlayer();
        postDelayed(new Runnable() {
            public void run() {
                GSYVideoView.this.setSeekOnStart(currentPositionWhenPlaying);
                GSYVideoView.this.startPlayLogic();
            }
        }, 500);
    }

    /* access modifiers changed from: protected */
    public void deleteCacheFileWhenError() {
        clearCurrentCache();
        StringBuilder sb = new StringBuilder();
        sb.append("Link Or mCache Error, Please Try Again ");
        sb.append(this.mOriginUrl);
        Debuger.printfError(sb.toString());
        if (this.mCache) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mCache Link ");
            sb2.append(this.mUrl);
            Debuger.printfError(sb2.toString());
        }
        this.mUrl = this.mOriginUrl;
    }

    public void onPrepared() {
        if (this.mCurrentState == 1) {
            this.mHadPrepared = true;
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                Debuger.printfLog("onPrepared");
                this.mVideoAllCallBack.onPrepared(this.mOriginUrl, this.mTitle, this);
            }
            if (!this.mStartAfterPrepared) {
                setStateAndUi(5);
                onVideoPause();
                return;
            }
            startAfterPrepared();
        }
    }

    public void onAutoCompletion() {
        setStateAndUi(6);
        this.mSaveChangeViewTIme = 0;
        this.mCurrentPosition = 0;
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        if (!this.mIfCurrentIsFullscreen) {
            getGSYVideoManager().setLastListener(null);
        }
        this.mAudioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
        Context context = this.mContext;
        if (context instanceof Activity) {
            ((Activity) context).getWindow().clearFlags(128);
        }
        releaseNetWorkState();
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            Debuger.printfLog("onAutoComplete");
            this.mVideoAllCallBack.onAutoComplete(this.mOriginUrl, this.mTitle, this);
        }
    }

    public void onCompletion() {
        setStateAndUi(0);
        this.mSaveChangeViewTIme = 0;
        this.mCurrentPosition = 0;
        if (this.mTextureViewContainer.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        if (!this.mIfCurrentIsFullscreen) {
            getGSYVideoManager().setListener(null);
            getGSYVideoManager().setLastListener(null);
        }
        getGSYVideoManager().setCurrentVideoHeight(0);
        getGSYVideoManager().setCurrentVideoWidth(0);
        this.mAudioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
        Context context = this.mContext;
        if (context instanceof Activity) {
            ((Activity) context).getWindow().clearFlags(128);
        }
        releaseNetWorkState();
    }

    public void onSeekComplete() {
        Debuger.printfLog("onSeekComplete");
    }

    public void onError(int i, int i2) {
        if (this.mNetChanged) {
            this.mNetChanged = false;
            netWorkErrorLogic();
            VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
            if (videoAllCallBack != null) {
                videoAllCallBack.onPlayError(this.mOriginUrl, this.mTitle, this);
            }
            return;
        }
        if (!(i == 38 || i == -38)) {
            setStateAndUi(7);
            deleteCacheFileWhenError();
            VideoAllCallBack videoAllCallBack2 = this.mVideoAllCallBack;
            if (videoAllCallBack2 != null) {
                videoAllCallBack2.onPlayError(this.mOriginUrl, this.mTitle, this);
            }
        }
    }

    public void onInfo(int i, int i2) {
        if (i == 701) {
            int i3 = this.mCurrentState;
            this.mBackUpPlayingBufferState = i3;
            if (this.mHadPlay && i3 != 1 && i3 > 0) {
                setStateAndUi(3);
            }
        } else if (i == 702) {
            int i4 = this.mBackUpPlayingBufferState;
            if (i4 != -1) {
                if (i4 == 3) {
                    this.mBackUpPlayingBufferState = 2;
                }
                if (this.mHadPlay) {
                    int i5 = this.mCurrentState;
                    if (i5 != 1 && i5 > 0) {
                        setStateAndUi(this.mBackUpPlayingBufferState);
                    }
                }
                this.mBackUpPlayingBufferState = -1;
            }
        } else if (i == getGSYVideoManager().getRotateInfoFlag()) {
            this.mRotate = i2;
            StringBuilder sb = new StringBuilder();
            sb.append("Video Rotate Info ");
            sb.append(i2);
            Debuger.printfLog(sb.toString());
            if (this.mTextureView != null) {
                this.mTextureView.setRotation((float) this.mRotate);
            }
        }
    }

    public void onVideoSizeChanged() {
        int currentVideoWidth = getGSYVideoManager().getCurrentVideoWidth();
        int currentVideoHeight = getGSYVideoManager().getCurrentVideoHeight();
        if (currentVideoWidth != 0 && currentVideoHeight != 0 && this.mTextureView != null) {
            this.mTextureView.requestLayout();
        }
    }

    /* access modifiers changed from: protected */
    public void setDisplay(Surface surface) {
        getGSYVideoManager().setDisplay(surface);
    }

    /* access modifiers changed from: protected */
    public void releaseSurface(Surface surface) {
        getGSYVideoManager().releaseSurface(surface);
    }

    public void clearCurrentCache() {
        if (getGSYVideoManager().isCacheFile() && this.mCache) {
            StringBuilder sb = new StringBuilder();
            sb.append("Play Error ");
            sb.append(this.mUrl);
            Debuger.printfError(sb.toString());
            this.mUrl = this.mOriginUrl;
            getGSYVideoManager().clearCache(this.mContext, this.mCachePath, this.mOriginUrl);
        } else if (this.mUrl.contains("127.0.0.1")) {
            getGSYVideoManager().clearCache(getContext(), this.mCachePath, this.mOriginUrl);
        }
    }

    public int getCurrentPositionWhenPlaying() {
        int i = this.mCurrentState;
        int i2 = 0;
        if (i == 2 || i == 5) {
            try {
                i2 = (int) getGSYVideoManager().getCurrentPosition();
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        if (i2 == 0) {
            long j = this.mCurrentPosition;
            if (j > 0) {
                return (int) j;
            }
        }
        return i2;
    }

    public int getDuration() {
        try {
            return (int) getGSYVideoManager().getDuration();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void release() {
        this.mSaveChangeViewTIme = 0;
        if (isCurrentMediaListener() && System.currentTimeMillis() - this.mSaveChangeViewTIme > 2000) {
            releaseVideos();
        }
    }

    public void startAfterPrepared() {
        if (!this.mHadPrepared) {
            prepareVideo();
        }
        try {
            if (getGSYVideoManager() != null) {
                getGSYVideoManager().start();
            }
            setStateAndUi(2);
            if (getGSYVideoManager() != null && this.mSeekOnStart > 0) {
                getGSYVideoManager().seekTo(this.mSeekOnStart);
                this.mSeekOnStart = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        addTextureView();
        createNetWorkState();
        listenerNetWorkState();
        this.mHadPlay = true;
        if (this.mTextureView != null) {
            this.mTextureView.onResume();
        }
        if (this.mPauseBeforePrepared) {
            onVideoPause();
            this.mPauseBeforePrepared = false;
        }
    }

    /* access modifiers changed from: protected */
    public boolean isCurrentMediaListener() {
        return getGSYVideoManager().listener() != null && getGSYVideoManager().listener() == this;
    }

    /* access modifiers changed from: protected */
    public void createNetWorkState() {
        if (this.mNetInfoModule == null) {
            this.mNetInfoModule = new NetInfoModule(this.mContext.getApplicationContext(), new NetChangeListener() {
                public void changed(String str) {
                    if (!GSYVideoView.this.mNetSate.equals(str)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("******* change network state ******* ");
                        sb.append(str);
                        Debuger.printfError(sb.toString());
                        GSYVideoView.this.mNetChanged = true;
                    }
                    GSYVideoView.this.mNetSate = str;
                }
            });
            this.mNetSate = this.mNetInfoModule.getCurrentConnectionType();
        }
    }

    /* access modifiers changed from: protected */
    public void listenerNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.onHostResume();
        }
    }

    /* access modifiers changed from: protected */
    public void unListenerNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.onHostPause();
        }
    }

    /* access modifiers changed from: protected */
    public void releaseNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.onHostPause();
            this.mNetInfoModule = null;
        }
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public boolean isInPlayingState() {
        int i = this.mCurrentState;
        return (i < 0 || i == 0 || i == 6 || i == 7) ? false : true;
    }

    public String getPlayTag() {
        return this.mPlayTag;
    }

    public void setPlayTag(String str) {
        this.mPlayTag = str;
    }

    public int getPlayPosition() {
        return this.mPlayPosition;
    }

    public void setPlayPosition(int i) {
        this.mPlayPosition = i;
    }

    public long getNetSpeed() {
        return getGSYVideoManager().getNetSpeed();
    }

    public String getNetSpeedText() {
        return CommonUtil.getTextSpeed(getNetSpeed());
    }

    public long getSeekOnStart() {
        return this.mSeekOnStart;
    }

    public void setSeekOnStart(long j) {
        this.mSeekOnStart = j;
    }

    public int getBuffterPoint() {
        return this.mBufferPoint;
    }

    public boolean isIfCurrentIsFullscreen() {
        return this.mIfCurrentIsFullscreen;
    }

    public void setIfCurrentIsFullscreen(boolean z) {
        this.mIfCurrentIsFullscreen = z;
    }

    public boolean isLooping() {
        return this.mLooping;
    }

    public void setLooping(boolean z) {
        this.mLooping = z;
    }

    public void setVideoAllCallBack(VideoAllCallBack videoAllCallBack) {
        this.mVideoAllCallBack = videoAllCallBack;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    public void setSpeed(float f) {
        setSpeed(f, false);
    }

    public void setSpeed(float f, boolean z) {
        this.mSpeed = f;
        this.mSoundTouch = z;
        if (getGSYVideoManager() != null) {
            getGSYVideoManager().setSpeed(f, z);
        }
    }

    public void setSpeedPlaying(float f, boolean z) {
        setSpeed(f, z);
        getGSYVideoManager().setSpeedPlaying(f, z);
    }

    public boolean isShowPauseCover() {
        return this.mShowPauseCover;
    }

    public void setShowPauseCover(boolean z) {
        this.mShowPauseCover = z;
    }

    public void seekTo(long j) {
        try {
            if (getGSYVideoManager() != null && j > 0) {
                getGSYVideoManager().seekTo(j);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isStartAfterPrepared() {
        return this.mStartAfterPrepared;
    }

    public void setStartAfterPrepared(boolean z) {
        this.mStartAfterPrepared = z;
    }

    public boolean isReleaseWhenLossAudio() {
        return this.mReleaseWhenLossAudio;
    }

    public void setReleaseWhenLossAudio(boolean z) {
        this.mReleaseWhenLossAudio = z;
    }

    public Map<String, String> getMapHeadData() {
        return this.mMapHeadData;
    }

    public void setMapHeadData(Map<String, String> map) {
        if (map != null) {
            this.mMapHeadData = map;
        }
    }

    public String getOverrideExtension() {
        return this.mOverrideExtension;
    }

    public void setOverrideExtension(String str) {
        this.mOverrideExtension = str;
    }
}
