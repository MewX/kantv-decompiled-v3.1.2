.class Lcom/kantv/ui/activity/VideoFullScreenActivity$3;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->pause()V
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

    .line 227
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$3;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$3;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    .line 242
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$3;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$3$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$3$2;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$3;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$3$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$3$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
