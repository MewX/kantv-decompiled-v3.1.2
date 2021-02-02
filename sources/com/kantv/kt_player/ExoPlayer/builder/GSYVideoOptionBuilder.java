package com.kantv.kt_player.ExoPlayer.builder;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.kantv.kt_player.ExoPlayer.base.GSYBaseVideoPlayer;
import com.kantv.kt_player.ExoPlayer.base.StandardGSYVideoPlayer;
import com.kantv.kt_player.ExoPlayer.listener.GSYVideoProgressListener;
import com.kantv.kt_player.ExoPlayer.listener.LockClickListener;
import com.kantv.kt_player.ExoPlayer.listener.VideoAllCallBack;
import com.kantv.kt_player.ExoPlayer.render.effect.NoEffect;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;
import java.io.File;
import java.util.Map;

public class GSYVideoOptionBuilder {
    protected boolean mActionBar = false;
    protected boolean mAutoFullWithSize = false;
    protected Drawable mBottomProgressDrawable;
    protected Drawable mBottomShowProgressDrawable;
    protected Drawable mBottomShowProgressThumbDrawable;
    protected File mCachePath;
    protected boolean mCacheWithPlay;
    protected Drawable mDialogProgressBarDrawable;
    protected int mDialogProgressHighLightColor = -11;
    protected int mDialogProgressNormalColor = -11;
    protected int mDismissControlTime = 2500;
    protected ShaderInterface mEffectFilter = new NoEffect();
    protected int mEnlargeImageRes = -1;
    protected GSYVideoProgressListener mGSYVideoProgressListener;
    protected boolean mHideKey = true;
    protected boolean mIsTouchWiget = true;
    protected boolean mIsTouchWigetFull = true;
    protected LockClickListener mLockClickListener;
    protected boolean mLockLand = false;
    protected boolean mLooping = false;
    protected Map<String, String> mMapHeadData;
    protected boolean mNeedLockFull;
    protected boolean mNeedShowWifiTip = true;
    protected String mOverrideExtension;
    protected int mPlayPosition = -22;
    protected String mPlayTag = "";
    protected boolean mReleaseWhenLossAudio = true;
    protected boolean mRotateViewAuto = true;
    protected boolean mRotateWithSystem = true;
    protected long mSeekOnStart = -1;
    protected float mSeekRatio = 1.0f;
    protected boolean mSetUpLazy = false;
    protected boolean mShowFullAnimation = true;
    protected boolean mShowPauseCover = true;
    protected int mShrinkImageRes = -1;
    protected boolean mSounchTouch;
    protected float mSpeed = 1.0f;
    protected boolean mStartAfterPrepared = true;
    protected boolean mStatusBar = false;
    protected View mThumbImageView;
    protected boolean mThumbPlay;
    protected String mUrl;
    protected VideoAllCallBack mVideoAllCallBack;
    protected String mVideoTitle = null;
    protected Drawable mVolumeProgressDrawable;

    public GSYVideoOptionBuilder setAutoFullWithSize(boolean z) {
        this.mAutoFullWithSize = z;
        return this;
    }

    public GSYVideoOptionBuilder setShowFullAnimation(boolean z) {
        this.mShowFullAnimation = z;
        return this;
    }

    public GSYVideoOptionBuilder setLooping(boolean z) {
        this.mLooping = z;
        return this;
    }

    public GSYVideoOptionBuilder setVideoAllCallBack(VideoAllCallBack videoAllCallBack) {
        this.mVideoAllCallBack = videoAllCallBack;
        return this;
    }

    public GSYVideoOptionBuilder setRotateViewAuto(boolean z) {
        this.mRotateViewAuto = z;
        return this;
    }

    public GSYVideoOptionBuilder setLockLand(boolean z) {
        this.mLockLand = z;
        return this;
    }

    public GSYVideoOptionBuilder setSpeed(float f) {
        this.mSpeed = f;
        return this;
    }

    public GSYVideoOptionBuilder setSoundTouch(boolean z) {
        this.mSounchTouch = z;
        return this;
    }

    public GSYVideoOptionBuilder setHideKey(boolean z) {
        this.mHideKey = z;
        return this;
    }

    public GSYVideoOptionBuilder setIsTouchWiget(boolean z) {
        this.mIsTouchWiget = z;
        return this;
    }

    public GSYVideoOptionBuilder setIsTouchWigetFull(boolean z) {
        this.mIsTouchWigetFull = z;
        return this;
    }

    public GSYVideoOptionBuilder setNeedShowWifiTip(boolean z) {
        this.mNeedShowWifiTip = z;
        return this;
    }

