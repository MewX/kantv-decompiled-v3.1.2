.class Lcom/kantv/ui/activity/VideoFullScreenActivity$18;
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

    .line 1042
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 1056
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1057
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    .line 1058
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    const-string v0, "\u6295\u653e\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/kantv/video/DownloadVideoPlayer;->setTpStateText(Ljava/lang/String;)V

    .line 1059
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 1045
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    .line 1046
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->stateTv:Landroid/widget/TextView;

    const-string v0, "\u6295\u653e\u6210\u529f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    new-instance p1, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {p1}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string v0, "main"

    .line 1049
    iput-object v0, p1, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1050
    iput v0, p1, Lcom/kantv/ui/bean/TestEvent;->tag:I

    .line 1051
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
