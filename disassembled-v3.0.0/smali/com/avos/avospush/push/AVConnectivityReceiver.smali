.class public Lcom/avos/avospush/push/AVConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVConnectivityReceiver.java"


# instance fields
.field private final listener:Lcom/avos/avospush/push/AVConnectivityListener;


# direct methods
.method public constructor <init>(Lcom/avos/avospush/push/AVConnectivityListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 22
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getConnectivityStatus(Landroid/content/Context;)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {p2, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onMobile(Landroid/content/Context;)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {p2, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onWifi(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object p2, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {p2, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onNotConnected(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
