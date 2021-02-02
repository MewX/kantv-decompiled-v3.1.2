.class public Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
.super Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
.source "GSYVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSYVideoHelperBuilder"
.end annotation


# instance fields
.field protected mHideActionBar:Z

.field protected mHideStatusBar:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mBottomProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBottomShowProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mBottomShowProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBottomShowProgressThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mBottomShowProgressThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCachePath()Ljava/io/File;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mCachePath:Ljava/io/File;

    return-object v0
.end method

.method public getDialogProgressBarDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDialogProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogProgressHighLightColor()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDialogProgressHighLightColor:I

    return v0
.end method

.method public getDialogProgressNormalColor()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDialogProgressNormalColor:I

    return v0
.end method

.method public getDismissControlTime()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mDismissControlTime:I

    return v0
.end method

.method public getEffectFilter()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-object v0
.end method

.method public getEnlargeImageRes()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mEnlargeImageRes:I

    return v0
.end method

.method public getGSYVideoProgressListener()Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoProgressListener;

    return-object v0
.end method

.method public getLockClickListener()Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

    return-object v0
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mMapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mPlayPosition:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mPlayTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekOnStart()J
    .locals 2

    .line 607
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSeekOnStart:J

    return-wide v0
.end method

.method public getSeekRatio()F
    .locals 1

    .line 611
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSeekRatio:F

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mShrinkImageRes:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 615
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSpeed:F

    return v0
.end method

.method public getThumbImageView()Landroid/view/View;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mThumbImageView:Landroid/view/View;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAllCallBack()Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mVolumeProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isCacheWithPlay()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mCacheWithPlay:Z

    return v0
.end method

.method public isHideActionBar()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideActionBar:Z

    return v0
.end method

.method public isHideKey()Z
    .locals 1

    .line 619
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideKey:Z

    return v0
.end method

.method public isHideStatusBar()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideStatusBar:Z

    return v0
.end method

.method public isIsTouchWiget()Z
    .locals 1

    .line 643
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mIsTouchWiget:Z

    return v0
.end method

.method public isIsTouchWigetFull()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mIsTouchWigetFull:Z

    return v0
.end method

.method public isLockLand()Z
    .locals 1

    .line 635
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mLockLand:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mLooping:Z

    return v0
.end method

.method public isNeedLockFull()Z
    .locals 1

    .line 663
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mNeedLockFull:Z

    return v0
.end method

.method public isNeedShowWifiTip()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mNeedShowWifiTip:Z

    return v0
.end method

.method public isRotateViewAuto()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mRotateViewAuto:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mRotateWithSystem:Z

    return v0
.end method

.method public isSetUpLazy()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSetUpLazy:Z

    return v0
.end method

.method public isShowFullAnimation()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mShowFullAnimation:Z

    return v0
.end method

.method public isShowPauseCover()Z
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mShowPauseCover:Z

    return v0
.end method

.method public isSounchTouch()Z
    .locals 1

    .line 671
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mSounchTouch:Z

    return v0
.end method

.method public isThumbPlay()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mThumbPlay:Z

    return v0
.end method

.method public setHideActionBar(Z)Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
    .locals 0

    .line 569
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideActionBar:Z

    return-object p0
.end method

.method public setHideStatusBar(Z)Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
    .locals 0

    .line 578
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->mHideStatusBar:Z

    return-object p0
.end method
