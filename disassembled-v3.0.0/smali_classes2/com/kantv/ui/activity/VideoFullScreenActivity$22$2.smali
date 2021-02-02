.class Lcom/kantv/ui/activity/VideoFullScreenActivity$22$2;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$22;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$22;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$22;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1118
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$22;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    const-string v1, "\u6295\u653e\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/kantv/video/DownloadVideoPlayer;->setTpStateText(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$22;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    const-string v1, "\u64ad\u653e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
