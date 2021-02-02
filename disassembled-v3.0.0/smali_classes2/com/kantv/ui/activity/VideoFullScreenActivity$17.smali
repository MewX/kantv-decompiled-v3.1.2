.class Lcom/kantv/ui/activity/VideoFullScreenActivity$17;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->play()V
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

    .line 1008
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 3

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "play fail"

    .line 1032
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1034
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    const-string v0, "\u6295\u653e\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/kantv/video/DownloadVideoPlayer;->setTpStateText(Ljava/lang/String;)V

    .line 1037
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    const-string v0, "\u64ad\u653e"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 3

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "play success"

    .line 1012
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    new-instance v0, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {v0}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string v1, "main"

    .line 1014
    iput-object v1, v0, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const/4 v1, 0x4

    .line 1015
    iput v1, v0, Lcom/kantv/ui/bean/TestEvent;->tag:I

    .line 1016
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1017
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1021
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->registerAVTransport(Landroid/content/Context;)V

    .line 1022
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->registerRenderingControl(Landroid/content/Context;)V

    .line 1023
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    const-string v0, "\u6295\u653e\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/kantv/video/DownloadVideoPlayer;->setTpStateText(Ljava/lang/String;)V

    .line 1026
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
