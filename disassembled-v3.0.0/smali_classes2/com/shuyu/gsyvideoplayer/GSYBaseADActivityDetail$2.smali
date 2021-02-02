.class Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;
.super Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;
.source "GSYBaseADActivityDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->initVideoBuilderMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->release()V

    .line 67
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->onVideoReset()V

    .line 68
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startAfterPrepared()V

    .line 71
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->removeFullWindowViewOnly()V

    .line 73
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->showFull()V

    .line 75
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getSaveBeforeFullSystemUiVisibility()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSaveBeforeFullSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onBackFullscreen()V

    :cond_1
    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/GSYBaseADActivityDetail;->getDetailOrientationRotateAuto()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    return-void
.end method
