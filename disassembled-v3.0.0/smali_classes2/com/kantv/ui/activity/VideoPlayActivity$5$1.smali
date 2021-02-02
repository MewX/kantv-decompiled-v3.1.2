.class Lcom/kantv/ui/activity/VideoPlayActivity$5$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$5;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$5;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->onVideoPause()V

    .line 470
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->hideAllUI()V

    :cond_0
    return-void
.end method