    public GSYVideoOptionBuilder setEnlargeImageRes(int i) {
        this.mEnlargeImageRes = i;
        return this;
    }

    public GSYVideoOptionBuilder setShrinkImageRes(int i) {
        this.mShrinkImageRes = i;
        return this;
    }

    public GSYVideoOptionBuilder setShowPauseCover(boolean z) {
        this.mShowPauseCover = z;
        return this;
    }

    public GSYVideoOptionBuilder setSeekRatio(float f) {
        if (f < 0.0f) {
            return this;
        }
        this.mSeekRatio = f;
        return this;
    }

    public GSYVideoOptionBuilder setRotateWithSystem(boolean z) {
        this.mRotateWithSystem = z;
        return this;
    }

    public GSYVideoOptionBuilder setPlayTag(String str) {
        this.mPlayTag = str;
        return this;
    }

    public GSYVideoOptionBuilder setPlayPosition(int i) {
        this.mPlayPosition = i;
        return this;
    }

    public GSYVideoOptionBuilder setSeekOnStart(long j) {
        this.mSeekOnStart = j;
        return this;
    }

    public GSYVideoOptionBuilder setUrl(String str) {
        this.mUrl = str;
        return this;
    }

    public GSYVideoOptionBuilder setVideoTitle(String str) {
        this.mVideoTitle = str;
        return this;
    }

    public GSYVideoOptionBuilder setCacheWithPlay(boolean z) {
        this.mCacheWithPlay = z;
        return this;
    }

    public GSYVideoOptionBuilder setStartAfterPrepared(boolean z) {
        this.mStartAfterPrepared = z;
        return this;
    }

    public GSYVideoOptionBuilder setReleaseWhenLossAudio(boolean z) {
        this.mReleaseWhenLossAudio = z;
        return this;
    }

    public GSYVideoOptionBuilder setCachePath(File file) {
        this.mCachePath = file;
        return this;
    }

    public GSYVideoOptionBuilder setMapHeadData(Map<String, String> map) {
        this.mMapHeadData = map;
        return this;
    }

    public GSYVideoOptionBuilder setGSYVideoProgressListener(GSYVideoProgressListener gSYVideoProgressListener) {
        this.mGSYVideoProgressListener = gSYVideoProgressListener;
        return this;
    }

    public GSYVideoOptionBuilder setThumbImageView(View view) {
        this.mThumbImageView = view;
        return this;
    }

    public GSYVideoOptionBuilder setBottomShowProgressBarDrawable(Drawable drawable, Drawable drawable2) {
        this.mBottomShowProgressDrawable = drawable;
        this.mBottomShowProgressThumbDrawable = drawable2;
        return this;
    }

    public GSYVideoOptionBuilder setBottomProgressBarDrawable(Drawable drawable) {
        this.mBottomProgressDrawable = drawable;
        return this;
    }

    public GSYVideoOptionBuilder setDialogVolumeProgressBar(Drawable drawable) {
        this.mVolumeProgressDrawable = drawable;
        return this;
    }

    public GSYVideoOptionBuilder setDialogProgressBar(Drawable drawable) {
        this.mDialogProgressBarDrawable = drawable;
        return this;
    }

    public GSYVideoOptionBuilder setDialogProgressColor(int i, int i2) {
        this.mDialogProgressHighLightColor = i;
        this.mDialogProgressNormalColor = i2;
        return this;
    }

    public GSYVideoOptionBuilder setThumbPlay(boolean z) {
        this.mThumbPlay = z;
        return this;
    }

    public GSYVideoOptionBuilder setNeedLockFull(boolean z) {
        this.mNeedLockFull = z;
        return this;
    }

    public GSYVideoOptionBuilder setLockClickListener(LockClickListener lockClickListener) {
        this.mLockClickListener = lockClickListener;
        return this;
    }

    public GSYVideoOptionBuilder setDismissControlTime(int i) {
        this.mDismissControlTime = i;
        return this;
    }

    public GSYVideoOptionBuilder setEffectFilter(ShaderInterface shaderInterface) {
        this.mEffectFilter = shaderInterface;
        return this;
    }

    public GSYVideoOptionBuilder setOverrideExtension(String str) {
        this.mOverrideExtension = str;
        return this;
    }

    @Deprecated
    public GSYVideoOptionBuilder setSetUpLazy(boolean z) {
        this.mSetUpLazy = z;
        return this;
    }

    public GSYVideoOptionBuilder setFullHideActionBar(boolean z) {
        this.mActionBar = z;
        return this;
    }

    public GSYVideoOptionBuilder setFullHideStatusBar(boolean z) {
        this.mStatusBar = z;
        return this;
    }

