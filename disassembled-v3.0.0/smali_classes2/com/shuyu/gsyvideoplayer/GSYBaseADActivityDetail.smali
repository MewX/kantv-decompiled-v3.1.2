.class public abstract Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;
.super Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;
.source "GSYBaseADActivityDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;",
        "R:",
        "Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;",
        ">",
        "Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;-><init>()V

    return-void
.end method


# virtual methods
.method public clickForFullScreen()V
    .locals 0

    return-void
.end method

.method public abstract getGSYADVideoOptionBuilder()Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
.end method

.method public abstract getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public initVideo()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->initVideo()V

    .line 32
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 34
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$1;-><init>(Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initVideoBuilderMode()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->initVideoBuilderMode()V

    .line 53
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoOptionBuilder()Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;-><init>(Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    return-void
.end method

.method protected isADStarted()Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentState()I

    move-result v0

    if-ltz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isNeedAdOnStart()Z
.end method

.method public onBackPressed()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 115
    :cond_1
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 141
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->isPlay:Z

    .line 142
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->isPause:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->isADStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 144
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->isPlay:Z

    .line 145
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v2

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->hideActionBarWhenFull()Z

    move-result v6

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->hideStatusBarWhenFull()Z

    move-result v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->isPlay:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onDestroy()V

    .line 133
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->releaseAllVideos()V

    .line 134
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    :cond_0
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 169
    aget-object p1, p2, p1

    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 170
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onPause()V

    .line 121
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->onPause()V

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->isNeedAdOnStart()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->startAdPlay()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onResume()V

    .line 127
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->onResume()V

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showADFull()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->getIsLand()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->hideActionBarWhenFull()Z

    move-result v1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->hideStatusBarWhenFull()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method

.method public showFull()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->getIsLand()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->hideActionBarWhenFull()Z

    move-result v1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->hideStatusBarWhenFull()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method

.method public startAdPlay()V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->startPlayLogic()V

    .line 190
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->showADFull()V

    .line 192
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSaveBeforeFullSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->setSaveBeforeFullSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
