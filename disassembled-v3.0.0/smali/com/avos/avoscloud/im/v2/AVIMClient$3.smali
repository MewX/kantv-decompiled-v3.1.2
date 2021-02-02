.class Lcom/avos/avoscloud/im/v2/AVIMClient$3;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZZILcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field final synthetic val$conversationAttributes:Ljava/util/HashMap;

.field final synthetic val$conversationMembers:Ljava/util/List;

.field final synthetic val$isTemp:Z

.field final synthetic val$isTransient:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;ZZLjava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iput-boolean p3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTransient:Z

    iput-boolean p4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTemp:Z

    iput-object p5, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationMembers:Ljava/util/List;

    iput-object p6, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationAttributes:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 6

    .line 468
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackconversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "callbackCreatedAt"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "callbackTemporaryTTL"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p2, :cond_0

    .line 473
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-boolean v4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTransient:Z

    iget-boolean v5, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTemp:Z

    invoke-virtual {v3, v0, v4, v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;ZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v3

    .line 474
    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationMembers:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMembers(Ljava/util/List;)V

    .line 475
    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationAttributes:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setAttributesForInit(Ljava/util/Map;)V

    .line 476
    iget-boolean v4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTransient:Z

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setTransientForInit(Z)V

    .line 477
    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setConversationId(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreatedAt(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setUpdatedAt(Ljava/lang/String;)V

    .line 481
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTemp:Z

    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setTemporary(Z)V

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    int-to-long v4, p1

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setTemporaryExpiredat(J)V

    .line 483
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMConversation;

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 485
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
