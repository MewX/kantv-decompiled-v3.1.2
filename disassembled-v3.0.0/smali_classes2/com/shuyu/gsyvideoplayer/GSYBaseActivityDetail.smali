.class public abstract Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GSYBaseActivityDetail.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;",
        ">",
        "Landroid/support/v7/app/AppCompatActivity;",
        "Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;"
    }
.end annotation


# instance fields
.field protected isPause:Z

.field protected isPlay:Z

.field protected orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clickForFullScreen()V
.end method

.method public abstract getDetailOrientationRotateAuto()Z
.end method

.method public abstract getGSYVideoOptionBuilder()Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
.end method

.method public abstract getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public hideActionBarWhenFull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideStatusBarWhenFull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initVideo()V
    .locals 2

    .line 36
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 38
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail$1;-><init>(Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initVideoBuilderMode()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->initVideo()V

    .line 55
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoOptionBuilder()Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method public isAutoFullWithSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickBlankFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickResumeFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartIcon(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartThumb(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStopFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->isPause:Z

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    move-result v5

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    move-result v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 99
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->release()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onEnterSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoPause()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->isPause:Z

    return-void
.end method

.method public varargs onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getDetailOrientationRotateAuto()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->isAutoFullWithSize()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 128
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    return-void

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "initVideo() or initVideoBuilderMode() first"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method

.method public varargs onQuitSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoResume()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->isPause:Z

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekLight(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekPosition(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekVolume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public showFull()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->getIsLand()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    move-result v1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method
