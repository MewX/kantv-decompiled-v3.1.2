.class Lcom/avos/avoscloud/im/v2/AVIMConversation$18;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field final synthetic val$messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

.field final synthetic val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

.field final synthetic val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;)V
    .locals 0

    .line 1607
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    iput-object p5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object p6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 10

    .line 1611
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    :cond_0
    if-nez p2, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    if-eqz v0, :cond_1

    .line 1616
    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;->onComplete()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1617
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    if-eqz v0, :cond_2

    .line 1618
    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;->onFailure()V

    .line 1621
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    .line 1625
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-string v4, "callbackMessageTimeStamp"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "callbackMessageId"

    .line 1626
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1627
    iget-object v6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v6, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    sget-object v6, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v0, v4, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 1632
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v0, :cond_5

    .line 1633
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 1634
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    goto :goto_1

    :cond_5
    const-string v0, "skip inserting into local storage."

    .line 1636
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 1638
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    .line 1639
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateConversationLastMessageAt(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z

    goto :goto_2

    .line 1641
    :cond_6
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 1645
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    const-string v3, "callbackDeliveredAt"

    const-string v4, "callbackReadAt"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ne v0, v2, :cond_a

    const-string v0, "callbackHistoryMessages"

    .line 1647
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p2, :cond_8

    .line 1651
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMException;

    const/16 v1, 0x7c

    const/16 v2, 0x64

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v7, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_3

    .line 1653
    :cond_8
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastReadAt(JZ)V

    .line 1654
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastDeliveredAt(JZ)V

    .line 1655
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateConversationTimes(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z

    if-nez v0, :cond_9

    .line 1657
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1659
    :cond_9
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {p1, v0, v7}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_3
    return-void

    .line 1664
    :cond_a
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 1665
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "callbackUpdatedAt"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1666
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1667
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object v0, v2, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    .line 1672
    :cond_b
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_c

    const-string v0, "callbackMemberCount"

    .line 1673
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1674
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void

    .line 1678
    :cond_c
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_d

    .line 1679
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastReadAt(JZ)V

    .line 1680
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastDeliveredAt(JZ)V

    .line 1681
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateConversationTimes(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z

    .line 1682
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void

    .line 1687
    :cond_d
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 1688
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 1689
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 1690
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNBLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_e

    goto :goto_6

    .line 1701
    :cond_e
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    const-string v2, "callbackData"

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 1702
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_f

    goto :goto_5

    .line 1708
    :cond_f
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_11

    if-eqz p2, :cond_10

    .line 1711
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_4

    .line 1713
    :cond_10
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processQueryResult(Ljava/io/Serializable;)Ljava/lang/Exception;

    move-result-object p1

    .line 1714
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_4
    return-void

    .line 1719
    :cond_11
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void

    .line 1703
    :cond_12
    :goto_5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1704
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz p1, :cond_13

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :cond_13
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void

    :cond_14
    :goto_6
    const-string v0, "callbackConvMemberMutedSUCC"

    .line 1691
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "callbackConvMemberMutedFAIL"

    .line 1692
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1693
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1694
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
