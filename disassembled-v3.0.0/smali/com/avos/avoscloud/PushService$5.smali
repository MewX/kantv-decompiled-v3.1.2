.class final Lcom/avos/avoscloud/PushService$5;
.super Lcom/avos/avoscloud/SaveCallback;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalChannel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$5;->val$finalChannel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 3

    if-nez p1, :cond_0

    .line 379
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/PushService$5;->val$finalChannel:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 380
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "channels"

    .line 379
    invoke-virtual {p1, v1, v0}, Lcom/avos/avoscloud/AVInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 381
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$400()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
