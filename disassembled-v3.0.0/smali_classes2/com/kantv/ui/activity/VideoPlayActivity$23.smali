.class Lcom/kantv/ui/activity/VideoPlayActivity$23;
.super Ljava/util/TimerTask;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1705
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1708
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4300(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    .line 1711
    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getPlay_delay_state()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getPlay_delay_state()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v1, v1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getCurrent_play_delay()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setCurrent_play_delay(I)V

    const/4 v0, 0x0

    .line 1714
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$23;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/viewmodel/CommonViewModel;->play_delay(ZLcom/kantv/video/KTVideoPlayer;Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    :cond_1
    return-void
.end method
