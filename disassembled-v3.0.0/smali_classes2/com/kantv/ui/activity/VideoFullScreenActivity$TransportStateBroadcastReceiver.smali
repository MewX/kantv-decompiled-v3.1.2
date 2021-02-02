.class Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method private constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Lcom/kantv/ui/activity/VideoFullScreenActivity$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive playback intent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoFullScreenActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.zane.androidupnpdemo.action.playing"

    .line 468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 469
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "com.zane.androidupnpdemo.action.paused_playback"

    .line 471
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 472
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string p2, "com.zane.androidupnpdemo.action.stopped"

    .line 474
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 475
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string p2, "com.zane.androidupnpdemo.action.transitioning"

    .line 477
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 478
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
