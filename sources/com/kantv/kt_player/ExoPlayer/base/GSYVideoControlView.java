package com.kantv.kt_player.ExoPlayer.base;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kantv.kt_player.ExoPlayer.listener.GSYVideoProgressListener;
import com.kantv.kt_player.ExoPlayer.listener.LockClickListener;
import com.kantv.kt_player.ExoPlayer.utils.CommonUtil;
import com.kantv.kt_player.ExoPlayer.utils.Debuger;
import com.kantv.kt_player.R;
import java.io.File;
import java.util.Map;
import master.flame.danmaku.danmaku.parser.IDataSource;

public abstract class GSYVideoControlView extends GSYVideoView implements OnClickListener, OnTouchListener, OnSeekBarChangeListener {
    Runnable dismissControlTask = new Runnable() {
        public void run() {
            if (GSYVideoControlView.this.mCurrentState != 0 && GSYVideoControlView.this.mCurrentState != 7 && GSYVideoControlView.this.mCurrentState != 6) {
                if (GSYVideoControlView.this.getActivityContext() != null) {
                    GSYVideoControlView.this.hideAllWidget();
                    GSYVideoControlView gSYVideoControlView = GSYVideoControlView.this;
                    gSYVideoControlView.setViewShowState(gSYVideoControlView.mLockScreen, 8);
                    if (GSYVideoControlView.this.mHideKey && GSYVideoControlView.this.mIfCurrentIsFullscreen && GSYVideoControlView.this.mShowVKey) {
                        CommonUtil.hideNavKey(GSYVideoControlView.this.mContext);
                    }
                }
                if (GSYVideoControlView.this.mPostDismiss) {
                    GSYVideoControlView gSYVideoControlView2 = GSYVideoControlView.this;
                    gSYVideoControlView2.postDelayed(this, (long) gSYVideoControlView2.mDismissControlTime);
                }
            }
        }
    };
    protected GestureDetector gestureDetector = new GestureDetector(getContext().getApplicationContext(), new SimpleOnGestureListener() {
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GSYVideoControlView.this.touchDoubleUp();
            return super.onDoubleTap(motionEvent);
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (!GSYVideoControlView.this.mChangePosition && !GSYVideoControlView.this.mChangeVolume && !GSYVideoControlView.this.mBrightness) {
                GSYVideoControlView.this.onClickUiToggle();
            }
            return super.onSingleTapConfirmed(motionEvent);
        }
    });
    protected ImageView mBackButton;
    protected ViewGroup mBottomContainer;
    protected ProgressBar mBottomProgressBar;
    protected boolean mBrightness = false;
    protected float mBrightnessData = -1.0f;
    protected boolean mChangePosition = false;
    protected boolean mChangeVolume = false;
    protected TextView mCurrentTimeTextView;
    protected int mDismissControlTime = 2500;
    protected int mDownPosition;
    protected float mDownX;
    protected float mDownY;
    protected int mEnlargeImageRes = -1;
    protected boolean mFirstTouch = false;
    protected ImageView mFullscreenButton;
    protected GSYVideoProgressListener mGSYVideoProgressListener;
    protected int mGestureDownVolume;
    protected boolean mHadSeekTouch = false;
    protected boolean mHideKey = true;
    protected boolean mIsTouchWiget = true;
    protected boolean mIsTouchWigetFull = true;
    protected View mLoadingProgressBar;
    protected LockClickListener mLockClickListener;
    protected boolean mLockCurScreen;
    protected ImageView mLockScreen;
    protected float mMoveY;
    protected boolean mNeedLockFull;
    protected boolean mNeedShowWifiTip = true;
    protected boolean mPostDismiss = false;
    protected boolean mPostProgress = false;
    protected SeekBar mProgressBar;
    protected int mSeekEndOffset;
    protected float mSeekRatio = 1.0f;
    protected int mSeekTimePosition;
    protected boolean mSetUpLazy = false;
    protected boolean mShowVKey = false;
    protected int mShrinkImageRes = -1;
    protected View mStartButton;
    protected LinearLayout mStatusbar_empty;
    protected int mThreshold = 80;
    protected View mThumbImageView;
    protected RelativeLayout mThumbImageViewLayout;
    protected boolean mThumbPlay;
    protected TextView mTitleTextView;
    protected ViewGroup mTopContainer;
    protected TextView mTotalTimeTextView;
    protected boolean mTouchingProgressBar = false;
    Runnable progressTask = new Runnable() {
        public void run() {
            if (GSYVideoControlView.this.mCurrentState == 2 || GSYVideoControlView.this.mCurrentState == 5) {
                GSYVideoControlView.this.setTextAndProgress(0);
            }
            if (GSYVideoControlView.this.mPostProgress) {
                GSYVideoControlView.this.postDelayed(this, 1000);
            }
        }
    };

    /* access modifiers changed from: protected */
    public abstract void changeUiToCompleteShow();

    /* access modifiers changed from: protected */
    public abstract void changeUiToError();

    /* access modifiers changed from: protected */
    public abstract void changeUiToNormal();

    /* access modifiers changed from: protected */
    public abstract void changeUiToPauseShow();

    /* access modifiers changed from: protected */
    public abstract void changeUiToPlayingBufferingShow();

    /* access modifiers changed from: protected */
    public abstract void changeUiToPlayingShow();

    /* access modifiers changed from: protected */
    public abstract void changeUiToPreparingShow();

    /* access modifiers changed from: protected */
    public abstract void dismissBrightnessDialog();

    /* access modifiers changed from: protected */
    public abstract void dismissProgressDialog();

    /* access modifiers changed from: protected */
    public abstract void dismissVolumeDialog();

    /* access modifiers changed from: protected */
    public abstract void hideAllWidget();

    /* access modifiers changed from: protected */
    public abstract void onClickUiToggle();

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    /* access modifiers changed from: protected */
    public abstract void showBrightnessDialog(float f);

    /* access modifiers changed from: protected */
    public abstract void showProgressDialog(float f, String str, int i, String str2, int i2);

    /* access modifiers changed from: protected */
    public abstract void showVolumeDialog(float f, int i);

    /* access modifiers changed from: protected */
    public abstract void showWifiDialog();

    public GSYVideoControlView(@NonNull Context context) {
        super(context);
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GSYVideoControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
    }

    public GSYVideoControlView(Context context, Boolean bool) {
        super(context, bool);
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        super.init(context);
        this.mStartButton = findViewById(R.id.start);
        this.mTitleTextView = (TextView) findViewById(R.id.title);
        this.mBackButton = (ImageView) findViewById(R.id.back);
        this.mFullscreenButton = (ImageView) findViewById(R.id.fullscreen);
        this.mProgressBar = (SeekBar) findViewById(R.id.progress);
        this.mCurrentTimeTextView = (TextView) findViewById(R.id.current);
        this.mTotalTimeTextView = (TextView) findViewById(R.id.total);
        this.mBottomContainer = (ViewGroup) findViewById(R.id.layout_bottom);
        this.mTopContainer = (ViewGroup) findViewById(R.id.layout_top);
        this.mBottomProgressBar = (ProgressBar) findViewById(R.id.bottom_progressbar);
        this.mThumbImageViewLayout = (RelativeLayout) findViewById(R.id.thumb);
        this.mLockScreen = (ImageView) findViewById(R.id.lock_screen);
        this.mLoadingProgressBar = findViewById(R.id.loading);
        if (!isInEditMode()) {
            View view = this.mStartButton;
            if (view != null) {
                view.setOnClickListener(this);
            }
            ImageView imageView = this.mFullscreenButton;
            if (imageView != null) {
                imageView.setOnClickListener(this);
                this.mFullscreenButton.setOnTouchListener(this);
            }
            SeekBar seekBar = this.mProgressBar;
            if (seekBar != null) {
                seekBar.setOnSeekBarChangeListener(this);
            }
            ViewGroup viewGroup = this.mBottomContainer;
            if (viewGroup != null) {
                viewGroup.setOnClickListener(this);
            }
            if (this.mTextureViewContainer != null) {
                this.mTextureViewContainer.setOnClickListener(this);
                this.mTextureViewContainer.setOnTouchListener(this);
            }
            SeekBar seekBar2 = this.mProgressBar;
            if (seekBar2 != null) {
                seekBar2.setOnTouchListener(this);
            }
            RelativeLayout relativeLayout = this.mThumbImageViewLayout;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
                this.mThumbImageViewLayout.setOnClickListener(this);
            }
            if (this.mThumbImageView != null && !this.mIfCurrentIsFullscreen) {
                RelativeLayout relativeLayout2 = this.mThumbImageViewLayout;
                if (relativeLayout2 != null) {
                    relativeLayout2.removeAllViews();
                    resolveThumbImage(this.mThumbImageView);
                }
            }
            ImageView imageView2 = this.mBackButton;
            if (imageView2 != null) {
                imageView2.setOnClickListener(this);
            }
            ImageView imageView3 = this.mLockScreen;
            if (imageView3 != null) {
                imageView3.setVisibility(8);
                this.mLockScreen.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        if (GSYVideoControlView.this.mCurrentState != 6 && GSYVideoControlView.this.mCurrentState != 7) {
                            GSYVideoControlView.this.lockTouchLogic();
                            if (GSYVideoControlView.this.mLockClickListener != null) {
                                GSYVideoControlView.this.mLockClickListener.onClick(view, GSYVideoControlView.this.mLockCurScreen);
                            }
                        }
                    }
                });
            }
            if (getActivityContext() != null) {
                this.mSeekEndOffset = CommonUtil.dip2px(getActivityContext(), 50.0f);
            }
            this.mStatusbar_empty = (LinearLayout) findViewById(R.id.statusbar_empty);
            CommonUtil.getStatusBarHeight((Activity) getActivityContext());
            this.mStatusbar_empty.getLayoutParams().height = 0;
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        StringBuilder sb = new StringBuilder();
        sb.append(hashCode());
        sb.append("------------------------------ dismiss onDetachedFromWindow");
        Debuger.printfLog(sb.toString());
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void onAutoCompletion() {
        super.onAutoCompletion();
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    public void onError(int i, int i2) {
        super.onError(i, i2);
        if (this.mLockCurScreen) {
            lockTouchLogic();
            this.mLockScreen.setVisibility(8);
        }
    }

    /* access modifiers changed from: protected */
    public void setStateAndUi(int i) {
        this.mCurrentState = i;
        if ((i == 0 && isCurrentMediaListener()) || i == 6 || i == 7) {
            this.mHadPrepared = false;
        }
        int i2 = this.mCurrentState;
        if (i2 == 0) {
            if (isCurrentMediaListener()) {
                StringBuilder sb = new StringBuilder();
                sb.append(hashCode());
                sb.append("------------------------------ dismiss CURRENT_STATE_NORMAL");
                Debuger.printfLog(sb.toString());
                cancelProgressTimer();
                releasePauseCover();
                this.mBufferPoint = 0;
                this.mSaveChangeViewTIme = 0;
                if (this.mAudioManager != null) {
                    this.mAudioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
                }
            }
            releaseNetWorkState();
        } else if (i2 == 1) {
            resetProgressAndTime();
        } else if (i2 != 2) {
            if (i2 == 5) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(hashCode());
                sb2.append("------------------------------ CURRENT_STATE_PAUSE");
                Debuger.printfLog(sb2.toString());
                startProgressTimer();
            } else if (i2 == 6) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(hashCode());
                sb3.append("------------------------------ dismiss CURRENT_STATE_AUTO_COMPLETE");
                Debuger.printfLog(sb3.toString());
                cancelProgressTimer();
                SeekBar seekBar = this.mProgressBar;
                if (seekBar != null) {
                    seekBar.setProgress(100);
                }
                TextView textView = this.mCurrentTimeTextView;
                if (textView != null) {
                    TextView textView2 = this.mTotalTimeTextView;
                    if (textView2 != null) {
                        textView.setText(textView2.getText());
                    }
                }
                ProgressBar progressBar = this.mBottomProgressBar;
                if (progressBar != null) {
                    progressBar.setProgress(100);
                }
            } else if (i2 == 7) {
                boolean isCurrentMediaListener = isCurrentMediaListener();
            }
        } else if (isCurrentMediaListener()) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(hashCode());
            sb4.append("------------------------------ CURRENT_STATE_PLAYING");
            Debuger.printfLog(sb4.toString());
            startProgressTimer();
        }
        resolveUIState(i);
    }

    /* access modifiers changed from: protected */
    public void setSmallVideoTextureView(OnTouchListener onTouchListener) {
        super.setSmallVideoTextureView(onTouchListener);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnTouchListener(onTouchListener);
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (this.mHideKey && this.mIfCurrentIsFullscreen) {
            CommonUtil.hideNavKey(this.mContext);
        }
        if (id == R.id.start) {
            clickStartIcon();
        } else if (id == R.id.surface_container && this.mCurrentState == 7) {
            if (this.mVideoAllCallBack != null) {
                Debuger.printfLog("onClickStartError");
                this.mVideoAllCallBack.onClickStartError(this.mOriginUrl, this.mTitle, this);
            }
            prepareVideo();
        } else if (id == R.id.thumb) {
            if (this.mThumbPlay) {
                if (TextUtils.isEmpty(this.mUrl)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("********");
                    sb.append(getResources().getString(R.string.no_url));
                    Debuger.printfError(sb.toString());
                } else if (this.mCurrentState == 0) {
                    if (isShowNetConfirm()) {
                        showWifiDialog();
                        return;
                    }
                    startPlayLogic();
                } else if (this.mCurrentState == 6) {
                    onClickUiToggle();
                }
            }
        } else if (id == R.id.surface_container) {
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                if (this.mIfCurrentIsFullscreen) {
                    Debuger.printfLog("onClickBlankFullscreen");
                    this.mVideoAllCallBack.onClickBlankFullscreen(this.mOriginUrl, this.mTitle, this);
                } else {
                    Debuger.printfLog("onClickBlank");
                    this.mVideoAllCallBack.onClickBlank(this.mOriginUrl, this.mTitle, this);
                }
            }
            startDismissControlViewTimer();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00a7, code lost:
        if (r7 != 2) goto L_0x00ef;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            int r7 = r7.getId()
            float r0 = r8.getX()
            float r1 = r8.getY()
            boolean r2 = r6.mIfCurrentIsFullscreen
            r3 = 1
            if (r2 == 0) goto L_0x0020
            boolean r2 = r6.mLockCurScreen
            if (r2 == 0) goto L_0x0020
            boolean r2 = r6.mNeedLockFull
            if (r2 == 0) goto L_0x0020
            r6.onClickUiToggle()
            r6.startDismissControlViewTimer()
            return r3
        L_0x0020:
            int r2 = com.kantv.kt_player.R.id.fullscreen
            r4 = 0
            if (r7 != r2) goto L_0x0026
            return r4
        L_0x0026:
            int r2 = com.kantv.kt_player.R.id.surface_container
            r5 = 2
            if (r7 != r2) goto L_0x009b
            int r7 = r8.getAction()
            if (r7 == 0) goto L_0x0092
            if (r7 == r3) goto L_0x0068
            if (r7 == r5) goto L_0x0036
            goto L_0x0095
        L_0x0036:
            float r7 = r6.mDownX
            float r0 = r0 - r7
            float r7 = r6.mDownY
            float r7 = r1 - r7
            float r2 = java.lang.Math.abs(r0)
            float r3 = java.lang.Math.abs(r7)
            boolean r5 = r6.mIfCurrentIsFullscreen
            if (r5 == 0) goto L_0x004d
            boolean r5 = r6.mIsTouchWigetFull
            if (r5 != 0) goto L_0x0055
        L_0x004d:
            boolean r5 = r6.mIsTouchWiget
            if (r5 == 0) goto L_0x0064
            boolean r5 = r6.mIfCurrentIsFullscreen
            if (r5 != 0) goto L_0x0064
        L_0x0055:
            boolean r5 = r6.mChangePosition
            if (r5 != 0) goto L_0x0064
            boolean r5 = r6.mChangeVolume
            if (r5 != 0) goto L_0x0064
            boolean r5 = r6.mBrightness
            if (r5 != 0) goto L_0x0064
            r6.touchSurfaceMoveFullLogic(r2, r3)
        L_0x0064:
            r6.touchSurfaceMove(r0, r7, r1)
            goto L_0x0095
        L_0x0068:
            r6.startDismissControlViewTimer()
            r6.touchSurfaceUp()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            int r0 = r6.hashCode()
            r7.append(r0)
            java.lang.String r0 = "------------------------------ surface_container ACTION_UP"
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            com.kantv.kt_player.ExoPlayer.utils.Debuger.printfLog(r7)
            r6.startProgressTimer()
            boolean r7 = r6.mHideKey
            if (r7 == 0) goto L_0x0095
            boolean r7 = r6.mShowVKey
            if (r7 == 0) goto L_0x0095
            return r3
        L_0x0092:
            r6.touchSurfaceDown(r0, r1)
        L_0x0095:
            android.view.GestureDetector r7 = r6.gestureDetector
            r7.onTouchEvent(r8)
            goto L_0x00ef
        L_0x009b:
            int r0 = com.kantv.kt_player.R.id.progress
            if (r7 != r0) goto L_0x00ef
            int r7 = r8.getAction()
            if (r7 == 0) goto L_0x00db
            if (r7 == r3) goto L_0x00aa
            if (r7 == r5) goto L_0x00de
            goto L_0x00ef
        L_0x00aa:
            r6.startDismissControlViewTimer()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            int r8 = r6.hashCode()
            r7.append(r8)
            java.lang.String r8 = "------------------------------ progress ACTION_UP"
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            com.kantv.kt_player.ExoPlayer.utils.Debuger.printfLog(r7)
            r6.startProgressTimer()
            android.view.ViewParent r7 = r6.getParent()
        L_0x00cc:
            if (r7 == 0) goto L_0x00d6
            r7.requestDisallowInterceptTouchEvent(r4)
            android.view.ViewParent r7 = r7.getParent()
            goto L_0x00cc
        L_0x00d6:
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
            r6.mBrightnessData = r7
            goto L_0x00ef
        L_0x00db:
            r6.cancelDismissControlViewTimer()
        L_0x00de:
            r6.cancelProgressTimer()
            android.view.ViewParent r7 = r6.getParent()
        L_0x00e5:
            if (r7 == 0) goto L_0x00ef
            r7.requestDisallowInterceptTouchEvent(r3)
            android.view.ViewParent r7 = r7.getParent()
            goto L_0x00e5
        L_0x00ef:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.kt_player.ExoPlayer.base.GSYVideoControlView.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public boolean setUp(String str, boolean z, String str2) {
        return setUp(str, z, null, str2);
    }

    public boolean setUp(String str, boolean z, File file, String str2) {
        if (!super.setUp(str, z, file, str2)) {
            return false;
        }
        if (str2 != null) {
            TextView textView = this.mTitleTextView;
            if (textView != null) {
                textView.setText(str2);
            }
        }
        if (this.mIfCurrentIsFullscreen) {
            ImageView imageView = this.mFullscreenButton;
            if (imageView != null) {
                imageView.setImageResource(getShrinkImageRes());
            }
        } else {
            ImageView imageView2 = this.mFullscreenButton;
            if (imageView2 != null) {
                imageView2.setImageResource(getEnlargeImageRes());
            }
        }
        return true;
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        this.mHadSeekTouch = true;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            if (isIfCurrentIsFullscreen()) {
                Debuger.printfLog("onClickSeekbarFullscreen");
                this.mVideoAllCallBack.onClickSeekbarFullscreen(this.mOriginUrl, this.mTitle, this);
            } else {
                Debuger.printfLog("onClickSeekbar");
                this.mVideoAllCallBack.onClickSeekbar(this.mOriginUrl, this.mTitle, this);
            }
        }
        if (getGSYVideoManager() != null && this.mHadPlay) {
            try {
                getGSYVideoManager().seekTo((long) ((seekBar.getProgress() * getDuration()) / 100));
            } catch (Exception e) {
                Debuger.printfWarning(e.toString());
            }
        }
        this.mHadSeekTouch = false;
    }

    public void onPrepared() {
        super.onPrepared();
        if (this.mCurrentState == 1) {
            startProgressTimer();
            StringBuilder sb = new StringBuilder();
            sb.append(hashCode());
            sb.append("------------------------------ surface_container onPrepared");
            Debuger.printfLog(sb.toString());
        }
    }

    public void onBufferingUpdate(final int i) {
        post(new Runnable() {
            public void run() {
                if (!(GSYVideoControlView.this.mCurrentState == 0 || GSYVideoControlView.this.mCurrentState == 1)) {
                    int i = i;
                    if (i != 0) {
                        GSYVideoControlView.this.setTextAndProgress(i);
                        GSYVideoControlView.this.mBufferPoint = i;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Net speed: ");
                        sb.append(GSYVideoControlView.this.getNetSpeedText());
                        sb.append(" percent ");
                        sb.append(i);
                        Debuger.printfLog(sb.toString());
                    }
                    if (GSYVideoControlView.this.mProgressBar != null && GSYVideoControlView.this.mLooping && GSYVideoControlView.this.mHadPlay && i == 0 && GSYVideoControlView.this.mProgressBar.getProgress() >= GSYVideoControlView.this.mProgressBar.getMax() - 1) {
                        GSYVideoControlView.this.loopSetProgressAndTime();
                    }
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void prepareVideo() {
        if (this.mSetUpLazy) {
            super.setUp(this.mOriginUrl, this.mCache, this.mCachePath, this.mMapHeadData, this.mTitle);
        }
        super.prepareVideo();
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceDown(float f, float f2) {
        this.mTouchingProgressBar = true;
        this.mDownX = f;
        this.mDownY = f2;
        this.mMoveY = 0.0f;
        this.mChangeVolume = false;
        this.mChangePosition = false;
        this.mShowVKey = false;
        this.mBrightness = false;
        this.mFirstTouch = true;
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceMove(float f, float f2, float f3) {
        int i;
        int i2;
        if (getActivityContext() != null) {
            i2 = CommonUtil.getCurrentScreenLand((Activity) getActivityContext()) ? this.mScreenHeight : this.mScreenWidth;
            i = CommonUtil.getCurrentScreenLand((Activity) getActivityContext()) ? this.mScreenWidth : this.mScreenHeight;
        } else {
            i2 = 0;
            i = 0;
        }
        if (this.mChangePosition) {
            int duration = getDuration();
            this.mSeekTimePosition = (int) (((float) this.mDownPosition) + (((((float) duration) * f) / ((float) i2)) / this.mSeekRatio));
            if (this.mSeekTimePosition > duration) {
                this.mSeekTimePosition = duration;
            }
            showProgressDialog(f, CommonUtil.stringForTime(this.mSeekTimePosition), this.mSeekTimePosition, CommonUtil.stringForTime(duration), duration);
        } else if (this.mChangeVolume) {
            float f4 = -f2;
            int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
            float f5 = (float) i;
            this.mAudioManager.setStreamVolume(3, this.mGestureDownVolume + ((int) (((((float) streamMaxVolume) * f4) * 3.0f) / f5)), 0);
            showVolumeDialog(-f4, (int) (((float) ((this.mGestureDownVolume * 100) / streamMaxVolume)) + (((3.0f * f4) * 100.0f) / f5)));
        } else if (this.mBrightness && Math.abs(f2) > ((float) this.mThreshold)) {
            onBrightnessSlide((-f2) / ((float) i));
            this.mDownY = f3;
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceMoveFullLogic(float f, float f2) {
        int i = getActivityContext() != null ? CommonUtil.getCurrentScreenLand((Activity) getActivityContext()) ? this.mScreenHeight : this.mScreenWidth : 0;
        int i2 = this.mThreshold;
        if (f > ((float) i2) || f2 > ((float) i2)) {
            cancelProgressTimer();
            if (f < ((float) this.mThreshold)) {
                boolean z = Math.abs(((float) CommonUtil.getScreenHeight(getContext())) - this.mDownY) > ((float) this.mSeekEndOffset);
                if (this.mFirstTouch) {
                    this.mBrightness = this.mDownX < ((float) i) * 0.5f && z;
                    this.mFirstTouch = false;
                }
                if (!this.mBrightness) {
                    this.mChangeVolume = z;
                    this.mGestureDownVolume = this.mAudioManager.getStreamVolume(3);
                }
                this.mShowVKey = !z;
            } else if (Math.abs(((float) CommonUtil.getScreenWidth(getContext())) - this.mDownX) > ((float) this.mSeekEndOffset)) {
                this.mChangePosition = true;
                this.mDownPosition = getCurrentPositionWhenPlaying();
            } else {
                this.mShowVKey = true;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceUp() {
        if (this.mChangePosition) {
            int duration = getDuration();
            int i = this.mSeekTimePosition * 100;
            if (duration == 0) {
                duration = 1;
            }
            int i2 = i / duration;
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                progressBar.setProgress(i2);
            }
        }
        this.mTouchingProgressBar = false;
        dismissProgressDialog();
        dismissVolumeDialog();
        dismissBrightnessDialog();
        if (this.mChangePosition && getGSYVideoManager() != null && (this.mCurrentState == 2 || this.mCurrentState == 5)) {
            try {
                getGSYVideoManager().seekTo((long) this.mSeekTimePosition);
            } catch (Exception e) {
                e.printStackTrace();
            }
            int duration2 = getDuration();
            int i3 = this.mSeekTimePosition * 100;
            if (duration2 == 0) {
                duration2 = 1;
            }
            int i4 = i3 / duration2;
            SeekBar seekBar = this.mProgressBar;
            if (seekBar != null) {
                seekBar.setProgress(i4);
            }
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                Debuger.printfLog("onTouchScreenSeekPosition");
                this.mVideoAllCallBack.onTouchScreenSeekPosition(this.mOriginUrl, this.mTitle, this);
            }
        } else if (this.mBrightness) {
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                Debuger.printfLog("onTouchScreenSeekLight");
                this.mVideoAllCallBack.onTouchScreenSeekLight(this.mOriginUrl, this.mTitle, this);
            }
        } else if (this.mChangeVolume && this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            Debuger.printfLog("onTouchScreenSeekVolume");
            this.mVideoAllCallBack.onTouchScreenSeekVolume(this.mOriginUrl, this.mTitle, this);
        }
    }

    /* access modifiers changed from: protected */
    public void touchDoubleUp() {
        if (this.mHadPlay) {
            clickStartIcon();
        }
    }

    /* access modifiers changed from: protected */
    public void resolveUIState(int i) {
        if (i == 0) {
            changeUiToNormal();
            cancelDismissControlViewTimer();
        } else if (i == 1) {
            changeUiToPreparingShow();
            startDismissControlViewTimer();
        } else if (i == 2) {
            changeUiToPlayingShow();
            startDismissControlViewTimer();
        } else if (i == 3) {
            changeUiToPlayingBufferingShow();
        } else if (i == 5) {
            changeUiToPauseShow();
            cancelDismissControlViewTimer();
        } else if (i == 6) {
            changeUiToCompleteShow();
            cancelDismissControlViewTimer();
        } else if (i == 7) {
            changeUiToError();
        }
    }

    /* access modifiers changed from: protected */
    public void clickStartIcon() {
        if (TextUtils.isEmpty(this.mUrl)) {
            StringBuilder sb = new StringBuilder();
            sb.append("********");
            sb.append(getResources().getString(R.string.no_url));
            Debuger.printfError(sb.toString());
            return;
        }
        if (this.mCurrentState == 0 || this.mCurrentState == 7) {
            if (isShowNetConfirm()) {
                showWifiDialog();
                return;
            }
            startButtonLogic();
        } else if (this.mCurrentState == 2) {
            try {
                onVideoPause();
            } catch (Exception e) {
                e.printStackTrace();
            }
            setStateAndUi(5);
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                if (this.mIfCurrentIsFullscreen) {
                    Debuger.printfLog("onClickStopFullscreen");
                    this.mVideoAllCallBack.onClickStopFullscreen(this.mOriginUrl, this.mTitle, this);
                } else {
                    Debuger.printfLog("onClickStop");
                    this.mVideoAllCallBack.onClickStop(this.mOriginUrl, this.mTitle, this);
                }
            }
        } else if (this.mCurrentState == 5) {
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                if (this.mIfCurrentIsFullscreen) {
                    Debuger.printfLog("onClickResumeFullscreen");
                    this.mVideoAllCallBack.onClickResumeFullscreen(this.mOriginUrl, this.mTitle, this);
                } else {
                    Debuger.printfLog("onClickResume");
                    this.mVideoAllCallBack.onClickResume(this.mOriginUrl, this.mTitle, this);
                }
            }
            if (!this.mHadPlay && !this.mStartAfterPrepared) {
                startAfterPrepared();
            }
            try {
                getGSYVideoManager().start();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            setStateAndUi(2);
        } else if (this.mCurrentState == 6) {
            startButtonLogic();
        }
    }

    /* access modifiers changed from: protected */
    public void lockTouchLogic() {
        if (this.mLockCurScreen) {
            this.mLockScreen.setImageResource(R.drawable.unlock);
            this.mLockCurScreen = false;
            return;
        }
        this.mLockScreen.setImageResource(R.drawable.lock);
        this.mLockCurScreen = true;
        hideAllWidget();
    }

    /* access modifiers changed from: protected */
    public void startProgressTimer() {
        Debuger.printfLog("startProgressTimer");
        cancelProgressTimer();
        this.mPostProgress = true;
        postDelayed(this.progressTask, 300);
    }

    /* access modifiers changed from: protected */
    public void cancelProgressTimer() {
        Debuger.printfLog("cancelProgressTimer");
        this.mPostProgress = false;
        removeCallbacks(this.progressTask);
    }

    /* access modifiers changed from: protected */
    public void setTextAndProgress(int i) {
        int currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
        int duration = getDuration();
        setProgressAndTime((currentPositionWhenPlaying * 100) / (duration == 0 ? 1 : duration), i, currentPositionWhenPlaying, duration);
    }

    /* access modifiers changed from: protected */
    public void setProgressAndTime(int i, int i2, int i3, int i4) {
        if (this.mGSYVideoProgressListener != null && this.mCurrentState == 2) {
            this.mGSYVideoProgressListener.onProgress(i, i2, i3, i4);
        }
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null && this.mTotalTimeTextView != null && this.mCurrentTimeTextView != null && !this.mHadSeekTouch) {
            if (!this.mTouchingProgressBar && i != 0) {
                seekBar.setProgress(i);
            }
            if (getGSYVideoManager().getBufferedPercentage() > 0) {
                i2 = getGSYVideoManager().getBufferedPercentage();
            }
            if (i2 > 94) {
                i2 = 100;
            }
            setSecondaryProgress(i2);
            this.mTotalTimeTextView.setText(CommonUtil.stringForTime(i4));
            if (i3 > 0) {
                this.mCurrentTimeTextView.setText(CommonUtil.stringForTime(i3));
            }
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                if (i != 0) {
                    progressBar.setProgress(i);
                }
                setSecondaryProgress(i2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void setSecondaryProgress(int i) {
        if (!(this.mProgressBar == null || i == 0 || getGSYVideoManager().isCacheFile())) {
            this.mProgressBar.setSecondaryProgress(i);
        }
        if (this.mBottomProgressBar != null && i != 0 && !getGSYVideoManager().isCacheFile()) {
            this.mBottomProgressBar.setSecondaryProgress(i);
        }
    }

    /* access modifiers changed from: protected */
    public void resetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null && this.mTotalTimeTextView != null && this.mCurrentTimeTextView != null) {
            seekBar.setProgress(0);
            this.mProgressBar.setSecondaryProgress(0);
            this.mCurrentTimeTextView.setText(CommonUtil.stringForTime(0));
            this.mTotalTimeTextView.setText(CommonUtil.stringForTime(0));
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                progressBar.setProgress(0);
                this.mBottomProgressBar.setSecondaryProgress(0);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void loopSetProgressAndTime() {
        SeekBar seekBar = this.mProgressBar;
        if (seekBar != null && this.mTotalTimeTextView != null && this.mCurrentTimeTextView != null) {
            seekBar.setProgress(0);
            this.mProgressBar.setSecondaryProgress(0);
            this.mCurrentTimeTextView.setText(CommonUtil.stringForTime(0));
            ProgressBar progressBar = this.mBottomProgressBar;
            if (progressBar != null) {
                progressBar.setProgress(0);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void startDismissControlViewTimer() {
        cancelDismissControlViewTimer();
        this.mPostDismiss = true;
        postDelayed(this.dismissControlTask, (long) this.mDismissControlTime);
    }

    /* access modifiers changed from: protected */
    public void cancelDismissControlViewTimer() {
        this.mPostDismiss = false;
        removeCallbacks(this.dismissControlTask);
    }

    /* access modifiers changed from: protected */
    public void resolveThumbImage(View view) {
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
            this.mThumbImageViewLayout.addView(view);
            LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            view.setLayoutParams(layoutParams);
        }
    }

    /* access modifiers changed from: protected */
    public void setViewShowState(View view, int i) {
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* access modifiers changed from: protected */
    public void onBrightnessSlide(float f) {
        this.mBrightnessData = ((Activity) this.mContext).getWindow().getAttributes().screenBrightness;
        float f2 = this.mBrightnessData;
        if (f2 <= 0.0f) {
            this.mBrightnessData = 0.5f;
        } else if (f2 < 0.01f) {
            this.mBrightnessData = 0.01f;
        }
        WindowManager.LayoutParams attributes = ((Activity) this.mContext).getWindow().getAttributes();
        attributes.screenBrightness = this.mBrightnessData + f;
        if (attributes.screenBrightness > 1.0f) {
            attributes.screenBrightness = 1.0f;
        } else if (attributes.screenBrightness < 0.01f) {
            attributes.screenBrightness = 0.01f;
        }
        showBrightnessDialog(attributes.screenBrightness);
        ((Activity) this.mContext).getWindow().setAttributes(attributes);
    }

    /* access modifiers changed from: protected */
    public boolean isShowNetConfirm() {
        return !this.mOriginUrl.startsWith(IDataSource.SCHEME_FILE_TAG) && !this.mOriginUrl.startsWith("android.resource") && !CommonUtil.isWifiConnected(getContext()) && this.mNeedShowWifiTip && !getGSYVideoManager().cachePreview(this.mContext.getApplicationContext(), this.mCachePath, this.mOriginUrl);
    }

    public boolean setUpLazy(String str, boolean z, File file, Map<String, String> map, String str2) {
        this.mOriginUrl = str;
        this.mCache = z;
        this.mCachePath = file;
        this.mSetUpLazy = true;
        this.mTitle = str2;
        this.mMapHeadData = map;
        if (isCurrentMediaListener() && System.currentTimeMillis() - this.mSaveChangeViewTIme < 2000) {
            return false;
        }
        this.mUrl = "waiting";
        this.mCurrentState = 0;
        return true;
    }

    public void initUIState() {
        setStateAndUi(0);
    }

    public RelativeLayout getThumbImageViewLayout() {
        return this.mThumbImageViewLayout;
    }

    public void setThumbImageView(View view) {
        if (this.mThumbImageViewLayout != null) {
            this.mThumbImageView = view;
            resolveThumbImage(view);
        }
    }

    public void clearThumbImageView() {
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
    }

    public View getThumbImageView() {
        return this.mThumbImageView;
    }

    public TextView getTitleTextView() {
        return this.mTitleTextView;
    }

    public View getStartButton() {
        return this.mStartButton;
    }

    public ImageView getFullscreenButton() {
        return this.mFullscreenButton;
    }

    public ImageView getBackButton() {
        return this.mBackButton;
    }

    public int getEnlargeImageRes() {
        int i = this.mEnlargeImageRes;
        return i == -1 ? R.drawable.full_screen : i;
    }

    public void setEnlargeImageRes(int i) {
        this.mEnlargeImageRes = i;
    }

    public int getShrinkImageRes() {
        int i = this.mShrinkImageRes;
        return i == -1 ? R.drawable.video_shrink : i;
    }

    public void setShrinkImageRes(int i) {
        this.mShrinkImageRes = i;
    }

    public void setIsTouchWigetFull(boolean z) {
        this.mIsTouchWigetFull = z;
    }

    public void setThumbPlay(boolean z) {
        this.mThumbPlay = z;
    }

    public boolean isHideKey() {
        return this.mHideKey;
    }

    public void setHideKey(boolean z) {
        this.mHideKey = z;
    }

    public boolean isNeedShowWifiTip() {
        return this.mNeedShowWifiTip;
    }

    public boolean isTouchWiget() {
        return this.mIsTouchWiget;
    }

    public void setIsTouchWiget(boolean z) {
        this.mIsTouchWiget = z;
    }

    public boolean isTouchWigetFull() {
        return this.mIsTouchWigetFull;
    }

    public void setNeedShowWifiTip(boolean z) {
        this.mNeedShowWifiTip = z;
    }

    public void setSeekRatio(float f) {
        if (f >= 0.0f) {
            this.mSeekRatio = f;
        }
    }

    public float getSeekRatio() {
        return this.mSeekRatio;
    }

    public boolean isNeedLockFull() {
        return this.mNeedLockFull;
    }

    public void setNeedLockFull(boolean z) {
        this.mNeedLockFull = z;
    }

    public void setLockClickListener(LockClickListener lockClickListener) {
        this.mLockClickListener = lockClickListener;
    }

    public void setDismissControlTime(int i) {
        this.mDismissControlTime = i;
    }

    public int getDismissControlTime() {
        return this.mDismissControlTime;
    }

    public void setGSYVideoProgressListener(GSYVideoProgressListener gSYVideoProgressListener) {
        this.mGSYVideoProgressListener = gSYVideoProgressListener;
    }
}
