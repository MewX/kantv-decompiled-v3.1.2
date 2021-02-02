.class public Lcom/avos/avoscloud/BroadcastUtil;
.super Ljava/lang/Object;
.source "BroadcastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOperationValid(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 52
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNKNOWN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 53
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method private static sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 2

    .line 30
    invoke-static {p5}, Lcom/avos/avoscloud/BroadcastUtil;->isOperationValid(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p5}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object p5

    .line 33
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "callbackclient"

    .line 35
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "callbackconversation"

    .line 37
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const-string p0, "callbackException"

    .line 41
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    .line 45
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 47
    :cond_2
    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public static sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method public static sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method
