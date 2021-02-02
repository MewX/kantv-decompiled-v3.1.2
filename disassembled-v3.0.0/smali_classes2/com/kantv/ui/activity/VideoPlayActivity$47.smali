.class Lcom/kantv/ui/activity/VideoPlayActivity$47;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->restartPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 2706
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 3

    const-string p1, "VideoPlayActivity"

    const-string v0, "play fail"

    .line 2721
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8000(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2723
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    .line 2724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u6295\u653e\u5931\u8d25"

    const-string v1, "\u64ad\u653e"

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/kantv/video/KTVideoPlayer;->setTpStateText(Ljava/lang/String;)V

    .line 2727
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2730
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2731
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->startIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080291

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 2

    const-string p1, "VideoPlayActivity"

    const-string v0, "play success"

    .line 2709
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    const-string v0, "\u6682\u505c"

    if-eqz p1, :cond_0

    .line 2712
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2714
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2715
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->startIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$47;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080292

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
