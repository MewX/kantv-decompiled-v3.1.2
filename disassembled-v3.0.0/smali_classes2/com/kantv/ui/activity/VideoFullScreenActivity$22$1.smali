.class Lcom/kantv/ui/activity/VideoFullScreenActivity$22$1;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
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

    .line 1103
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$22;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
