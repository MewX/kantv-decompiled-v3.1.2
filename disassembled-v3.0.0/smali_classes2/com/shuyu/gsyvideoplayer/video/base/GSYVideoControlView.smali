.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;
.source "GSYVideoControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;,
        Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;
    }
.end annotation


# instance fields
.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected mBackButton:Landroid/widget/ImageView;

.field protected mBottomContainer:Landroid/view/ViewGroup;

.field protected mBottomProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightness:Z

.field protected mBrightnessData:F

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mCurrentTimeTextView:Landroid/widget/TextView;

.field protected mDismissControlTime:I

.field protected mDismissControlViewTimer:Ljava/util/Timer;

.field protected mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

.field protected mDownPosition:I

.field protected mDownX:F

.field protected mDownY:F

.field protected mEnlargeImageRes:I

.field protected mFirstTouch:Z

.field protected mFullscreenButton:Landroid/widget/ImageView;

.field protected mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

.field protected mGestureDownVolume:I

.field protected mHideKey:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mLoadingProgressBar:Landroid/view/View;

.field protected mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

.field protected mLockCurScreen:Z

.field protected mLockScreen:Landroid/widget/ImageView;

.field protected mMoveY:F

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mProgressBar:Landroid/widget/SeekBar;

.field protected mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

.field protected mSeekEndOffset:I

.field protected mSeekRatio:F

.field protected mSeekTimePosition:I

.field protected mSetUpLazy:Z

.field protected mShowVKey:Z

.field protected mShrinkImageRes:I

.field protected mStartButton:Landroid/view/View;

.field protected mThreshold:I

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbImageViewLayout:Landroid/widget/RelativeLayout;

.field protected mThumbPlay:Z

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected mTopContainer:Landroid/view/ViewGroup;

.field protected mTotalTimeTextView:Landroid/widget/TextView;

.field protected mTouchingProgressBar:Z

.field protected updateProcessTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x50

    .line 52
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 64
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 67
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 82
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 88
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 91
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 94
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 106
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 109
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 112
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 124
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 416
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x50

    .line 52
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 64
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 67
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 82
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 88
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 91
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 94
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 103
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 106
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 112
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 124
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 416
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x50

    .line 52
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 64
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 67
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 82
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 88
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 91
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 94
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 103
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 106
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 112
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 124
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 416
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;

    invoke-direct {p3, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/16 p1, 0x50

    .line 52
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 64
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 67
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 82
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 88
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 91
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 94
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 103
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 106
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 112
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 124
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 416
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method protected cancelDismissControlViewTimer()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 971
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    if-eqz v0, :cond_1

    .line 974
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->cancel()Z

    .line 975
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    :cond_1
    return-void
.end method

.method protected cancelProgressTimer()V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 875
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->cancel()Z

    .line 879
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    :cond_1
    return-void
.end method

.method protected abstract changeUiToCompleteShow()V
.end method

.method protected abstract changeUiToError()V
.end method

.method protected abstract changeUiToNormal()V
.end method

.method protected abstract changeUiToPauseShow()V
.end method

.method protected abstract changeUiToPlayingBufferingShow()V
.end method

.method protected abstract changeUiToPlayingShow()V
.end method

.method protected abstract changeUiToPreparingShow()V
.end method

.method public clearThumbImageView()V
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected clickStartIcon()V
    .locals 7

    .line 803
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->no_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void

    .line 808
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    .line 814
    :cond_1
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 816
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 820
    :goto_0
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 821
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 822
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_2

    const-string v0, "onClickStopFullscreen"

    .line 823
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v0, v1, v4}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickStopFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    const-string v0, "onClickStop"

    .line 826
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v0, v1, v4}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 830
    :cond_3
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-ne v0, v1, :cond_6

    .line 831
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 832
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_4

    const-string v0, "onClickResumeFullscreen"

    .line 833
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p0, v5, v2

    invoke-interface {v0, v1, v5}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickResumeFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v0, "onClickResume"

    .line 836
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p0, v5, v2

    invoke-interface {v0, v1, v5}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 843
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 845
    :goto_2
    invoke-virtual {p0, v4}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    goto :goto_4

    .line 846
    :cond_6
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 847
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startButtonLogic()V

    goto :goto_4

    .line 809
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 810
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    return-void

    .line 813
    :cond_8
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startButtonLogic()V

    :cond_9
    :goto_4
    return-void
