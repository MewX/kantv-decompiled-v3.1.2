.class final Lcom/avos/avoscloud/NotifyUtil$1;
.super Landroid/os/Handler;
.source "NotifyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/NotifyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 32
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x400

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/NotifyUtil$1;->removeMessages(I)V

    .line 35
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/NotifyUtil;->access$000()Ljava/util/Set;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-static {v0}, Lcom/avos/avoscloud/signature/Base64Decoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.avos.avoscloud.PushService"

    .line 40
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.avos.avoscloud.notify.action"

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 47
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/NotifyUtil;->access$100()V

    :cond_3
    return-void
.end method
