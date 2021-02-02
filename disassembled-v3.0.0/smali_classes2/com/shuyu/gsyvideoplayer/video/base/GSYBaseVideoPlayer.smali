.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;
.source "GSYBaseVideoPlayer.java"


# instance fields
.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

.field protected mCheckoutTask:Ljava/lang/Runnable;

.field protected mListItemRect:[I

.field protected mListItemSize:[I

.field protected mLockLand:Z

.field protected mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mShowFullAnimation:Z

.field protected mSmallClose:Landroid/view/View;

.field protected mStatusBar:Z

.field protected mSystemUiVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 53
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 59
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 62
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 65
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 68
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 446
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 53
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 59
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 62
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 65
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 68
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 446
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 53
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 59
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 62
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 65
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 68
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 446
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 53
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 59
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 62
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 65
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 68
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 446
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private pauseFullBackCoverLogic(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 270
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 276
    :cond_0
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz p1, :cond_1

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private pauseFullCoverLogic()V
    .locals 2

    .line 254
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private removeVideo(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private saveLocationStatus(Landroid/content/Context;ZZ)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLocationOnScreen([I)V

    .line 191
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 192
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 194
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget v2, p2, v1

    sub-int/2addr v2, v0

    aput v2, p2, v1

    :cond_0
    if-eqz p3, :cond_1

    .line 197
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget p3, p2, v1

    sub-int/2addr p3, p1

    aput p3, p2, v1

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    const/4 p2, 0x0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getWidth()I

    move-result p3

    aput p3, p1, p2

    .line 200
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getHeight()I

    move-result p2

    aput p2, p1, v1

    return-void
.end method


# virtual methods
.method protected backToNormal()V
    .locals 8

    .line 412
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 417
    move-object v2, v1

    check-cast v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 419
    invoke-direct {p0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->pauseFullBackCoverLogic(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 420
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-eqz v3, :cond_0

    .line 421
    invoke-static {v0}, Lcom/transitionseverywhere/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 423
    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-virtual {v3, v6, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 425
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    aget v6, v4, v5

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 426
    aget v4, v4, v7

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 428
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 429
    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    new-instance v3, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v3, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 442
    invoke-virtual {p0, v1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method protected checkAutoFullSizeWhenFull()V
    .locals 3

    .line 502
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSYVideoBase onPrepared isVerticalFullByVideoSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method

.method protected checkoutState()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 465
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected clearFullscreenLayout()V
    .locals 4

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 376
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v1

    .line 378
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v2, v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 379
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    const/4 v2, 0x0

    .line 381
    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 385
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 390
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 393
    check-cast v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 394
    iput-boolean v0, v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 397
    :cond_3
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 7

    .line 210
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHadPlay:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHadPlay:Z

    .line 211
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mPlayTag:Ljava/lang/String;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mPlayTag:Ljava/lang/String;

    .line 212
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mPlayPosition:I

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mPlayPosition:I

    .line 213
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    .line 214
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 215
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mNeedShowWifiTip:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mNeedShowWifiTip:Z

    .line 216
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShrinkImageRes:I

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShrinkImageRes:I

    .line 217
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mEnlargeImageRes:I

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mEnlargeImageRes:I

    .line 218
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotate:I

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotate:I

    .line 219
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    .line 220
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mDismissControlTime:I

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mDismissControlTime:I

    .line 221
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSeekRatio:F

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSeekRatio:F

    .line 222
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mNetChanged:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mNetChanged:Z

    .line 223
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mNetSate:Ljava/lang/String;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mNetSate:Ljava/lang/String;

    .line 224
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 225
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackUpPlayingBufferState:I

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackUpPlayingBufferState:I

    .line 226
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    .line 227
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mMode:I

    iput v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mMode:I

    .line 228
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    .line 229
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    .line 230
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHadPrepared:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHadPrepared:Z

    .line 231
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStartAfterPrepared:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStartAfterPrepared:Z

    .line 232
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mPauseBeforePrepared:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mPauseBeforePrepared:Z

    .line 233
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mReleaseWhenLossAudio:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mReleaseWhenLossAudio:Z

    .line 234
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    .line 235
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 236
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 237
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    iput-boolean v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 238
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSetUpLazy:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v2, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCache:Z

    iget-object v4, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCachePath:Ljava/io/File;

    iget-object v5, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 240
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mUrl:Ljava/lang/String;

    iput-object v0, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_0
    iget-object v2, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCache:Z

    iget-object v4, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCachePath:Ljava/io/File;

    iget-object v5, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 244
    :goto_0
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isLooping()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLooping(Z)V

    .line 245
    iget-boolean v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsTouchWigetFull:Z

    invoke-virtual {p2, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIsTouchWigetFull(Z)V

    .line 246
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSpeed()F

    move-result v0

    iget-boolean v1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSoundTouch:Z

    invoke-virtual {p2, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSpeed(FZ)V

    .line 247
    iget p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    invoke-virtual {p2, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setStateAndUi(I)V

    return-void
.end method

.method public getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 896
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method protected abstract getFullId()I
.end method

.method public getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 3

    const/4 v0, 0x0

    .line 850
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 851
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 856
    check-cast v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 862
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public getSaveBeforeFullSystemUiVisibility()I
    .locals 1

    .line 930
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    return v0
.end method

.method protected abstract getSmallId()I
.end method

.method public getSmallWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 3

    const/4 v0, 0x0

    .line 875
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 876
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 878
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 881
    check-cast v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 887
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public hideSmallVideo()V
    .locals 5

    .line 769
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 770
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 771
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 772
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getLastState()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {p0, v1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 777
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 778
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setStateAndUi(I)V

    .line 779
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSaveChangeViewTIme:J

    .line 781
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    const-string v0, "onQuitSmallWidget"

    .line 782
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onQuitSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->init(Landroid/content/Context;)V

    .line 98
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->small_close:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    return-void
.end method

.method public isAutoFullWithSize()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    return v0
.end method

.method public isFullHideActionBar()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    return v0
.end method

.method public isFullHideStatusBar()Z
    .locals 1

    .line 926
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    return v0
.end method

.method public isLockLand()Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    return v0
.end method

.method protected isLockLandByAutoFullSize()Z
    .locals 2

    .line 491
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 492
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRotateViewAuto()Z
    .locals 1

    .line 801
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 804
    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    return v0
.end method

.method public isShowFullAnimation()Z
    .locals 1

    .line 788
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    return v0
.end method

.method public isVerticalFullByVideoSize()Z
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isVerticalVideo()Z
    .locals 6

    .line 473
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentVideoHeight()I

    move-result v0

    .line 474
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentVideoWidth()I

    move-result v1

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSYVideoBase isVerticalVideo  videoHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSYVideoBase isVerticalVideo  mRotate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 478
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotate:I

    const/16 v4, 0x5a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotate:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 144
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackFullscreen()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->clearFullscreenLayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 534
    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V
    .locals 1

    .line 548
    invoke-super {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_0

    .line 550
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-nez p2, :cond_2

    .line 552
    invoke-virtual {p0, p1, p4, p5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 557
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backFromFull(Landroid/content/Context;)Z

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    .line 560
    invoke-virtual {p3, p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(II)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onInfo(II)V

    .line 163
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getRotateInfoFlag()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 155
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onPrepared()V

    .line 157
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    return-void
.end method

.method protected resolveFullVideoShow(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
    .locals 8

    .line 292
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    .line 294
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 295
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 296
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 297
    invoke-virtual {p2, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p2, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 299
    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v2, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 300
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 301
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    invoke-virtual {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setRotateWithSystem(Z)V

    .line 302
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iput-object p1, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 304
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v4

    .line 305
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isLockLandByAutoFullSize()Z

    move-result v5

    .line 307
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isShowFullAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$2;

    move-object v2, p1

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;ZZLcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, p1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    .line 322
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 324
    :cond_1
    invoke-virtual {p2, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVisibility(I)V

    .line 325
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 329
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_2

    const-string p1, "onEnterFullscreen"

    .line 330
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v3, v2, v1

    aput-object p2, v2, v0

    invoke-interface {p1, p3, v2}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_2
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 335
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V

    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 345
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getLastState()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    if-eqz p3, :cond_1

    .line 349
    invoke-virtual {p0, p3, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 352
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 353
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setStateAndUi(I)V

    .line 354
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSaveChangeViewTIme:J

    .line 356
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string p1, "onQuitFullscreen"

    .line 357
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v1, v0, p2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-interface {p1, p3, v0}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_2
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 361
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHideKey:Z

    if-eqz p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    invoke-static {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->showNavKey(Landroid/content/Context;I)V

    .line 364
    :cond_3
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    iget-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    invoke-static {p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->showSupportActionBar(Landroid/content/Context;ZZ)V

    .line 365
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAutoFullWithSize(Z)V
    .locals 0

    .line 947
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    return-void
.end method

.method public setBackFromFullScreenListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFullHideActionBar(Z)V
    .locals 0

    .line 914
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    return-void
.end method

.method public setFullHideStatusBar(Z)V
    .locals 0

    .line 918
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    return-void
.end method

.method public setLockLand(Z)V
    .locals 0

    .line 825
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    return-void
.end method

.method public setRotateViewAuto(Z)V
    .locals 1

    .line 811
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 812
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 0

    .line 839
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    return-void
.end method

.method public setSaveBeforeFullSystemUiVisibility(I)V
    .locals 0

    .line 934
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    return-void
.end method

.method public setShowFullAnimation(Z)V
    .locals 0

    .line 797
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    return-void
.end method

.method protected setSmallVideoTextureView()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 9

    .line 707
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 709
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 711
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 716
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 717
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 718
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setId(I)V

    .line 720
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 721
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 723
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p1, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 724
    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    iget v8, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    .line 725
    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p1

    if-eqz p2, :cond_1

    .line 728
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p1

    sub-int/2addr v8, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 732
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v8, p1

    .line 735
    :cond_2
    invoke-virtual {v6, v7, v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 736
    invoke-virtual {v4, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    invoke-virtual {p0, p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 742
    invoke-virtual {v1, v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIsTouchWiget(Z)V

    .line 744
    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 746
    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onClickUiToggle()V

    .line 747
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    invoke-virtual {v1, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V

    .line 748
    new-instance p1, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;

    invoke-direct {p1, v1, v7, v8}, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;II)V

    invoke-virtual {v1, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 750
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 751
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 752
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_3

    const-string p1, "onEnterSmallWidget"

    .line 753
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 754
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v0, p3, v5

    aput-object v1, p3, v2

    invoke-interface {p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onEnterSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 759
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 8

    .line 577
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    .line 579
    invoke-static {p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    .line 581
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHideKey:Z

    if-eqz v0, :cond_0

    .line 582
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    .line 585
    :cond_0
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 587
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 v0, 0x2

    .line 589
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 591
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    .line 593
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    .line 595
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 598
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->pauseFullCoverLogic()V

    .line 600
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 605
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->saveLocationStatus(Landroid/content/Context;ZZ)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 610
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, p3

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 620
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 621
    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_1

    .line 623
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, p3

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 624
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, p3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 627
    :goto_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setId(I)V

    .line 628
    invoke-virtual {v0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 629
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V

    .line 631
    invoke-virtual {p0, p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 633
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 634
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 635
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$6;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$6;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    :cond_3
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 648
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$7;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$7;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 662
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 663
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 665
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-eqz v2, :cond_5

    .line 666
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 667
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget v3, v3, p3

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget p2, v5, p2

    invoke-virtual {v2, v3, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 668
    invoke-virtual {v7, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    invoke-virtual {v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    new-instance p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$8;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$8;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, p2, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 678
    :cond_5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getHeight()I

    move-result v2

    invoke-direct {p2, p3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 679
    invoke-virtual {v7, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    invoke-virtual {v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x4

    .line 681
    invoke-virtual {v0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVisibility(I)V

    .line 682
    invoke-virtual {v7, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 683
    invoke-virtual {p0, p1, v0, v7}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveFullVideoShow(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    .line 687
    :goto_2
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 689
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 690
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 692
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 695
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
