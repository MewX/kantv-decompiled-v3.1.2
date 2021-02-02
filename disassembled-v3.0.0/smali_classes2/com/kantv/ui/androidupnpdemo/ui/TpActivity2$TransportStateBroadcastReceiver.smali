.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TpActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;


# direct methods
.method private constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;)V
    .locals 0

    .line 771
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 775
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive playback intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.zane.androidupnpdemo.action.playing"

    .line 777
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 778
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "com.zane.androidupnpdemo.action.paused_playback"

    .line 780
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 781
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string p2, "com.zane.androidupnpdemo.action.stopped"

    .line 783
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 784
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string p2, "com.zane.androidupnpdemo.action.transitioning"

    .line 786
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 787
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
