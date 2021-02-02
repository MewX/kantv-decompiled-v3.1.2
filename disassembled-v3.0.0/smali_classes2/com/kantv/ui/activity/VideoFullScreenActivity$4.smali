.class Lcom/kantv/ui/activity/VideoFullScreenActivity$4;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->getPositionInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPositionInfo fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/kantv/ui/androidupnpdemo/entity/IResponse;->getResponse()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFullScreenActivity"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public receive(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-interface {p1}, Lcom/kantv/ui/androidupnpdemo/entity/IResponse;->getResponse()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$402(Lcom/kantv/ui/activity/VideoFullScreenActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$400(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RelTime:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 261
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$400(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 262
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 263
    aget-object v0, p1, v1

    const-string v2, "Duration:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 266
    aget-object v2, p1, v0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 269
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    if-nez v2, :cond_0

    .line 271
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    :goto_1
    mul-int/lit8 v4, v4, 0x3c

    :goto_2
    add-int/2addr v3, v4

    goto :goto_3

    :cond_0
    if-ne v2, v1, :cond_1

    .line 275
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 279
    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    mul-int/lit16 p1, v3, 0x3e8

    .line 284
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 287
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    .line 290
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 291
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->currentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    if-ne v3, p1, :cond_4

    .line 293
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$4;)V

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 303
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$500(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 304
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;

    invoke-direct {v0, p0, v3}, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$4;I)V

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPositionInfo success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/kantv/ui/androidupnpdemo/entity/IResponse;->getResponse()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFullScreenActivity"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
