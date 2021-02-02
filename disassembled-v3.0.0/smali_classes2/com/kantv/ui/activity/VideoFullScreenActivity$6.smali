.class Lcom/kantv/ui/activity/VideoFullScreenActivity$6;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 431
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$6;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$6;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$500(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$6;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->release()V

    :cond_0
    return-void
.end method
