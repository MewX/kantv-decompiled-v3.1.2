.class public Lcom/avos/avospush/session/UnreadMessagesClearPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "UnreadMessagesClearPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field messageId:Ljava/lang/String;

.field messageTS:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const-string v0, "read"

    .line 18
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static getUnreadClearPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/avos/avospush/session/UnreadMessagesClearPacket;
    .locals 3

    .line 59
    new-instance v0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;-><init>()V

    .line 60
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 62
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->setPeerId(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->setConversationId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->setRequestId(I)V

    .line 66
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->setMessageId(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p3, p4}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->setMessageTS(J)V

    return-object v0
.end method


# virtual methods
.method getConversationId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->getReadCommand()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setReadMessage(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method protected getReadCommand()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 7

    .line 45
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->newBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->addConvsBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->messageId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    .line 50
    :cond_0
    iget-wide v2, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->messageTS:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setTimestamp(J)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    .line 54
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->conversationId:Ljava/lang/String;

    return-void
.end method

.method setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->messageId:Ljava/lang/String;

    return-void
.end method

.method setMessageTS(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/avos/avospush/session/UnreadMessagesClearPacket;->messageTS:J

    return-void
.end method
