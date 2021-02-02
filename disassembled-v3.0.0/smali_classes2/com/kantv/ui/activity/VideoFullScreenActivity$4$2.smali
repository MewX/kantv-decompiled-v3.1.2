.class Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->receive(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$4;

.field final synthetic val$finalCurettime:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$4;I)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$4;

    iput p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;->val$finalCurettime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 307
    iget v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;->val$finalCurettime:I

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$4;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->stateTv:Landroid/widget/TextView;

    const-string v1, "\u64ad\u653e\u7ed3\u675f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$4;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->stateTv:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u6295\u5c4f\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
