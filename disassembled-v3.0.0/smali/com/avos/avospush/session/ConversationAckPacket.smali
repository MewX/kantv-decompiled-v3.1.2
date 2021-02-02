.class public Lcom/avos/avospush/session/ConversationAckPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationAckPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field largestTimeStamp:Ljava/lang/Long;

.field messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const-string v0, "ack"

    .line 13
    invoke-super {p0, v0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/avos/avospush/session/ConversationAckPacket;
    .locals 1

    .line 85
    new-instance v0, Lcom/avos/avospush/session/ConversationAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationAckPacket;-><init>()V

    .line 86
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationAckPacket;->setConversationId(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/avos/avospush/session/ConversationAckPacket;->setTimestamp(J)V

    return-object v0
.end method

.method public static getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/ConversationAckPacket;
    .locals 1

    .line 67
    new-instance v0, Lcom/avos/avospush/session/ConversationAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationAckPacket;-><init>()V

    .line 68
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationAckPacket;->setConversationId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationAckPacket;->setMessageId(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected getAckCommand()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 3

    .line 52
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->largestTimeStamp:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setTots(J)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 62
    :cond_2
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->build()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationAckPacket;->getAckCommand()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setAckMessage(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->largestTimeStamp:Ljava/lang/Long;

    return-void
.end method
