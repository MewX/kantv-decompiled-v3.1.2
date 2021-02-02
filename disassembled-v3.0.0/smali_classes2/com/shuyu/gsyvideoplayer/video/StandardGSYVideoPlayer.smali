.class public Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
.source "StandardGSYVideoPlayer.java"


# instance fields
.field protected mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBrightnessDialog:Landroid/app/Dialog;

.field protected mBrightnessDialogTv:Landroid/widget/TextView;

.field protected mDialogIcon:Landroid/widget/ImageView;

.field protected mDialogProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDialogProgressHighLightColor:I

.field protected mDialogProgressNormalColor:I

.field protected mDialogSeekTime:Landroid/widget/TextView;

.field protected mDialogTotalTime:Landroid/widget/TextView;

.field protected mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

.field protected mProgressDialog:Landroid/app/Dialog;

.field protected mVolumeDialog:Landroid/app/Dialog;

.field protected mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/16 p1, -0xb

    .line 77
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, -0xb

    .line 77
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/16 p1, -0xb

    .line 77
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method private initFullUI(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 771
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 775
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 778
    :cond_3
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    if-ltz v0, :cond_4

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    if-ltz v1, :cond_4

    .line 779
    invoke-virtual {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressColor(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected changeUiToClear()V
    .locals 2

    const-string v0, "changeUiToClear"

    .line 698
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 701
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 702
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 703
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 704
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 705
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 706
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 708
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    :cond_0
    return-void
.end method

.method protected changeUiToCompleteClear()V
    .locals 3

    const-string v0, "changeUiToCompleteClear"

    .line 714
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 717
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 718
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 719
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 720
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 721
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 722
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 724
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToCompleteShow()V
    .locals 3

    const-string v0, "changeUiToCompleteShow"

    .line 532
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 535
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 536
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 537
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 538
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 539
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 540
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 542
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToError()V
    .locals 3

    const-string v0, "changeUiToError"

    .line 550
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 553
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 554
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 555
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 556
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 557
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 558
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 560
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToNormal()V
    .locals 3

    const-string v0, "changeUiToNormal"

    .line 437
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 440
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 441
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 442
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 443
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 444
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 445
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 447
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 448
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    :cond_1
    return-void
.end method

.method protected changeUiToPauseClear()V
    .locals 2

    const-string v0, "changeUiToPauseClear"

    .line 671
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToClear()V

    .line 673
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 674
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updatePauseCover()V

    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 3

    const-string v0, "changeUiToPauseShow"

    .line 493
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 496
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 497
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 498
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 499
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 500
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 501
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 503
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 507
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updatePauseCover()V

    return-void
.end method

.method protected changeUiToPlayingBufferingClear()V
    .locals 3

    const-string v0, "changeUiToPlayingBufferingClear"

    .line 678
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 681
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 682
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 683
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 684
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 685
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 686
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 688
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 690
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->start()V

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 3

    const-string v0, "changeUiToPlayingBufferingShow"

    .line 512
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 515
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 516
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 517
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 518
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 519
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 520
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 522
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 524
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->start()V

    :cond_0
    return-void
.end method

.method protected changeUiToPlayingClear()V
    .locals 2

    const-string v0, "changeUiToPlayingClear"

    .line 665
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToClear()V

    .line 667
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 3

    const-string v0, "changeUiToPlayingShow"

    .line 475
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 478
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 479
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 480
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 481
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 482
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 483
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 485
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    return-void
.end method

.method protected changeUiToPrepareingClear()V
    .locals 2

    const-string v0, "changeUiToPrepareingClear"

    .line 649
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 652
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 653
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 654
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 655
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 656
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 657
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 659
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->reset()V

    :cond_0
    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 3

    const-string v0, "changeUiToPreparingShow"

    .line 455
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 458
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 459
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 460
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 461
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 462
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 463
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 465
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 467
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->start()V

    :cond_0
    return-void
.end method

.method protected cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 336
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 337
    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 338
    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 339
    iget-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 341
    iget-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 343
    :cond_0
    iget-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_1
    iget-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 347
    iget-object p2, p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected dismissBrightnessDialog()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected dismissProgressDialog()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected dismissVolumeDialog()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected getBrightnessLayoutId()I
    .locals 1

    .line 636
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_brightness:I

    return v0
.end method

.method protected getBrightnessTextId()I
    .locals 1

    .line 645
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->app_video_brightness:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 124
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_layout_standard:I

    return v0
.end method

.method protected getProgressDialogAllDurationTextId()I
    .locals 1

    .line 599
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->tv_duration:I

    return v0
.end method

.method protected getProgressDialogCurrentDurationTextId()I
    .locals 1

    .line 590
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->tv_current:I

    return v0
.end method

.method protected getProgressDialogImageId()I
    .locals 1

    .line 608
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->duration_image_tip:I

    return v0
.end method

.method protected getProgressDialogLayoutId()I
    .locals 1

    .line 572
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_progress_dialog:I

    return v0
.end method

.method protected getProgressDialogProgressId()I
    .locals 1

    .line 581
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->duration_progressbar:I

    return v0
.end method

.method protected getVolumeLayoutId()I
    .locals 1

    .line 617
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_volume_dialog:I

    return v0
.end method

.method protected getVolumeProgressId()I
    .locals 1

    .line 626
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->volume_progressbar:I

    return v0
.end method

.method protected hideAllWidget()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 429
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 430
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 431
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 103
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected onClickUiToggle()V
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    return-void

    .line 383
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 384
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 385
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPrepareingClear()V

    goto/16 :goto_0

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPreparingShow()V

    goto/16 :goto_0

    .line 391
    :cond_2
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 392
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 393
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingClear()V

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    goto :goto_0

    .line 399
    :cond_4
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 400
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 401
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 402
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseClear()V

    goto :goto_0

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseShow()V

    goto :goto_0

    .line 407
    :cond_6
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 408
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 409
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 410
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToCompleteClear()V

    goto :goto_0

    .line 412
    :cond_7
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToCompleteShow()V

    goto :goto_0

    .line 415
    :cond_8
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 416
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 417
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 418
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingClear()V

    goto :goto_0

    .line 420
    :cond_9
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingShow()V

    :cond_a
    :goto_0
    return-void
.end method

.method public saveFrame(Ljava/io/File;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 853
    invoke-virtual {p0, p1, v0, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V

    :cond_0
    return-void
.end method

.method public setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 799
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 800
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 787
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 788
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 789
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 791
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogProgressColor(II)V
    .locals 0

    .line 824
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    .line 825
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    return-void
.end method

.method public setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected showBrightnessDialog(F)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBrightnessLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBrightnessTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBrightnessTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialogTv:Landroid/widget/TextView;

    .line 302
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/shuyu/gsyvideoplayer/R$style;->video_style_dialog_progress:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    .line 303
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 305
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 306
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 307
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 308
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x35

    .line 309
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 310
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 311
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x2

    .line 312
    new-array v1, v1, [I

    .line 313
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 314
    aget v2, v1, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x1

    .line 315
    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 316
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mBrightnessDialogTv:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_6

    .line 175
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogProgressId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogProgressId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBar:Landroid/widget/ProgressBar;

    .line 178
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogCurrentDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogCurrentDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogAllDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogAllDurationTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogImageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getProgressDialogImageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    .line 191
    :cond_3
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/shuyu/gsyvideoplayer/R$style;->video_style_dialog_progress:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    .line 192
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 194
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 195
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 196
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 197
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressNormalColor:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_4

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :cond_4
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressHighLightColor:I

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x30

    .line 204
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 205
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x2

    .line 207
    new-array v1, v1, [I

    .line 208
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 209
    aget v2, v1, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v2, 0x1

    .line 210
    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 211
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 214
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogSeekTime:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 217
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_8
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogTotalTime:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    if-lez p5, :cond_a

    .line 223
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogProgressBar:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_a

    mul-int/lit8 p3, p3, 0x64

    .line 224
    div-int/2addr p3, p5

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_a
    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_b

    .line 227
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    .line 228
    sget p2, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_forward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 231
    :cond_b
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    .line 232
    sget p2, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_backward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_c
    :goto_0
    return-void
.end method

.method protected showVolumeDialog(FI)V
    .locals 3

    .line 251
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    if-nez p1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getVolumeLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 253
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getVolumeProgressId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getVolumeProgressId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    .line 255
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$style;->video_style_dialog_progress:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    .line 260
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 261
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 262
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 263
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 264
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 265
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x33

    .line 266
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 267
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 268
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x2

    .line 269
    new-array v0, v0, [I

    .line 270
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 271
    aget v1, v0, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x1

    .line 272
    aget v0, v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 273
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_3
    return-void
.end method

.method protected showWifiDialog()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void

    .line 150
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$1;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$2;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public startPlayLogic()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_0

    const-string v0, "onClickStartThumb"

    .line 133
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickStartThumb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->prepareVideo()V

    .line 137
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startDismissControlViewTimer()V

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 363
    move-object p2, p1

    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 364
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->isNeedLockFull()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setNeedLockFull(Z)V

    .line 366
    invoke-direct {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->initFullUI(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    :cond_0
    return-object p1
.end method

.method public taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V

    return-void
.end method

.method public taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V
    .locals 1

    .line 844
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V

    :cond_0
    return-void
.end method

.method protected updateStartImage()V
    .locals 4

    .line 734
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENPlayView;

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENPlayView;

    const/16 v3, 0x1f4

    .line 736
    invoke-virtual {v0, v3}, Lmoe/codeest/enviews/ENPlayView;->setDuration(I)V

    .line 737
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v3, v2, :cond_0

    .line 738
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->play()V

    goto :goto_0

    .line 739
    :cond_0
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v2, v1, :cond_1

    .line 740
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->pause()V

    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->pause()V

    goto :goto_0

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 745
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 746
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v3, v2, :cond_3

    .line 747
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 748
    :cond_3
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->mCurrentState:I

    if-ne v2, v1, :cond_4

    .line 749
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_error_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 751
    :cond_4
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_0
    return-void
.end method