.end method

.method protected abstract dismissBrightnessDialog()V
.end method

.method protected abstract dismissProgressDialog()V
.end method

.method protected abstract dismissVolumeDialog()V
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDismissControlTime()I
    .locals 1

    .line 1324
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    return v0
.end method

.method public getEnlargeImageRes()I
    .locals 2

    .line 1192
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1193
    sget v0, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_enlarge:I

    :cond_0
    return v0
.end method

.method public getFullscreenButton()Landroid/widget/ImageView;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSeekRatio()F
    .locals 1

    .line 1291
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 2

    .line 1208
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1209
    sget v0, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_shrink:I

    :cond_0
    return v0
.end method

.method public getStartButton()Landroid/view/View;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    return-object v0
.end method

.method public getThumbImageView()Landroid/view/View;
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    return-object v0
.end method

.method public getThumbImageViewLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected abstract hideAllWidget()V
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    .line 198
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->start:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 199
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    .line 200
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->back:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    .line 201
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->fullscreen:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 202
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 203
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->current:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 204
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->total:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 205
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->layout_bottom:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 206
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->layout_top:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 207
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->bottom_progressbar:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 208
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->thumb:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 209
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->lock_screen:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 211
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->loading:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 214
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    .line 227
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 231
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 235
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    :cond_5
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_6

    .line 240
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    :cond_6
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_7

    .line 244
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_7
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_8

    .line 248
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 249
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    .line 252
    :cond_8
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 253
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_9
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    .line 256
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_a
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    return-void
.end method

.method public initUIState()V
    .locals 1

    const/4 v0, 0x0

    .line 1127
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    return-void
.end method

.method public isHideKey()Z
    .locals 1

    .line 1240
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    return v0
.end method

.method public isNeedLockFull()Z
    .locals 1

    .line 1296
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return v0
.end method

.method public isNeedShowWifiTip()Z
    .locals 1

    .line 1251
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    return v0
.end method

.method protected isShowNetConfirm()Z
    .locals 4

    .line 1024
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchWiget()Z
    .locals 1

    .line 1256
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    return v0
.end method

.method public isTouchWigetFull()Z
    .locals 1

    .line 1268
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    return v0
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 855
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 857
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    goto :goto_0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->lock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 860
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 861
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    :goto_0
    return-void
.end method

.method protected loopSetProgressAndTime()V
    .locals 3

    .line 950
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 953
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 954
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 955
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAutoCompletion()V
    .locals 2

    .line 285
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAutoCompletion()V

    .line 286
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 288
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onBrightnessSlide(F)V
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 1006
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const v1, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1007
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1009
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 1011
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1012
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    add-float/2addr v2, p1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1013
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 1014
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    .line 1015
    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 1016
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1018
    :cond_3
    :goto_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showBrightnessDialog(F)V

    .line 1019
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 3

    .line 605
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(I)V

    .line 608
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBufferPoint:I

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Net speed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getNetSpeedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " percent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    return-void

    .line 615
    :cond_1
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLooping:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPlay:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->loopSetProgressAndTime()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 370
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    .line 373
    :cond_0
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->start:I

    if-ne p1, v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    goto/16 :goto_1

    .line 375
    :cond_1
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->surface_container:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_3

    .line 376
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_2

    const-string p1, "onClickStartError"

    .line 377
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->prepareVideo()V

    goto/16 :goto_1

    .line 381
    :cond_3
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->thumb:I

    if-ne p1, v0, :cond_8

    .line 382
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    if-nez p1, :cond_4

    return-void

    .line 385
    :cond_4
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "********"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shuyu/gsyvideoplayer/R$string;->no_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void

    .line 390
    :cond_5
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-nez p1, :cond_7

    .line 391
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 392
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    return-void

    .line 395
    :cond_6
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startPlayLogic()V

    goto :goto_1

    .line 396
    :cond_7
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_b

    .line 397
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    goto :goto_1

    .line 399
    :cond_8
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->surface_container:I

    if-ne p1, v0, :cond_b

    .line 400
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 401
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_9

    const-string p1, "onClickBlankFullscreen"

    .line 402
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickBlankFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    const-string p1, "onClickBlank"

    .line 405
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    :cond_b
    :goto_1
    return-void
