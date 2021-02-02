.class Lcom/avos/avoscloud/AVConversationHolder;
.super Ljava/lang/Object;
.source "AVConversationHolder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
    }
.end annotation


# static fields
.field private static final BLOCK_MEMBER:Ljava/lang/String; = "conversation-block-clients"

.field private static final GROUP_INVITE:Ljava/lang/String; = "invite"

.field private static final GROUP_KICK:Ljava/lang/String; = "kick"

.field private static final UNBLOCK_MEMBER:Ljava/lang/String; = "conversation-unblock-clients"


# instance fields
.field convType:I

.field private conversationGene:Ljava/lang/String;

.field conversationId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSession;I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1188
    iput-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationGene:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 59
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/avos/avoscloud/AVConversationHolder;->getConversationGeneString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationGene:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/avos/avoscloud/AVConversationHolder;->convType:I

    return-void
.end method

.method private checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection Lost"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-static {v1, v2, p2, v0, p1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private genBundleFromPartiallyResult(Ljava/util/List;Ljava/util/List;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 706
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 708
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    .line 710
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 711
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_3

    .line 713
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 714
    new-instance v2, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;

    invoke-direct {v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;-><init>()V

    .line 715
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->setCode(I)V

    .line 716
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->setMemberIds(Ljava/util/List;)V

    .line 717
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->setReason(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 721
    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "callbackConvMemberMutedSUCC"

    .line 722
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "callbackConvMemberMutedFAIL"

    .line 723
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p2
.end method

.method private getConversationGeneString()Ljava/lang/String;
    .locals 3

    .line 1191
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationGene:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1193
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "conversation.client"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const-string v2, "convesration.id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationGene:Ljava/lang/String;

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationGene:Ljava/lang/String;

    return-object v0
.end method

.method private getReceiptTime(I)V
    .locals 8

    .line 441
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 445
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 444
    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 447
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "max_read"

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method private onInfoUpdated(ILjava/lang/String;)V
    .locals 3

    .line 807
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callbackUpdatedAt"

    .line 808
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p2, v1, p1, v0, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method private onMemberChanged(Ljava/lang/String;Lcom/avos/avoscloud/Messages$ConvMemberInfo;)V
    .locals 7

    .line 819
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 821
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v6

    .line 823
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getInfoId()Ljava/lang/String;

    move-result-object v0

    .line 824
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getRole()Ljava/lang/String;

    move-result-object v1

    .line 825
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getPid()Ljava/lang/String;

    move-result-object p2

    .line 826
    new-instance v4, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 827
    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->fromString(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    move-result-object v1

    invoke-direct {v4, v0, v3, p2, v1}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;)V

    .line 828
    new-instance p2, Lcom/avos/avoscloud/AVConversationHolder$6;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$6;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v6, p2}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method private onMemberUpdated(I)V
    .locals 3

    .line 814
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method private parseConversation(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 1018
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConv()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1019
    :goto_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTransient()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTransient()Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1020
    :goto_1
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConvTTL()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvTTL()I

    move-result v1

    .line 1022
    :cond_3
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;ZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v0, v1

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setTemporaryExpiredat(J)V

    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private read(Ljava/lang/String;JI)V
    .locals 7

    .line 452
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_READ:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p4}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_READ:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 456
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 455
    invoke-static {v1, v2, v3, p4}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 458
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 459
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->getUnreadClearPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/avos/avospush/session/UnreadMessagesClearPacket;

    move-result-object p1

    .line 460
    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 463
    invoke-virtual {p0, p1, p2, p2}, Lcom/avos/avoscloud/AVConversationHolder;->onUnreadMessagesEvent(Lcom/avos/avoscloud/im/v2/AVIMMessage;IZ)V

    return-void
.end method

.method private refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1110
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isShouldFetch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;->done()V

    goto :goto_0

    .line 1113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try to query conversation info for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getFetchRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 1115
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1117
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v1

    .line 1118
    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 1119
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/AVConversationHolder$18;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p1, p2}, Lcom/avos/avoscloud/AVConversationHolder$18;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    new-instance p1, Landroid/content/IntentFilter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1128
    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v3, v4, p1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1129
    iget-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVSession;->conversationQuery(Ljava/util/Map;I)V

    :goto_0
    return-void
