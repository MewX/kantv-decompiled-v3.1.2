.class public abstract Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVIMBaseBroadcastReceiver.java"


# instance fields
.field callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    return-void
.end method


# virtual methods
.method public abstract execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "callbackException"

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 29
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->execute(Landroid/content/Intent;Ljava/lang/Throwable;)V

    .line 30
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz p2, :cond_1

    .line 34
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_1
    return-void
.end method