.end method

.method protected abstract onClickUiToggle()V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 278
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onDetachedFromWindow()V

    .line 279
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 280
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onError(II)V

    .line 295
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 297
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 597
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onPrepared()V

    .line 598
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 560
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPlay:Z

    if-eqz p2, :cond_0

    .line 561
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result p2

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x64

    .line 562
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 563
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 576
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const-string v0, "onClickSeekbarFullscreen"

    .line 578
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onClickSeekbar"

    .line 581
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPlay:Z

    if-eqz v0, :cond_2

    .line 587
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x64

    .line 588
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 590
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfWarning(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 439
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 442
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 444
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    return v3

    .line 448
    :cond_0
    sget v2, Lcom/shuyu/gsyvideoplayer/R$id;->fullscreen:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    return v4

    .line 452
    :cond_1
    sget v2, Lcom/shuyu/gsyvideoplayer/R$id;->surface_container:I

    const/4 v5, 0x2

    if-ne p1, v2, :cond_9

    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v5, :cond_2

    goto :goto_0

    .line 460
    :cond_2
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr v0, p1

    .line 461
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float p1, v1, p1

    .line 462
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 463
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 465
    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    if-nez v5, :cond_4

    :cond_3
    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-nez v5, :cond_5

    .line 467
    :cond_4
    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez v5, :cond_5

    .line 468
    invoke-virtual {p0, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    .line 471
    :cond_5
    invoke-virtual {p0, v0, p1, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    goto :goto_0

    .line 476
    :cond_6
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 478
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    .line 480
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 483
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    if-eqz p1, :cond_8

    return v3

    .line 456
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceDown(FF)V

    .line 488
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 489
    :cond_9
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->progress:I

    if-ne p1, v0, :cond_e

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_a

    if-eq p1, v5, :cond_d

    goto :goto_3

    .line 502
    :cond_a
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 503
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 504
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_b

    .line 506
    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 507
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_b
    const/high16 p1, -0x40800000    # -1.0f

    .line 509
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_3

    .line 492
    :cond_c
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 494
    :cond_d
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 495
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_e

    .line 497
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 498
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_2

    :cond_e
    :goto_3
    return v4
.end method

.method protected prepareVideo()V
    .locals 7

    .line 626
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    if-eqz v0, :cond_0

    .line 627
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCache:Z

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCachePath:Ljava/io/File;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    move-object v1, p0

    invoke-super/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 633
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    return-void
.end method

.method protected resetProgressAndTime()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 937
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 938
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 939
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 944
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected resolveThumbImage(Landroid/view/View;)V
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 984
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 985
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 986
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 987
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 988
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected resolveUIState(I)V
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToError()V

    goto :goto_0

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToCompleteShow()V

    .line 790
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPauseShow()V

    .line 783
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    goto :goto_0

    .line 793
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingBufferingShow()V

    goto :goto_0

    .line 778
    :cond_4
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingShow()V

    .line 779
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_0

    .line 774
    :cond_5
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPreparingShow()V

    .line 775
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_0

    .line 770
    :cond_6
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToNormal()V

    .line 771
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    :goto_0
    return-void
.end method

.method public setDismissControlTime(I)V
    .locals 0

    .line 1320
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    return-void
.end method

.method public setEnlargeImageRes(I)V
    .locals 0

    .line 1204
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    return-void
.end method

.method public setGSYVideoProgressListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;)V
    .locals 0

    .line 1331
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    return-void
.end method

.method public setHideKey(Z)V
    .locals 0

    .line 1247
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    return-void
.end method

.method public setIsTouchWiget(Z)V
    .locals 0

    .line 1264
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    return-void
.end method

.method public setIsTouchWigetFull(Z)V
    .locals 0

    .line 1228
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    return-void
.end method

.method public setLockClickListener(Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

    return-void
.end method

.method public setNeedLockFull(Z)V
    .locals 0

    .line 1304
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .locals 0

    .line 1275
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    return-void
.end method

.method protected setProgressAndTime(IIII)V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 894
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;->onProgress(IIII)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    .line 901
    :cond_1
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 902
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 904
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getBufferedPercentage()I

    move-result v0

    if-lez v0, :cond_3

    .line 905
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getBufferedPercentage()I

    move-result p2

    :cond_3
    const/16 v0, 0x5e

    if-le p2, v0, :cond_4

    const/16 p2, 0x64

    .line 908
    :cond_4
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    .line 909
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p3, :cond_5

    .line 911
    iget-object p4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    :cond_5
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz p3, :cond_7

    if-eqz p1, :cond_6

    .line 914
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 915
    :cond_6
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected setSecondaryProgress(I)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 926
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_1
    return-void
.end method

.method public setSeekRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 1287
    :cond_0
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    return-void
.end method

.method public setShrinkImageRes(I)V
    .locals 0

    .line 1220
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    return-void
.end method

.method protected setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 362
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 364
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected setStateAndUi(I)V
    .locals 4

    .line 308
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p1, v0, :cond_2

    .line 312
    :cond_1
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPrepared:Z

    .line 315
    :cond_2
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    if-eq v3, v1, :cond_9

    const/4 v1, 0x2

    if-eq v3, v1, :cond_8

    const/4 v1, 0x5

    if-eq v3, v1, :cond_7

    if-eq v3, v2, :cond_4

    if-eq v3, v0, :cond_3

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 340
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    goto :goto_0

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 345
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    if-eqz v0, :cond_5

    .line 346
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 349
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 336
    :cond_7
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    goto :goto_0

    .line 333
    :cond_8
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    goto :goto_0

    .line 330
    :cond_9
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resetProgressAndTime()V

    goto :goto_0

    .line 317
    :cond_a
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 318
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 319
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    .line 320
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->releasePauseCover()V

    .line 321
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBufferPoint:I

    const-wide/16 v0, 0x0

    .line 322
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSaveChangeViewTIme:J

    .line 324
    :cond_b
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_c

    .line 325
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 327
    :cond_c
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->releaseNetWorkState()V

    .line 356
    :cond_d
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resolveUIState(I)V

    return-void
.end method

.method protected setTextAndProgress(I)V
    .locals 4

    .line 885
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 886
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 887
    :goto_0
    div-int/2addr v2, v3

    .line 888
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIII)V

    return-void
.end method

.method public setThumbImageView(Landroid/view/View;)V
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1142
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    .line 1143
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setThumbPlay(Z)V
    .locals 0

    .line 1235
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    return-void
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 542
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_0

    .line 543
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :cond_0
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_1

    .line 547
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 528
    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1109
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    .line 1110
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCache:Z

    .line 1111
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCachePath:Ljava/io/File;

    const/4 p1, 0x1

    .line 1112
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 1113
    iput-object p5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    .line 1114
    iput-object p4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mMapHeadData:Ljava/util/Map;

    .line 1115
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSaveChangeViewTIme:J

    sub-long/2addr p4, v0

    const-wide/16 v0, 0x7d0

    cmp-long p2, p4, v0

    if-gez p2, :cond_0

    return p3

    :cond_0
    const-string p2, "waiting"

    .line 1118
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mUrl:Ljava/lang/String;

    .line 1119
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    return p1
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 995
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected abstract showBrightnessDialog(F)V
.end method

.method protected abstract showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
.end method

.method protected abstract showVolumeDialog(FI)V
.end method

.method protected abstract showWifiDialog()V
.end method

.method protected startDismissControlViewTimer()V
    .locals 4

    .line 962
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 963
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    .line 964
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    .line 965
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected startProgressTimer()V
    .locals 8

    .line 866
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 867
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    .line 868
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    .line 869
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x12c

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected touchDoubleUp()V
    .locals 1

    .line 756
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    return-void
.end method

.method protected touchSurfaceDown(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 638
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 639
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    const/4 p1, 0x0

    .line 640
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mMoveY:F

    const/4 p1, 0x0

    .line 641
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 642
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 643
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 644
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 645
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .locals 9

    .line 650
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getCurrentScreenLand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenWidth:I

    .line 651
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getCurrentScreenLand(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenWidth:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenHeight:I

    .line 653
    :goto_1
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-eqz v2, :cond_3

    .line 654
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v8

    .line 655
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    int-to-float p2, p2

    int-to-float p3, v8

    mul-float p3, p3, p1

    int-to-float v0, v0

    div-float/2addr p3, v0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 656
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    if-le p2, v8, :cond_2

    .line 657
    iput v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 658
    :cond_2
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    .line 659
    invoke-static {v8}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v7

    .line 660
    iget v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    .line 661
    :cond_3
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-eqz p1, :cond_4

    neg-float p1, p2

    .line 663
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    int-to-float v0, p2

    mul-float v0, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 665
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    add-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-virtual {v3, p3, v4, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 666
    iget p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p2

    int-to-float p2, p3

    mul-float v2, v2, p1

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float v2, v2, p3

    div-float/2addr v2, v1

    add-float/2addr p2, v2

    float-to-int p2, p2

    neg-float p1, p1

    .line 668
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showVolumeDialog(FI)V

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    .line 669
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz p1, :cond_5

    .line 670
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    neg-float p1, p2

    int-to-float p2, v1

    div-float/2addr p1, p2

    .line 672
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onBrightnessSlide(F)V

    .line 673
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    :cond_5
    :goto_2
    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 4

    .line 681
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getCurrentScreenLand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenWidth:I

    .line 683
    :goto_0
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_1

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_8

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 685
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float p2, p2

    const/4 v1, 0x1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    .line 687
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 688
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 689
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 690
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    goto :goto_3

    .line 692
    :cond_2
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    goto :goto_3

    .line 695
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 696
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float p2, p2

    const/4 v2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 697
    :goto_1
    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    if-eqz p2, :cond_6

    .line 698
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v0, v0, v3

    cmpg-float p2, p2, v0

    if-gez p2, :cond_5

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 699
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 701
    :cond_6
    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez p2, :cond_7

    .line 702
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 703
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    :cond_7
    xor-int/2addr p1, v1

    .line 705
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    :cond_8
    :goto_3
    return-void
.end method

.method protected touchSurfaceUp()V
    .locals 6

    .line 712
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v0

    .line 714
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v2, v2, 0x64

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    div-int/2addr v2, v0

    .line 715
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 720
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->dismissProgressDialog()V

    .line 721
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->dismissVolumeDialog()V

    .line 722
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->dismissBrightnessDialog()V

    .line 723
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 725
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v2

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    int-to-long v4, v4

    invoke-interface {v2, v4, v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 727
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 729
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v2

    .line 730
    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v4, v4, 0x64

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    div-int/2addr v4, v2

    .line 731
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_4

    .line 732
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 734
    :cond_4
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "onTouchScreenSeekPosition"

    .line 735
    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v0

    aput-object p0, v3, v1

    invoke-interface {v2, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onTouchScreenSeekPosition(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 738
    :cond_5
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz v2, :cond_6

    .line 739
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "onTouchScreenSeekLight"

    .line 740
    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v0

    aput-object p0, v3, v1

    invoke-interface {v2, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onTouchScreenSeekLight(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 743
    :cond_6
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-eqz v2, :cond_7

    .line 744
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "onTouchScreenSeekVolume"

    .line 745
    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v0

    aput-object p0, v3, v1

    invoke-interface {v2, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onTouchScreenSeekVolume(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method
