.class Lcom/kantv/ui/activity/VideoPlayActivity$45;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->pause()V
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

    .line 2657
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 2

    const-string p1, "VideoPlayActivity"

    const-string v0, "pause fail"

    .line 2672
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    const-string v0, "\u6682\u505c"

    if-eqz p1, :cond_0

    .line 2675
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2677
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2678
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->startIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080292

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 2

    .line 2660
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    .line 2661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wwpause success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u64ad\u653e"

    if-eqz p1, :cond_0

    .line 2663
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2665
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2666
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->startIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$45;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
