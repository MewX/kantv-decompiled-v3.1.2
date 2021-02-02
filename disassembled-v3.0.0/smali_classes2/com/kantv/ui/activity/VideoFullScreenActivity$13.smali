.class Lcom/kantv/ui/activity/VideoFullScreenActivity$13;
.super Ljava/util/TimerTask;
.source "VideoFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->initView2()V
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

    .line 690
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$13$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$13$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$13;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 705
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentState()I

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1708(Lcom/kantv/ui/activity/VideoFullScreenActivity;)I

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoFullScreenActivity"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 710
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->finish()V

    :cond_0
    return-void
.end method
