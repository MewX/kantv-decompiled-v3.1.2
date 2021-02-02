package com.kantv.kt_player.ExoPlayer.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.kantv.kt_player.ExoPlayer.utils.CommonUtil;
import com.kantv.kt_player.ExoPlayer.utils.Debuger;
import com.kantv.kt_player.ExoPlayer.utils.OrientationUtils;
import com.kantv.kt_player.R;

public abstract class GSYBaseVideoPlayer extends GSYVideoControlView {
    protected boolean isNeedAutoAdaptation = false;
    protected boolean mActionBar = false;
    protected boolean mAutoFullWithSize = false;
    /* access modifiers changed from: protected */
    public OnClickListener mBackFromFullScreenListener;
    protected Runnable mCheckoutTask = new Runnable() {
        public void run() {
            GSYBaseVideoPlayer fullWindowPlayer = GSYBaseVideoPlayer.this.getFullWindowPlayer();
            if (fullWindowPlayer != null && fullWindowPlayer.mCurrentState != GSYBaseVideoPlayer.this.mCurrentState && fullWindowPlayer.mCurrentState == 3 && GSYBaseVideoPlayer.this.mCurrentState != 1) {
                fullWindowPlayer.setStateAndUi(GSYBaseVideoPlayer.this.mCurrentState);
            }
        }
    };
    protected boolean mFullAnimEnd = true;
    protected Handler mInnerHandler = new Handler();
    protected int[] mListItemRect;
    protected int[] mListItemSize;
    protected boolean mLockLand = false;
    /* access modifiers changed from: protected */
    public OrientationUtils mOrientationUtils;
    protected boolean mRotateViewAuto = true;
    protected boolean mRotateWithSystem = true;
    private boolean mShowFullAnimation = true;
    protected View mSmallClose;
    protected boolean mStatusBar = false;
    protected int mSystemUiVisibility;

    public GSYBaseVideoPlayer getFullWindowPlayer() {
        return this;
    }

    public GSYBaseVideoPlayer getSmallWindowPlayer() {
        return this;
    }

    public GSYBaseVideoPlayer showSmallVideo(Point point, boolean z, boolean z2) {
        return this;
    }

    public GSYBaseVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public GSYBaseVideoPlayer(Context context) {
        super(context);
    }

