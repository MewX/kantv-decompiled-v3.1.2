.class Lcom/kantv/ui/activity/VideoFullScreenActivity$5;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Landroid/widget/SeekBar;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$5;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$5;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$5;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 355
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$5;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v2

    iget-object v2, v2, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v2, v2, Lcom/kantv/video/DownloadVideoPlayer;->currentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentProgress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoFullScreenActivity"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$5;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/activity/VideoFullScreenActivity$5$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$5$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$5;)V

    invoke-virtual {v1, v0, v2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->seek(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method
