.class Lcom/avos/avoscloud/AVDefaultWebSocketListener;
.super Ljava/lang/Object;
.source "AVDefaultWebSocketListener.java"

# interfaces
.implements Lcom/avos/avospush/push/AVWebSocketListener;


# static fields
.field private static final CODE_SESSION_SIGNATURE_FAILURE:I = 0x1006

.field private static final CODE_SESSION_TOKEN_FAILURE:I = 0x1010

.field private static final SESSION_MESSASGE_DEPOT:Ljava/lang/String; = "com.avos.push.session.message."


# instance fields
.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVSession;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    .line 33
    new-instance v0, Lcom/avos/avospush/session/StaleMessageDepot;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.avos.push.session.message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    return-void
.end method

.method private genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    .locals 2

    .line 393
    new-instance v0, Lcom/avos/avospush/session/SessionAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionAckPacket;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 395
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionAckPacket;->setMessageId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private onAckError(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$AckCommand;Lcom/avos/avoscloud/PendingMessageCache$Message;)V
    .locals 4

    .line 179
    iget-object p3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p3, p3, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object p3

    .line 180
    iget v0, p3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    :cond_0
    iget v0, p3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v0

    .line 185
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$AckCommand;->getCode()I

    move-result v1

    .line 186
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$AckCommand;->hasAppCode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$AckCommand;->getAppCode()I

    move-result v2

    .line 187
    :cond_1
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$AckCommand;->getReason()Ljava/lang/String;

    move-result-object p2

    .line 188
    new-instance v3, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v3, v1, v2, p2}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(IILjava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 189
    invoke-static {p2, p3, p1, v3, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method private processConversationDeliveredAt(Ljava/lang/String;IJ)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object p1

    .line 257
    invoke-virtual {p1, p3, p4}, Lcom/avos/avoscloud/AVConversationHolder;->onConversationDeliveredAtEvent(J)V

    return-void
.end method

.method private processMessageReceipt(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    .line 267
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    .line 268
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avospush/session/MessageReceiptCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 272
    :cond_0
    check-cast p1, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 273
    new-instance v7, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    .line 274
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    move-object v0, v7

    move-object v1, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 275
    iget-object p4, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    invoke-virtual {v7, p4}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 276
    iget-object p1, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    invoke-virtual {v7, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 277
    sget-object p1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v7, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 278
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object p1

    .line 279
    invoke-virtual {p1, v7}, Lcom/avos/avoscloud/AVConversationHolder;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    return-void
.end method

.method private updateLocalPatchTime(ZLcom/avos/avoscloud/Messages$PatchCommand;)V
    .locals 5

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    .line 508
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$PatchItem;

    .line 509
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 510
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v0

    goto :goto_0

    .line 513
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVSession;->updateLastPatchTime(J)V

    goto :goto_1

    .line 515
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchCommand;->getLastPatchTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVSession;->updateLastPatchTime(J)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAckCommand(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$AckCommand;)V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVSession;->setServerAckReceived(J)V

    .line 196
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$AckCommand;->getT()J

    move-result-wide v0

    .line 197
    iget-object v2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 198
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-direct {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->onAckError(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$AckCommand;Lcom/avos/avoscloud/PendingMessageCache$Message;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 202
    iget-object v3, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v3

    .line 204
    iget-object v4, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v4, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 205
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$AckCommand;->getUid()Ljava/lang/String;

    move-result-object p2

    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVConversationHolder;->onMessageSent(ILjava/lang/String;J)V

    .line 207
    iget-boolean p1, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->requestReceipt:Z

    if-eqz p1, :cond_1

    .line 208
    iput-wide v0, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    .line 209
    iput-object p2, v2, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v2}, Lcom/avos/avospush/session/MessageReceiptCache;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBlacklistCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$BlacklistCommand;)V
    .locals 3

    const-string v0, "query_result"

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 296
    iget p1, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 302
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 304
    :cond_2
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcCid()Ljava/lang/String;

    move-result-object p1

    .line 305
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callbackData"

    .line 306
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_2

    .line 297
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not found requestKey: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "blocked"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "unblocked"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 313
    :cond_5
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcCid()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    goto :goto_2

    .line 319
    :cond_6
    iget v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v1

    .line 320
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/avos/avoscloud/AVConversationHolder;->onResponse4MemberBlock(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/lang/String;ILcom/avos/avoscloud/Messages$BlacklistCommand;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onConversationCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 4

    const-string v0, "results"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "callbackData"

    const-string v2, "not found requestKey: "

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 327
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    iget p1, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 329
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object p1

    .line 330
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 331
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v3, p2, p3, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto/16 :goto_4

    .line 336
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "shutup_result"

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 340
    iget p1, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 341
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 342
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_0
    new-array p3, p3, [Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 344
    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 346
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 347
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 348
    iget-object p3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p3, v3, p2, p1, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto/16 :goto_4

    .line 351
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const v0, -0x10001

    if-eqz p2, :cond_6

    .line 355
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_6
    const p2, -0x10001

    :goto_1
    const-string v1, "added"

    .line 357
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "removed"

    .line 358
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "updated"

    .line 359
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "result"

    .line 360
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "shutup_added"

    .line 361
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "shutup_removed"

    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "member_info_updated"

    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    if-eq p2, v0, :cond_9

    .line 366
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 368
    iget v1, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v3

    .line 369
    iget-object v0, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    goto :goto_2

    .line 371
    :cond_8
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v0, "started"

    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 375
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 377
    :cond_a
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x1

    .line 380
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConv()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConv()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x4

    goto :goto_3

    .line 382
    :cond_b
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTransient()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTransient()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x2

    .line 385
    :cond_c
    :goto_3
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 386
    iget-object v2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v3, p1, p2, p3}, Lcom/avos/avoscloud/AVConversationHolder;->processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/lang/String;ILcom/avos/avoscloud/Messages$ConvCommand;)V

    :cond_d
    :goto_4
    return-void
.end method

.method public onDirectCommand(Lcom/avos/avoscloud/Messages$DirectCommand;)V
    .locals 19

    move-object/from16 v1, p0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getFromPeerId()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getCid()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getId()Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasConvType()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getConvType()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 92
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTransient()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTransient()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 93
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasHasMore()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getHasMore()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 94
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPatchTimestamp()J

    move-result-wide v13

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMentionAll()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionAll()Z

    move-result v9

    move v15, v9

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 96
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v8

    if-nez v11, :cond_5

    .line 100
    :try_start_0
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 101
    iget-object v7, v1, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    .line 102
    invoke-virtual {v7}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-static {v7, v4, v10}, Lcom/avos/avospush/session/ConversationAckPacket;->getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/ConversationAckPacket;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_4

    .line 104
    :cond_4
    invoke-direct {v1, v10}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 108
    :cond_5
    :goto_4
    :try_start_1
    iget-object v7, v1, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    invoke-virtual {v7, v10}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 109
    iget-object v7, v1, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v4, v6}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v9

    .line 111
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    .line 112
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v16, -0x1

    move-object v3, v0

    move-object v1, v8

    move/from16 v18, v11

    move-object v11, v9

    move-wide/from16 v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 113
    move-object v3, v0

    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->setBytes([B)V

    goto :goto_5

    :cond_6
    move-object v1, v8

    move/from16 v18, v11

    move-object v11, v9

    .line 115
    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 116
    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    move-object v0, v2

    .line 118
    :goto_5
    invoke-virtual {v0, v10}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v13, v14}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUpdateAt(J)V

    .line 120
    invoke-virtual {v0, v15}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMentionAll(Z)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMentionList(Ljava/util/List;)V

    move/from16 v7, v18

    .line 122
    invoke-virtual {v11, v0, v12, v7}, Lcom/avos/avoscloud/AVConversationHolder;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    move-object/from16 v1, p0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 125
    :goto_6
    iget-object v2, v1, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v3, v4, v0}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public onError(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ErrorCommand;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 404
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, -0x10001

    if-eq v1, v2, :cond_3

    .line 405
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    iget v2, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 407
    iget-object v2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    iget-object v2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 410
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getCode()I

    move-result v2

    .line 411
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasAppCode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getAppCode()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 412
    :goto_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getReason()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 413
    iget v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v5

    .line 414
    :goto_1
    iget-object v6, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v6}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v8, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(IILjava/lang/String;)V

    invoke-static {v6, v5, v7, v8, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_3
    if-nez p1, :cond_5

    .line 420
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getCode()I

    move-result p1

    const/16 p2, 0x1006

    if-ne p2, p1, :cond_4

    .line 423
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getTagCacheInstance()Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    move-result-object p1

    iget-object p2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->removeSession(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 p2, 0x1010

    if-ne p2, p1, :cond_5

    .line 426
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    const-string p2, ""

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/AVSession;->updateRealtimeSessionToken(Ljava/lang/String;I)V

    .line 427
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->onWebSocketOpen()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onHistoryMessageQuery(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$LogsCommand;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 434
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, -0x10001

    if-eq v0, v1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    const/4 v1, 0x1

    .line 437
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLogsCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 438
    invoke-virtual {p2, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLogs(I)Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$LogItem;->hasConvType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$LogItem;->getConvType()I

    move-result v1

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v0

    .line 444
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLogsList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVConversationHolder;->processMessages(Ljava/lang/Integer;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onListenerAdded(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 219
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "web socket opened, send session open."

    .line 220
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->onWebSocketOpen()V

    :cond_1
    return-void
.end method

.method public onListenerRemoved()V
    .locals 0

    return-void
.end method

.method public onMessagePatchCommand(ZLjava/lang/Integer;Lcom/avos/avoscloud/Messages$PatchCommand;)V
    .locals 10

    .line 486
    invoke-direct {p0, p1, p3}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->updateLocalPatchTime(ZLcom/avos/avoscloud/Messages$PatchCommand;)V

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 489
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$PatchItem;

    .line 490
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p3

    .line 491
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUpdateAt(J)V

    .line 492
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getCid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v0

    .line 493
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem;->getRecall()Z

    move-result p2

    invoke-virtual {v0, p3, p2}, Lcom/avos/avoscloud/AVConversationHolder;->onMessageUpdateEvent(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object p1

    .line 498
    iget p1, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object p1

    .line 499
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 500
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$PatchCommand;->getLastPatchTime()J

    move-result-wide v1

    const-string p3, "message_patch_time"

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 501
    iget-object p3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p3, v1, p2, v0, p1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_1
    return-void
.end method

.method public onMessageReceipt(Lcom/avos/avoscloud/Messages$RcpCommand;)V
    .locals 7

    .line 234
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getT()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getCid()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 240
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->processConversationDeliveredAt(Ljava/lang/String;IJ)V

    .line 242
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->processMessageReceipt(Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 246
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onReadCmdReceipt(Lcom/avos/avoscloud/Messages$RcpCommand;)V
    .locals 3

    .line 284
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getT()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getCid()Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object p1

    .line 288
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVConversationHolder;->onConversationReadAtEvent(J)V

    :cond_0
    return-void
.end method

.method public onSessionCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$SessionCommand;)V
    .locals 2

    const v0, -0x10001

    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const p2, -0x10001

    :goto_0
    const-string v1, "opened"

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    :try_start_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    if-eq p2, v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1, v0, v1, p2}, Lcom/avos/avoscloud/AVSessionListener;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V

    goto :goto_1

    .line 144
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "session resumed"

    .line 145
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object p2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/AVSessionListener;->onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;)V

    .line 149
    :goto_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSt()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasStTtl()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 150
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->getStTtl()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/AVSession;->updateRealtimeSessionToken(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 153
    iget-object p2, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p2, p2, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object p3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2, p3, v0, p1}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "refreshed"

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSt()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasStTtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 157
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->getStTtl()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lcom/avos/avoscloud/AVSession;->updateRealtimeSessionToken(Ljava/lang/String;I)V

    .line 159
    :cond_5
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object p3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1, p3, v0, p2}, Lcom/avos/avoscloud/AVSessionListener;->onSessionTokenRenewed(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V

    goto :goto_2

    :cond_6
    const-string v1, "query_result"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 161
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p1

    .line 162
    iget-object p3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p3, p3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/avos/avoscloud/AVSessionListener;->onOnlineQuery(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/util/List;I)V

    goto :goto_2

    :cond_7
    const-string v1, "closed"

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 166
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasCode()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 167
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object p2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    .line 168
    invoke-virtual {p3}, Lcom/avos/avoscloud/Messages$SessionCommand;->getCode()I

    move-result p3

    .line 167
    invoke-virtual {p1, p2, v0, p3}, Lcom/avos/avoscloud/AVSessionListener;->onSessionClosedFromServer(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V

    goto :goto_2

    :cond_8
    if-eq p2, v0, :cond_9

    .line 171
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 173
    :cond_9
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p1, p1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object p3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1, p3, v0, p2}, Lcom/avos/avoscloud/AVSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onUnreadMessagesCommand(Lcom/avos/avoscloud/Messages$UnreadCommand;)V
    .locals 19

    move-object/from16 v0, p0

    .line 450
    iget-object v1, v0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getNotifTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AVSession;->updateLastNotifyTime(J)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvsCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvsList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 455
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$UnreadTuple;

    .line 456
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMid()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getData()Ljava/lang/String;

    move-result-object v4

    .line 458
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getPatchTimestamp()J

    move-result-wide v8

    .line 459
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getPatchTimestamp()J

    move-result-wide v12

    .line 460
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getCid()Ljava/lang/String;

    move-result-object v14

    .line 461
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMentioned()Z

    move-result v15

    .line 462
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v16

    .line 463
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getFrom()Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasConvType()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getConvType()I

    move-result v5

    move v10, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const/4 v10, 0x1

    .line 467
    :goto_1
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v16, :cond_1

    .line 468
    new-instance v4, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    const-wide/16 v17, -0x1

    move-object v5, v4

    move-object v6, v14

    move-object/from16 p1, v1

    move v1, v10

    move-wide/from16 v10, v17

    invoke-direct/range {v5 .. v11}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 469
    move-object v5, v4

    check-cast v5, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual/range {v16 .. v16}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->setBytes([B)V

    move/from16 v18, v15

    move-object v15, v4

    goto :goto_2

    :cond_1
    move-object/from16 p1, v1

    move v1, v10

    .line 471
    new-instance v10, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const-wide/16 v16, -0x1

    move-object v5, v10

    move-object v6, v14

    move/from16 v18, v15

    move-object v15, v10

    move-wide/from16 v10, v16

    invoke-direct/range {v5 .. v11}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 472
    invoke-virtual {v15, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 474
    :goto_2
    invoke-virtual {v15, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v15, v12, v13}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUpdateAt(J)V

    .line 477
    iget-object v3, v0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v14, v1}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v1

    .line 478
    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getUnread()I

    move-result v2

    move/from16 v3, v18

    invoke-virtual {v1, v15, v2, v3}, Lcom/avos/avoscloud/AVConversationHolder;->onUnreadMessagesEvent(Lcom/avos/avoscloud/im/v2/AVIMMessage;IZ)V

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public onWebSocketClose()V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/AVSessionListener;->onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;)V

    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Connection Lost"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->poll()Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 58
    iget-object v3, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    iget-object v0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 60
    invoke-static {v4, v3, v0, v5, v6}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    .line 68
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 71
    iget-object v3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v3, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v3

    .line 72
    iget-object v4, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->sessionId:Ljava/lang/String;

    iget-object v5, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    .line 74
    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v3

    .line 72
    invoke-static {v4, v5, v1, v6, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public onWebSocketOpen()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "web socket opened, send session open."

    .line 43
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->reopen()V

    :cond_2
    return-void
.end method