    public GSYBaseVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GSYBaseVideoPlayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        super.init(context);
        this.mSmallClose = findViewById(R.id.small_close);
    }

    public void onBackFullscreen() {
        clearFullscreenLayout();
    }

    /* access modifiers changed from: protected */
    public void setSmallVideoTextureView() {
        if (this.mProgressBar != null) {
            this.mProgressBar.setOnTouchListener(null);
            this.mProgressBar.setVisibility(4);
        }
        if (this.mFullscreenButton != null) {
            this.mFullscreenButton.setOnTouchListener(null);
            this.mFullscreenButton.setVisibility(4);
        }
        if (this.mCurrentTimeTextView != null) {
            this.mCurrentTimeTextView.setVisibility(4);
        }
        if (this.mTextureViewContainer != null) {
            this.mTextureViewContainer.setOnClickListener(null);
        }
        View view = this.mSmallClose;
        if (view != null) {
            view.setVisibility(0);
            this.mSmallClose.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    GSYBaseVideoPlayer.this.hideSmallVideo();
                    GSYBaseVideoPlayer.this.releaseVideos();
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void lockTouchLogic() {
        super.lockTouchLogic();
        if (!this.mLockCurScreen) {
            OrientationUtils orientationUtils = this.mOrientationUtils;
            if (orientationUtils != null) {
                orientationUtils.setEnable(isRotateViewAuto());
                return;
            }
            return;
        }
        OrientationUtils orientationUtils2 = this.mOrientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.setEnable(false);
        }
    }

    public void onPrepared() {
        super.onPrepared();
        checkAutoFullSizeWhenFull();
    }

    public void onInfo(int i, int i2) {
        super.onInfo(i, i2);
        if (i == getGSYVideoManager().getRotateInfoFlag()) {
            checkAutoFullSizeWhenFull();
        }
    }

    private ViewGroup getViewGroup() {
        return (ViewGroup) CommonUtil.scanForActivity(getContext()).findViewById(16908290);
    }

    private void removeVideo(ViewGroup viewGroup, int i) {
        View findViewById = viewGroup.findViewById(i);
        if (findViewById != null && findViewById.getParent() != null) {
            viewGroup.removeView((ViewGroup) findViewById.getParent());
        }
    }

    private void saveLocationStatus(Context context, boolean z, boolean z2) {
        getLocationOnScreen(this.mListItemRect);
        if (context instanceof Activity) {
            int statusBarHeight = CommonUtil.getStatusBarHeight(context);
            Activity activity = (Activity) context;
            int actionBarHeight = CommonUtil.getActionBarHeight(activity);
            boolean z3 = (activity.getWindow().getAttributes().flags & 67108864) == 67108864;
            StringBuilder sb = new StringBuilder();
            sb.append("*************isTranslucent*************** ");
            sb.append(z3);
            Debuger.printfLog(sb.toString());
            if (z && !z3) {
                int[] iArr = this.mListItemRect;
                iArr[1] = iArr[1] - statusBarHeight;
            }
            if (z2) {
                int[] iArr2 = this.mListItemRect;
                iArr2[1] = iArr2[1] - actionBarHeight;
            }
        }
        this.mListItemSize[0] = getWidth();
        this.mListItemSize[1] = getHeight();
    }

    /* access modifiers changed from: protected */
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        gSYBaseVideoPlayer2.mHadPlay = gSYBaseVideoPlayer.mHadPlay;
        gSYBaseVideoPlayer2.mPlayTag = gSYBaseVideoPlayer.mPlayTag;
        gSYBaseVideoPlayer2.mPlayPosition = gSYBaseVideoPlayer.mPlayPosition;
        gSYBaseVideoPlayer2.mEffectFilter = gSYBaseVideoPlayer.mEffectFilter;
        gSYBaseVideoPlayer2.mFullPauseBitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
        gSYBaseVideoPlayer2.mNeedShowWifiTip = gSYBaseVideoPlayer.mNeedShowWifiTip;
        gSYBaseVideoPlayer2.mShrinkImageRes = gSYBaseVideoPlayer.mShrinkImageRes;
        gSYBaseVideoPlayer2.mEnlargeImageRes = gSYBaseVideoPlayer.mEnlargeImageRes;
        gSYBaseVideoPlayer2.mRotate = gSYBaseVideoPlayer.mRotate;
        gSYBaseVideoPlayer2.mShowPauseCover = gSYBaseVideoPlayer.mShowPauseCover;
        gSYBaseVideoPlayer2.mDismissControlTime = gSYBaseVideoPlayer.mDismissControlTime;
        gSYBaseVideoPlayer2.mSeekRatio = gSYBaseVideoPlayer.mSeekRatio;
        gSYBaseVideoPlayer2.mNetChanged = gSYBaseVideoPlayer.mNetChanged;
        gSYBaseVideoPlayer2.mNetSate = gSYBaseVideoPlayer.mNetSate;
        gSYBaseVideoPlayer2.mRotateWithSystem = gSYBaseVideoPlayer.mRotateWithSystem;
        gSYBaseVideoPlayer2.mBackUpPlayingBufferState = gSYBaseVideoPlayer.mBackUpPlayingBufferState;
        gSYBaseVideoPlayer2.mRenderer = gSYBaseVideoPlayer.mRenderer;
        gSYBaseVideoPlayer2.mMode = gSYBaseVideoPlayer.mMode;
        gSYBaseVideoPlayer2.mBackFromFullScreenListener = gSYBaseVideoPlayer.mBackFromFullScreenListener;
        gSYBaseVideoPlayer2.mGSYVideoProgressListener = gSYBaseVideoPlayer.mGSYVideoProgressListener;
        gSYBaseVideoPlayer2.mHadPrepared = gSYBaseVideoPlayer.mHadPrepared;
        gSYBaseVideoPlayer2.mStartAfterPrepared = gSYBaseVideoPlayer.mStartAfterPrepared;
        gSYBaseVideoPlayer2.mPauseBeforePrepared = gSYBaseVideoPlayer.mPauseBeforePrepared;
        gSYBaseVideoPlayer2.mReleaseWhenLossAudio = gSYBaseVideoPlayer.mReleaseWhenLossAudio;
        gSYBaseVideoPlayer2.mVideoAllCallBack = gSYBaseVideoPlayer.mVideoAllCallBack;
        gSYBaseVideoPlayer2.mActionBar = gSYBaseVideoPlayer.mActionBar;
        gSYBaseVideoPlayer2.mStatusBar = gSYBaseVideoPlayer.mStatusBar;
        gSYBaseVideoPlayer2.mAutoFullWithSize = gSYBaseVideoPlayer.mAutoFullWithSize;
        if (gSYBaseVideoPlayer.mSetUpLazy) {
            gSYBaseVideoPlayer2.setUpLazy(gSYBaseVideoPlayer.mOriginUrl, gSYBaseVideoPlayer.mCache, gSYBaseVideoPlayer.mCachePath, gSYBaseVideoPlayer.mMapHeadData, gSYBaseVideoPlayer.mTitle);
            gSYBaseVideoPlayer2.mUrl = gSYBaseVideoPlayer.mUrl;
        } else {
            gSYBaseVideoPlayer2.setUp(gSYBaseVideoPlayer.mOriginUrl, gSYBaseVideoPlayer.mCache, gSYBaseVideoPlayer.mCachePath, gSYBaseVideoPlayer.mMapHeadData, gSYBaseVideoPlayer.mTitle);
        }
        gSYBaseVideoPlayer2.setLooping(gSYBaseVideoPlayer.isLooping());
        gSYBaseVideoPlayer2.setIsTouchWigetFull(gSYBaseVideoPlayer.mIsTouchWigetFull);
        gSYBaseVideoPlayer2.setSpeed(gSYBaseVideoPlayer.getSpeed(), gSYBaseVideoPlayer.mSoundTouch);
        gSYBaseVideoPlayer2.setStateAndUi(gSYBaseVideoPlayer.mCurrentState);
    }

    private void pauseFullCoverLogic() {
        if (this.mCurrentState == 5 && this.mTextureView != null) {
            if ((this.mFullPauseBitmap == null || this.mFullPauseBitmap.isRecycled()) && this.mShowPauseCover) {
                try {
                    initCover();
                } catch (Exception e) {
                    e.printStackTrace();
                    this.mFullPauseBitmap = null;
                }
            }
        }
    }

    private void pauseFullBackCoverLogic(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        if (gSYBaseVideoPlayer.mCurrentState == 5 && gSYBaseVideoPlayer.mTextureView != null && this.mShowPauseCover) {
            if (gSYBaseVideoPlayer.mFullPauseBitmap != null && !gSYBaseVideoPlayer.mFullPauseBitmap.isRecycled() && this.mShowPauseCover) {
                this.mFullPauseBitmap = gSYBaseVideoPlayer.mFullPauseBitmap;
            } else if (this.mShowPauseCover) {
                try {
                    initCover();
                } catch (Exception e) {
                    e.printStackTrace();
                    this.mFullPauseBitmap = null;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void resolveFullVideoShow(Context context, final GSYBaseVideoPlayer gSYBaseVideoPlayer, FrameLayout frameLayout) {
        this.mStatusbar_empty.setVisibility(8);
        LayoutParams layoutParams = (LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
        final boolean isVerticalFullByVideoSize = isVerticalFullByVideoSize();
        final boolean isLockLandByAutoFullSize = isLockLandByAutoFullSize();
        if (isShowFullAnimation()) {
            this.mInnerHandler.postDelayed(new Runnable() {
                public void run() {
                    if (!isVerticalFullByVideoSize && isLockLandByAutoFullSize && GSYBaseVideoPlayer.this.mOrientationUtils != null && GSYBaseVideoPlayer.this.mOrientationUtils.getIsLand() != 1) {
                        GSYBaseVideoPlayer.this.mOrientationUtils.resolveByClick();
                    }
                    gSYBaseVideoPlayer.setVisibility(0);
                }
            }, 300);
        } else {
            if (!isVerticalFullByVideoSize && isLockLandByAutoFullSize) {
                OrientationUtils orientationUtils = this.mOrientationUtils;
                if (orientationUtils != null) {
                    orientationUtils.resolveByClick();
                }
            }
            gSYBaseVideoPlayer.setVisibility(0);
        }
        if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onEnterFullscreen");
            this.mVideoAllCallBack.onEnterFullscreen(this.mOriginUrl, this.mTitle, gSYBaseVideoPlayer);
        }
        this.mIfCurrentIsFullscreen = true;
        checkAutoFullWithSizeAndAdaptation(gSYBaseVideoPlayer);
    }

    /* access modifiers changed from: protected */
    public void resolveNormalVideoShow(View view, ViewGroup viewGroup, GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        this.mStatusbar_empty.setVisibility(8);
        this.mSaveChangeViewTIme = System.currentTimeMillis();
        if (this.mVideoAllCallBack != null) {
            Debuger.printfError("onQuitFullscreen");
            this.mVideoAllCallBack.onQuitFullscreen(this.mOriginUrl, this.mTitle, this);
        }
        this.mIfCurrentIsFullscreen = false;
        if (this.mHideKey) {
            CommonUtil.showNavKey(this.mContext, this.mSystemUiVisibility);
        }
        CommonUtil.showSupportActionBar(this.mContext, this.mActionBar, this.mStatusBar);
        if (getFullscreenButton() != null) {
            getFullscreenButton().setImageResource(getEnlargeImageRes());
        }
    }

    /* access modifiers changed from: protected */
    public void clearFullscreenLayout() {
        if (this.mFullAnimEnd) {
            this.mIfCurrentIsFullscreen = false;
            int i = 500;
            OrientationUtils orientationUtils = this.mOrientationUtils;
            if (orientationUtils != null) {
                orientationUtils.resolveByClick();
            }
            if (!this.mShowFullAnimation) {
                i = 0;
            }
            this.mIfCurrentIsFullscreen = false;
            this.mInnerHandler.postDelayed(new Runnable() {
                public void run() {
                    GSYBaseVideoPlayer.this.backToNormal();
                }
            }, (long) i);
        }
    }

    /* access modifiers changed from: protected */
    public void backToNormal() {
        if (this.mShowFullAnimation) {
            LayoutParams layoutParams = (LayoutParams) getLayoutParams();
            int[] iArr = this.mListItemRect;
            layoutParams.setMargins(iArr[0], iArr[1], 0, 0);
            int[] iArr2 = this.mListItemSize;
            layoutParams.width = iArr2[0];
            layoutParams.height = iArr2[1];
            layoutParams.gravity = 0;
            setLayoutParams(layoutParams);
            this.mInnerHandler.postDelayed(new Runnable(this) {
                final /* synthetic */ View val$oldF;

                {
                    this.val$oldF = r2;
                }

                public void run() {
                    GSYBaseVideoPlayer gSYBaseVideoPlayer = GSYBaseVideoPlayer.this;
                    View view = this.val$oldF;
                    GSYBaseVideoPlayer gSYBaseVideoPlayer2 = this;
                    gSYBaseVideoPlayer.resolveNormalVideoShow(view, gSYBaseVideoPlayer2, gSYBaseVideoPlayer2);
                }
            }, 400);
            return;
        }
        resolveNormalVideoShow(this, this, this);
    }

    /* access modifiers changed from: protected */
    public void checkoutState() {
        removeCallbacks(this.mCheckoutTask);
        this.mInnerHandler.postDelayed(this.mCheckoutTask, 500);
    }

    /* access modifiers changed from: protected */
    public boolean isVerticalVideo() {
        int currentVideoHeight = getCurrentVideoHeight();
        int currentVideoWidth = getCurrentVideoWidth();
        StringBuilder sb = new StringBuilder();
        sb.append("GSYVideoBase isVerticalVideo  videoHeight ");
        sb.append(currentVideoHeight);
        sb.append(" videoWidth ");
        sb.append(currentVideoWidth);
        Debuger.printfLog(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GSYVideoBase isVerticalVideo  mRotate ");
        sb2.append(this.mRotate);
        Debuger.printfLog(sb2.toString());
        if (currentVideoHeight <= 0 || currentVideoWidth <= 0) {
            return false;
        }
        if (this.mRotate == 90 || this.mRotate == 270) {
            if (currentVideoWidth <= currentVideoHeight) {
                return false;
            }
        } else if (currentVideoHeight <= currentVideoWidth) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean isLockLandByAutoFullSize() {
        boolean z = this.mLockLand;
        if (isAutoFullWithSize()) {
            return true;
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public void checkAutoFullSizeWhenFull() {
        if (this.mIfCurrentIsFullscreen) {
            boolean isVerticalFullByVideoSize = isVerticalFullByVideoSize();
            StringBuilder sb = new StringBuilder();
            sb.append("GSYVideoBase onPrepared isVerticalFullByVideoSize ");
            sb.append(isVerticalFullByVideoSize);
            Debuger.printfLog(sb.toString());
            if (isVerticalFullByVideoSize) {
                OrientationUtils orientationUtils = this.mOrientationUtils;
                if (orientationUtils != null) {
                    orientationUtils.backToProtVideo();
                    checkAutoFullWithSizeAndAdaptation(this);
                }
            }
        }
    }

    public boolean isVerticalFullByVideoSize() {
        return isVerticalVideo() && isAutoFullWithSize();
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, OrientationUtils orientationUtils) {
        onConfigurationChanged(activity, configuration, orientationUtils, true, true);
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, OrientationUtils orientationUtils, boolean z, boolean z2) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != 2) {
            if (isIfCurrentIsFullscreen() && !isVerticalFullByVideoSize()) {
                backFromFull(activity);
            }
            if (orientationUtils != null) {
                orientationUtils.setEnable(true);
            }
        } else if (!isIfCurrentIsFullscreen()) {
            startWindowFullscreen(activity, z, z2);
        }
    }

    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z, boolean z2) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("startWindowFullscreen init ID== ");
        sb.append(this.id);
        String str2 = " ";
        sb.append(str2);
        sb.append(ID);
        sb.append(str2);
        sb.append(isShowFullAnimation());
        Log.e(str, sb.toString());
        this.mSystemUiVisibility = ((Activity) context).getWindow().getDecorView().getSystemUiVisibility();
        CommonUtil.hideSupportActionBar(context, z, z2);
        if (this.mHideKey) {
            CommonUtil.hideNavKey(context);
        }
        this.mActionBar = z;
        this.mStatusBar = z2;
        this.mListItemRect = new int[2];
        this.mListItemSize = new int[2];
        try {
            setIfCurrentIsFullscreen(true);
            if (this.mShowFullAnimation) {
                this.mFullAnimEnd = false;
                new LayoutParams(getWidth(), getHeight()).setMargins(this.mListItemRect[0], this.mListItemRect[1], 0, 0);
                this.mInnerHandler.postDelayed(new Runnable() {
                    public void run() {
                        GSYBaseVideoPlayer.this.mFullAnimEnd = true;
                    }
                }, 300);
            } else {
                resolveFullVideoShow(context, this, null);
            }
            checkoutState();
            return this;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void hideSmallVideo() {
        if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onQuitSmallWidget");
            this.mVideoAllCallBack.onQuitSmallWidget(this.mOriginUrl, this.mTitle, this);
        }
    }

    public boolean isShowFullAnimation() {
        return this.mShowFullAnimation;
    }

    public void setShowFullAnimation(boolean z) {
        this.mShowFullAnimation = z;
    }

    public boolean isRotateViewAuto() {
        if (this.mAutoFullWithSize) {
            return false;
        }
        return this.mRotateViewAuto;
    }

    public void setRotateViewAuto(boolean z) {
        this.mRotateViewAuto = z;
        OrientationUtils orientationUtils = this.mOrientationUtils;
        if (orientationUtils != null) {
            orientationUtils.setEnable(z);
        }
    }

    public boolean isLockLand() {
        return this.mLockLand;
    }

    public void setLockLand(boolean z) {
        this.mLockLand = z;
    }

    public boolean isRotateWithSystem() {
        return this.mRotateWithSystem;
    }

    public void setRotateWithSystem(boolean z) {
        this.mRotateWithSystem = z;
    }

    public GSYBaseVideoPlayer getCurrentPlayer() {
        if (getFullWindowPlayer() != null) {
            return getFullWindowPlayer();
        }
        return getSmallWindowPlayer() != null ? getSmallWindowPlayer() : this;
    }

    public void setBackFromFullScreenListener(OnClickListener onClickListener) {
        this.mBackFromFullScreenListener = onClickListener;
    }

    public void setFullHideActionBar(boolean z) {
        this.mActionBar = z;
    }

    public void setFullHideStatusBar(boolean z) {
        this.mStatusBar = z;
    }

    public boolean isFullHideActionBar() {
        return this.mActionBar;
    }

    public boolean isFullHideStatusBar() {
        return this.mStatusBar;
    }

    public int getSaveBeforeFullSystemUiVisibility() {
        return this.mSystemUiVisibility;
    }

    public void setSaveBeforeFullSystemUiVisibility(int i) {
        this.mSystemUiVisibility = i;
    }

    public boolean isAutoFullWithSize() {
        return this.mAutoFullWithSize;
    }

    public void setAutoFullWithSize(boolean z) {
        this.mAutoFullWithSize = z;
    }

    public boolean isNeedAutoAdaptation() {
        return this.isNeedAutoAdaptation;
    }

    public void setNeedAutoAdaptation(boolean z) {
        this.isNeedAutoAdaptation = z;
    }

    /* access modifiers changed from: protected */
    public void checkAutoFullWithSizeAndAdaptation(final GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        if (gSYBaseVideoPlayer != null && this.isNeedAutoAdaptation && isAutoFullWithSize() && isVerticalVideo() && isFullHideStatusBar()) {
            this.mInnerHandler.postDelayed(new Runnable() {
                public void run() {
                    gSYBaseVideoPlayer.getCurrentPlayer().autoAdaptation();
                }
            }, 100);
        }
    }

    /* access modifiers changed from: protected */
    public void autoAdaptation() {
        Context context = getContext();
        if (isVerticalVideo()) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                setPadding(0, CommonUtil.getStatusBarHeight(context), 0, 0);
                Debuger.printfLog("竖屏，系统未将布局下移");
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("竖屏，系统将布局下移；y:");
            sb.append(iArr[1]);
            Debuger.printfLog(sb.toString());
        }
    }
}