    public void build(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        Drawable drawable = this.mBottomShowProgressDrawable;
        if (drawable != null) {
            Drawable drawable2 = this.mBottomShowProgressThumbDrawable;
            if (drawable2 != null) {
                standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable, drawable2);
            }
        }
        Drawable drawable3 = this.mBottomProgressDrawable;
        if (drawable3 != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable3);
        }
        Drawable drawable4 = this.mVolumeProgressDrawable;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.mDialogProgressBarDrawable;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i = this.mDialogProgressHighLightColor;
        if (i > 0) {
            int i2 = this.mDialogProgressNormalColor;
            if (i2 > 0) {
                standardGSYVideoPlayer.setDialogProgressColor(i, i2);
            }
        }
        build((GSYBaseVideoPlayer) standardGSYVideoPlayer);
    }

    public void build(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        gSYBaseVideoPlayer.setPlayTag(this.mPlayTag);
        gSYBaseVideoPlayer.setPlayPosition(this.mPlayPosition);
        gSYBaseVideoPlayer.setThumbPlay(this.mThumbPlay);
        View view = this.mThumbImageView;
        if (view != null) {
            gSYBaseVideoPlayer.setThumbImageView(view);
        }
        gSYBaseVideoPlayer.setNeedLockFull(this.mNeedLockFull);
        LockClickListener lockClickListener = this.mLockClickListener;
        if (lockClickListener != null) {
            gSYBaseVideoPlayer.setLockClickListener(lockClickListener);
        }
        gSYBaseVideoPlayer.setDismissControlTime(this.mDismissControlTime);
        long j = this.mSeekOnStart;
        if (j > 0) {
            gSYBaseVideoPlayer.setSeekOnStart(j);
        }
        gSYBaseVideoPlayer.setShowFullAnimation(this.mShowFullAnimation);
        gSYBaseVideoPlayer.setLooping(this.mLooping);
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            gSYBaseVideoPlayer.setVideoAllCallBack(videoAllCallBack);
        }
        GSYVideoProgressListener gSYVideoProgressListener = this.mGSYVideoProgressListener;
        if (gSYVideoProgressListener != null) {
            gSYBaseVideoPlayer.setGSYVideoProgressListener(gSYVideoProgressListener);
        }
        gSYBaseVideoPlayer.setOverrideExtension(this.mOverrideExtension);
        gSYBaseVideoPlayer.setAutoFullWithSize(this.mAutoFullWithSize);
        gSYBaseVideoPlayer.setRotateViewAuto(this.mRotateViewAuto);
        gSYBaseVideoPlayer.setLockLand(this.mLockLand);
        gSYBaseVideoPlayer.setSpeed(this.mSpeed, this.mSounchTouch);
        gSYBaseVideoPlayer.setHideKey(this.mHideKey);
        gSYBaseVideoPlayer.setIsTouchWiget(this.mIsTouchWiget);
        gSYBaseVideoPlayer.setIsTouchWigetFull(this.mIsTouchWigetFull);
        gSYBaseVideoPlayer.setNeedShowWifiTip(this.mNeedShowWifiTip);
        gSYBaseVideoPlayer.setEffectFilter(this.mEffectFilter);
        gSYBaseVideoPlayer.setStartAfterPrepared(this.mStartAfterPrepared);
        gSYBaseVideoPlayer.setReleaseWhenLossAudio(this.mReleaseWhenLossAudio);
        gSYBaseVideoPlayer.setFullHideActionBar(this.mActionBar);
        gSYBaseVideoPlayer.setFullHideStatusBar(this.mStatusBar);
        int i = this.mEnlargeImageRes;
        if (i > 0) {
            gSYBaseVideoPlayer.setEnlargeImageRes(i);
        }
        int i2 = this.mShrinkImageRes;
        if (i2 > 0) {
            gSYBaseVideoPlayer.setShrinkImageRes(i2);
        }
        gSYBaseVideoPlayer.setShowPauseCover(this.mShowPauseCover);
        gSYBaseVideoPlayer.setSeekRatio(this.mSeekRatio);
        gSYBaseVideoPlayer.setRotateWithSystem(this.mRotateWithSystem);
        if (this.mSetUpLazy) {
            gSYBaseVideoPlayer.setUpLazy(this.mUrl, this.mCacheWithPlay, this.mCachePath, this.mMapHeadData, this.mVideoTitle);
            return;
        }
        gSYBaseVideoPlayer.setUp(this.mUrl, this.mCacheWithPlay, this.mCachePath, this.mMapHeadData, this.mVideoTitle);
    }
}
