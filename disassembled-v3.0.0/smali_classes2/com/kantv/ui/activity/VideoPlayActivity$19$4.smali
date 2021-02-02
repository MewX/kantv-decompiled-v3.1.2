.class Lcom/kantv/ui/activity/VideoPlayActivity$19$4;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$19;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$19;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1406
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1407
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1408
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1409
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3002(Lcom/kantv/ui/activity/VideoPlayActivity;Z)Z

    return p2
.end method