.end method

.method private refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1102
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->convType:I

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    .line 1103
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVConversationHolder$1;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ILjava/util/List;)V

    .line 96
    new-instance p1, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method

.method public blockMembers(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVConversationHolder$3;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ILjava/util/List;)V

    .line 193
    new-instance p1, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getMemberCount(I)V
    .locals 8

    .line 429
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 433
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 432
    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 436
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "count"

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public join(I)V
    .locals 3

    .line 233
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder$5;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$5;-><init>(Lcom/avos/avoscloud/AVConversationHolder;I)V

    .line 262
    new-instance p1, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method

.method public kickMembers(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVConversationHolder$2;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ILjava/util/List;)V

    .line 131
    new-instance p1, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method

.method public mute(I)V
    .locals 8

    .line 407
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 411
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 410
    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 413
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "mute"

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public muteMembers(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 141
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 140
    invoke-static {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 143
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 144
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "add_shutup"

    move-object v3, p1

    move v7, p2

    .line 143
    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method onConversationCreated(ILcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 4

    .line 773
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCdate()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConvTTL()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvTTL()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 778
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "callbackCreatedAt"

    .line 779
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callbackconversation"

    .line 780
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callbackTemporaryTTL"

    .line 781
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p2, v0, p1, v2, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onConversationDeliveredAtEvent(J)V
    .locals 8

    .line 1175
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v6

    .line 1179
    new-instance v7, Lcom/avos/avoscloud/AVConversationHolder$21;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$21;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;JLcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v6, v7}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onConversationReadAtEvent(J)V
    .locals 8

    .line 1161
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v6

    .line 1165
    new-instance v7, Lcom/avos/avoscloud/AVConversationHolder$20;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$20;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;JLcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v6, v7}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onHistoryMessageQuery(Ljava/util/ArrayList;IJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;IJJ)V"
        }
    .end annotation

    .line 863
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callbackHistoryMessages"

    .line 864
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "callbackDeliveredAt"

    .line 865
    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "callbackReadAt"

    .line 866
    invoke-virtual {v0, p3, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 867
    iget-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object p5, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p3, p4, p2, v0, p5}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 869
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/avos/avoscloud/AVSession;->sendUnreadMessagesAck(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method onInfoChangedNotify(Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 6

    .line 896
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 898
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 899
    invoke-direct {p0, v1, p1}, Lcom/avos/avoscloud/AVConversationHolder;->parseConversation(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 900
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 903
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 909
    invoke-static {v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->mergeConversationFromJsonObject(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 905
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMustFetch()V

    :goto_1
    const p1, 0xc36a

    .line 912
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method onInvited(I)V
    .locals 3

    .line 792
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onInvitedToConversation(Ljava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 2

    .line 882
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 885
    invoke-direct {p0, v1, p2}, Lcom/avos/avoscloud/AVConversationHolder;->parseConversation(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p2

    .line 886
    new-instance v1, Lcom/avos/avoscloud/AVConversationHolder$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/avos/avoscloud/AVConversationHolder$7;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, p2, v1}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onJoined(I)V
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onKicked(I)V
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onKickedFromConversation(Ljava/lang/String;)V
    .locals 3

    .line 916
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 918
    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 920
    new-instance v2, Lcom/avos/avoscloud/AVConversationHolder$8;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/avos/avoscloud/AVConversationHolder$8;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    .line 928
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->removeConversation(Ljava/lang/String;)V

    .line 929
    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    return-void
.end method

.method onMemberBlockedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 8

    .line 996
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v3

    .line 997
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v5

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 999
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1000
    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->parseConversation(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p3

    .line 1001
    new-instance v7, Lcom/avos/avoscloud/AVConversationHolder$12;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVConversationHolder$12;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, p3, v7}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onMemberCount(II)V
    .locals 3

    .line 848
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callbackMemberCount"

    .line 849
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 850
    iget-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v1, p2, v0, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onMemberShutupedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 8

    .line 951
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v3

    .line 952
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 954
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 955
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 956
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p1, "Notification --- ignore shutuped/unshutuped notify bcz duplicated."

    .line 958
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 961
    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->parseConversation(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p3

    .line 962
    new-instance v7, Lcom/avos/avoscloud/AVConversationHolder$10;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVConversationHolder$10;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, p3, v7}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onMembersJoined(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1028
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v6

    .line 1032
    new-instance v7, Lcom/avos/avoscloud/AVConversationHolder$13;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$13;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v6, v7}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onMembersLeft(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1043
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v6

    .line 1048
    new-instance v7, Lcom/avos/avoscloud/AVConversationHolder$14;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$14;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v6, v7}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ZZ)V
    .locals 7

    .line 1076
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V

    .line 1077
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 1079
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v4

    .line 1080
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder$16;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/avos/avoscloud/AVConversationHolder$16;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    return-void
.end method

.method onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 1

    .line 1089
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder$17;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$17;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    return-void
.end method

.method onMessageSent(ILjava/lang/String;J)V
    .locals 2

    .line 855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callbackMessageTimeStamp"

    .line 856
    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "callbackMessageId"

    .line 857
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object p4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p2, p3, p1, v0, p4}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onMessageUpdateEvent(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
    .locals 8

    .line 1058
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v6

    .line 1062
    new-instance v7, Lcom/avos/avoscloud/AVConversationHolder$15;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$15;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v6, v7}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onMuted(I)V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onQuit(I)V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onResponse4MemberBlock(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/lang/String;ILcom/avos/avoscloud/Messages$BlacklistCommand;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p2

    .line 689
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object v0

    .line 690
    invoke-direct {p0, p2, v0}, Lcom/avos/avoscloud/AVConversationHolder;->genBundleFromPartiallyResult(Ljava/util/List;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p2

    .line 691
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcCid()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4, p3, p2, p1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onResponse4MemberMute(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/lang/String;ILcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 698
    :cond_0
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p2

    .line 699
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object p4

    .line 700
    invoke-direct {p0, p2, p4}, Lcom/avos/avoscloud/AVConversationHolder;->genBundleFromPartiallyResult(Ljava/util/List;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p2

    .line 701
    iget-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-static {p4, v0, p3, p2, p1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onSelfBlockedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 7

    .line 977
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 982
    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->parseConversation(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p3

    .line 983
    new-instance v6, Lcom/avos/avoscloud/AVConversationHolder$11;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$11;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, p3, v6}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    return-void
.end method

.method onSelfShutupedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 7

    .line 933
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 935
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 936
    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->parseConversation(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p3

    .line 937
    new-instance v6, Lcom/avos/avoscloud/AVConversationHolder$9;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$9;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, p3, v6}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_0
    return-void
.end method

.method onTimesReceipt(IJJ)V
    .locals 2

    .line 873
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callbackReadAt"

    .line 874
    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p4, "callbackDeliveredAt"

    .line 875
    invoke-virtual {v0, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 876
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object p4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p2, p3, p1, v0, p4}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onUnmuted(I)V
    .locals 3

    .line 843
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method onUnreadMessagesEvent(Lcom/avos/avoscloud/im/v2/AVIMMessage;IZ)V
    .locals 7

    .line 1137
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v6

    .line 1141
    invoke-virtual {v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getUnreadMessagesCount()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 1142
    new-instance v4, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v4, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1144
    sget-object p2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V

    .line 1145
    sget-object p2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 1146
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    :cond_0
    move-object v3, p1

    .line 1150
    new-instance p1, Lcom/avos/avoscloud/AVConversationHolder$19;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVConversationHolder$19;-><init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Lcom/avos/avoscloud/im/v2/AVIMMessage;Landroid/util/Pair;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v6, p1}, Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V

    :cond_1
    return-void
.end method

.method public patchMessage(Lcom/avos/avoscloud/PushServiceParcel;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)V
    .locals 10

    .line 345
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    .line 350
    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 349
    invoke-static {v1, v2, v3, p3}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 352
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getRecallMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getRecallMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v3

    .line 355
    iget-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->getMessagePatchPacketForRecall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/avos/avospush/session/MessagePatchModifyPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_1

    .line 356
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 357
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getOldMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getOldMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v7

    .line 360
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getNewMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->isMentionAll()Z

    move-result v5

    .line 363
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMentionList()Ljava/util/List;

    move-result-object v6

    const/4 p2, 0x0

    .line 365
    instance-of v0, p1, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    if-eqz v0, :cond_2

    .line 366
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->getBytes()[B

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :cond_2
    move-object v4, p2

    .line 369
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->getMessagePatchPacketForUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/util/List;JI)Lcom/avos/avospush/session/MessagePatchModifyPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public processConversationCommandFromClient(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/util/Map;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p2

    move/from16 v12, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "conversation.member"

    .line 479
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 480
    :goto_0
    sget-object v3, Lcom/avos/avoscloud/AVConversationHolder$22;->$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation:[I

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "skip"

    const-string v5, "ts"

    const-string v6, "mid"

    const-string v7, "limit"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 551
    :pswitch_0
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 552
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-string v4, "sinc"

    .line 553
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "tmid"

    .line 554
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "tt"

    .line 555
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-string v6, "tinc"

    .line 556
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v6, "direct"

    .line 557
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 558
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v6, "type"

    .line 559
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    move-wide v6, v8

    move v8, v10

    move v9, v11

    move v10, v14

    move v11, v15

    move/from16 v12, p3

    .line 560
    invoke-virtual/range {v0 .. v12}, Lcom/avos/avoscloud/AVConversationHolder;->queryHistoryMessages(Ljava/lang/String;JZLjava/lang/String;JZIIII)V

    goto/16 :goto_2

    .line 545
    :pswitch_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 546
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 547
    invoke-virtual {v13, v1, v0, v12}, Lcom/avos/avoscloud/AVConversationHolder;->queryBlockedMembers(III)V

    goto/16 :goto_2

    .line 540
    :pswitch_2
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 541
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 542
    invoke-virtual {v13, v1, v0, v12}, Lcom/avos/avoscloud/AVConversationHolder;->queryMutedMembers(III)V

    goto/16 :goto_2

    .line 537
    :pswitch_3
    invoke-virtual {v13, v2, v12}, Lcom/avos/avoscloud/AVConversationHolder;->unblockMembers(Ljava/util/List;I)V

    goto/16 :goto_2

    .line 534
    :pswitch_4
    invoke-virtual {v13, v2, v12}, Lcom/avos/avoscloud/AVConversationHolder;->blockMembers(Ljava/util/List;I)V

    goto/16 :goto_2

    .line 531
    :pswitch_5
    invoke-virtual {v13, v2, v12}, Lcom/avos/avoscloud/AVConversationHolder;->unmuteMembers(Ljava/util/List;I)V

    goto/16 :goto_2

    .line 528
    :pswitch_6
    invoke-virtual {v13, v2, v12}, Lcom/avos/avoscloud/AVConversationHolder;->muteMembers(Ljava/util/List;I)V

    goto/16 :goto_2

    :pswitch_7
    if-eqz v0, :cond_1

    const-string v1, "conversation.memberDetails"

    .line 522
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    :cond_1
    if-eqz v1, :cond_4

    .line 524
    invoke-virtual {v13, v1, v12}, Lcom/avos/avoscloud/AVConversationHolder;->promoteMember(Ljava/util/Map;I)V

    goto :goto_2

    :pswitch_8
    if-eqz v0, :cond_2

    .line 512
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 513
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 516
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 517
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 519
    :cond_3
    invoke-direct {v13, v1, v2, v3, v12}, Lcom/avos/avoscloud/AVConversationHolder;->read(Ljava/lang/String;JI)V

    goto :goto_2

    .line 508
    :pswitch_9
    invoke-direct {v13, v12}, Lcom/avos/avoscloud/AVConversationHolder;->getReceiptTime(I)V

    goto :goto_2

    .line 505
    :pswitch_a
    invoke-virtual {v13, v12}, Lcom/avos/avoscloud/AVConversationHolder;->getMemberCount(I)V

    goto :goto_2

    .line 502
    :pswitch_b
    invoke-virtual {v13, v12}, Lcom/avos/avoscloud/AVConversationHolder;->unmute(I)V

    goto :goto_2

    .line 499
    :pswitch_c
    invoke-virtual {v13, v12}, Lcom/avos/avoscloud/AVConversationHolder;->mute(I)V

    goto :goto_2

    :pswitch_d
    const-string v1, "conversation.attributes"

    .line 495
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 496
    invoke-virtual {v13, v0, v12}, Lcom/avos/avoscloud/AVConversationHolder;->updateInfo(Ljava/util/Map;I)V

    goto :goto_2

    .line 491
    :pswitch_e
    invoke-virtual {v13, v12}, Lcom/avos/avoscloud/AVConversationHolder;->quit(I)V

    goto :goto_2

    .line 488
    :pswitch_f
    invoke-virtual {v13, v2, v12}, Lcom/avos/avoscloud/AVConversationHolder;->kickMembers(Ljava/util/List;I)V

    goto :goto_2

    .line 485
    :pswitch_10
    invoke-virtual {v13, v2, v12}, Lcom/avos/avoscloud/AVConversationHolder;->addMembers(Ljava/util/List;I)V

    goto :goto_2

    .line 482
    :pswitch_11
    invoke-virtual {v13, v12}, Lcom/avos/avoscloud/AVConversationHolder;->join(I)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/lang/String;ILcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 7

    const-string v0, "started"

    .line 568
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0, p3, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onConversationCreated(ILcom/avos/avoscloud/Messages$ConvCommand;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "joined"

    .line 571
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p1

    .line 574
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 576
    :cond_1
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    .line 578
    invoke-virtual {p0, p1, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onInvitedToConversation(Ljava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V

    goto/16 :goto_4

    :cond_2
    const-string v0, "removed"

    .line 580
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, -0x10001

    if-eqz v0, :cond_5

    if-eq p3, v1, :cond_22

    if-nez p1, :cond_3

    .line 583
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IllegalState. operation is null, excepted is QUIT / KICK, originalOp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 584
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p2

    sget-object p4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p4

    if-ne p2, p4, :cond_4

    .line 585
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onQuit(I)V

    goto/16 :goto_4

    .line 586
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_22

    .line 587
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onKicked(I)V

    goto/16 :goto_4

    :cond_5
    const-string v0, "added"

    .line 590
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eq p3, v1, :cond_22

    if-nez p1, :cond_6

    .line 594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IllegalState. operation is null, excepted is JOIN / INVITE, originalOp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 595
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p2

    sget-object p4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p4

    if-ne p2, p4, :cond_7

    .line 596
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onJoined(I)V

    goto/16 :goto_4

    .line 597
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p2

    if-ne p1, p2, :cond_22

    .line 598
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onInvited(I)V

    goto/16 :goto_4

    :cond_8
    const-string v0, "left"

    .line 601
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 602
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 603
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    .line 604
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder;->onKickedFromConversation(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const-string v0, "updated"

    .line 606
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_a

    .line 610
    invoke-virtual {p0, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onInfoChangedNotify(Lcom/avos/avoscloud/Messages$ConvCommand;)V

    goto/16 :goto_4

    .line 611
    :cond_a
    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 612
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onMuted(I)V

    goto/16 :goto_4

    .line 613
    :cond_b
    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 614
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onUnmuted(I)V

    goto/16 :goto_4

    .line 615
    :cond_c
    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    if-ne p2, p1, :cond_22

    .line 616
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUdate()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/avos/avoscloud/AVConversationHolder;->onInfoUpdated(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    const-string v0, "result"

    .line 618
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 619
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCount()I

    move-result p1

    .line 620
    invoke-virtual {p0, p1, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onMemberCount(II)V

    goto/16 :goto_4

    :cond_e
    const-string v0, "max_read"

    .line 621
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 622
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxAckTimestamp()J

    move-result-wide v3

    .line 623
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTimestamp()J

    move-result-wide v5

    move-object v1, p0

    move v2, p3

    .line 624
    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/AVConversationHolder;->onTimesReceipt(IJJ)V

    goto/16 :goto_4

    :cond_f
    const-string v0, "member_info_updated"

    .line 625
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 626
    invoke-direct {p0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onMemberUpdated(I)V

    goto/16 :goto_4

    :cond_10
    const-string v0, "shutup_added"

    .line 627
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "shutup_removed"

    .line 628
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_3

    :cond_11
    const-string p1, "members_joined"

    .line 637
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 638
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p1

    .line 639
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p2

    .line 640
    invoke-virtual {p0, p2, p1}, Lcom/avos/avoscloud/AVConversationHolder;->onMembersJoined(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const-string p1, "members_left"

    .line 641
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 642
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p1

    .line 643
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p2

    .line 644
    invoke-virtual {p0, p2, p1}, Lcom/avos/avoscloud/AVConversationHolder;->onMembersLeft(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    const-string p1, "member_info_changed"

    .line 645
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 646
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p1

    .line 647
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object p2

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVConversationHolder;->onMemberChanged(Ljava/lang/String;Lcom/avos/avoscloud/Messages$ConvMemberInfo;)V

    goto/16 :goto_4

    :cond_14
    const-string p1, "shutuped"

    .line 649
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1e

    const-string p3, "unshutuped"

    .line 650
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    goto/16 :goto_2

    :cond_15
    const-string p1, "members_shutuped"

    .line 657
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1c

    const-string p3, "members_unshutuped"

    .line 658
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    goto :goto_1

    :cond_16
    const-string p1, "blocked"

    .line 665
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    const-string p3, "unblocked"

    .line 666
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    goto :goto_0

    :cond_17
    const-string p1, "members_blocked"

    .line 673
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_18

    const-string p3, "members_unblocked"

    .line 674
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 675
    :cond_18
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_19

    .line 676
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 679
    :cond_19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onMemberBlockedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V

    goto :goto_4

    .line 667
    :cond_1a
    :goto_0
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1b

    .line 668
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 671
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onSelfBlockedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V

    goto :goto_4

    .line 659
    :cond_1c
    :goto_1
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1d

    .line 660
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 663
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onMemberShutupedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V

    goto :goto_4

    .line 651
    :cond_1e
    :goto_2
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1f

    .line 652
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    .line 655
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onSelfShutupedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V

    goto :goto_4

    :cond_20
    :goto_3
    if-nez p1, :cond_21

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IllegalState. operation is null, excepted is member_shutupped / member_unshutuped, originalOp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 633
    :cond_21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onResponse4MemberMute(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/lang/String;ILcom/avos/avoscloud/Messages$ConvCommand;)V

    :cond_22
    :goto_4
    return-void
.end method

.method public processMessages(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, -0x1

    const-wide/16 v8, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/Messages$LogItem;

    .line 734
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->hasAckAt()Z

    move-result v10

    if-eqz v10, :cond_1

    const-wide/16 v17, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getAckAt()J

    move-result-wide v10

    move-wide/from16 v17, v10

    .line 735
    :goto_1
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->hasReadAt()Z

    move-result v10

    if-eqz v10, :cond_2

    const-wide/16 v19, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getReadAt()J

    move-result-wide v10

    move-wide/from16 v19, v10

    :goto_2
    cmp-long v10, v4, v17

    if-gez v10, :cond_3

    move-wide/from16 v4, v17

    :cond_3
    cmp-long v10, v8, v19

    if-gez v10, :cond_4

    move-wide/from16 v8, v19

    .line 743
    :cond_4
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getFrom()Ljava/lang/String;

    move-result-object v14

    .line 744
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getData()Ljava/lang/String;

    move-result-object v10

    .line 745
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getTimestamp()J

    move-result-wide v15

    .line 746
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getMsgId()Ljava/lang/String;

    move-result-object v11

    .line 747
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->hasMentionAll()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_5

    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionAll()Z

    move-result v12

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    .line 748
    :goto_3
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    .line 749
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->hasBin()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$LogItem;->getBin()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v13, 0x1

    :cond_6
    if-eqz v13, :cond_7

    if-eqz v10, :cond_7

    .line 753
    new-instance v3, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    iget-object v13, v7, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    move v6, v12

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 754
    move-object v12, v3

    check-cast v12, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/avos/avoscloud/AVUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->setBytes([B)V

    goto :goto_4

    :cond_7
    move v6, v12

    .line 755
    instance-of v3, v10, Ljava/lang/String;

    if-nez v3, :cond_8

    instance-of v3, v10, Lcom/alibaba/fastjson/JSON;

    if-eqz v3, :cond_0

    .line 756
    :cond_8
    new-instance v3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v13, v7, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 757
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 761
    :goto_4
    invoke-virtual {v3, v11}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMentionAll(Z)V

    .line 763
    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMentionList(Ljava/util/List;)V

    .line 765
    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    .line 766
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 768
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move-wide v3, v4

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/AVConversationHolder;->onHistoryMessageQuery(Ljava/util/ArrayList;IJJ)V

    return-void
.end method

.method public promoteMember(Ljava/util/Map;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 307
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 306
    invoke-static {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 309
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "member_info_update"

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationMemberCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    .line 311
    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public queryBlockedMembers(III)V
    .locals 7

    .line 280
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 284
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 283
    invoke-static {v1, v2, v3, p3}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 286
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const-string v3, "query"

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/avos/avospush/session/BlacklistCommandPacket;->genBlacklistCommandPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/avos/avospush/session/BlacklistCommandPacket;

    move-result-object p1

    .line 288
    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public queryHistoryMessages(Ljava/lang/String;JILjava/lang/String;JI)V
    .locals 14

    .line 388
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromNewToOld:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    .line 389
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->getCode()I

    move-result v10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v11, p4

    move/from16 v13, p8

    .line 388
    invoke-virtual/range {v1 .. v13}, Lcom/avos/avoscloud/AVConversationHolder;->queryHistoryMessages(Ljava/lang/String;JZLjava/lang/String;JZIIII)V

    return-void
.end method

.method public queryHistoryMessages(Ljava/lang/String;JZLjava/lang/String;JZIIII)V
    .locals 15

    move-object v0, p0

    move/from16 v14, p12

    .line 395
    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v14}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 398
    :cond_0
    iget-object v1, v0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 399
    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    iget-object v3, v0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 398
    invoke-static {v2, v3, v4, v14}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 401
    iget-object v1, v0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 402
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    .line 401
    invoke-static/range {v1 .. v14}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->getConversationMessageQueryPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JZIIII)Lcom/avos/avospush/session/ConversationMessageQueryPacket;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public queryMutedMembers(III)V
    .locals 8

    .line 266
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 270
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 269
    invoke-static {v1, v2, v3, p3}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 272
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "query_shutup"

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p3

    .line 274
    invoke-virtual {p3, p1}, Lcom/avos/avospush/session/ConversationControlPacket;->setQueryOffset(I)V

    .line 275
    invoke-virtual {p3, p2}, Lcom/avos/avospush/session/ConversationControlPacket;->setQueryLimit(I)V

    .line 276
    invoke-static {p3}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public quit(I)V
    .locals 8

    .line 375
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 379
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 378
    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 381
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 382
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "remove"

    move v7, p1

    .line 381
    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/AVIMMessageOption;)V
    .locals 10

    .line 315
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 319
    instance-of v1, p1, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    if-eqz v1, :cond_1

    .line 320
    move-object v0, p1

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->getBytes()[B

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 323
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt()Z

    move-result v3

    iget-object v5, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 323
    invoke-static {v1, v2, v3, v5}, Lcom/avos/avoscloud/PendingMessageCache$Message;->getMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V

    .line 333
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 335
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->isMentionAll()Z

    move-result v5

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMentionList()Ljava/util/List;

    move-result-object v6

    .line 338
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getMessageToken(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Ljava/lang/String;

    move-result-object v7

    move-object v8, p3

    move v9, p2

    .line 334
    invoke-static/range {v1 .. v9}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;I)Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public unblockMembers(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNBLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVConversationHolder$4;-><init>(Lcom/avos/avoscloud/AVConversationHolder;ILjava/util/List;)V

    .line 228
    new-instance p1, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method

.method public unmute(I)V
    .locals 8

    .line 418
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 422
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 421
    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 424
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "unmute"

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public unmuteMembers(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 155
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 154
    invoke-static {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 158
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "remove_shutup"

    move-object v3, p1

    move v7, p2

    .line 157
    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method public updateInfo(Ljava/util/Map;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVConversationHolder;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 296
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    .line 295
    invoke-static {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 298
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "update"

    move-object v5, p1

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method
