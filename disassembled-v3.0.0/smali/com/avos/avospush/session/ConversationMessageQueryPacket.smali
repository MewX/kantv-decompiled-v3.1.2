.class public Lcom/avos/avospush/session/ConversationMessageQueryPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationMessageQueryPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field direct:I

.field limit:I

.field msgId:Ljava/lang/String;

.field msgType:I

.field requestId:I

.field sclosed:Z

.field tclosed:Z

.field timestamp:J

.field toMsgId:Ljava/lang/String;

.field toTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const-string v0, "logs"

    .line 12
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static getConversationMessageQueryPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JZIIII)Lcom/avos/avospush/session/ConversationMessageQueryPacket;
    .locals 3

    .line 167
    new-instance v0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;-><init>()V

    .line 168
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move-object v1, p0

    .line 170
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setPeerId(Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    .line 173
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setConversationId(Ljava/lang/String;)V

    move-object v1, p2

    .line 174
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setMsgId(Ljava/lang/String;)V

    move v1, p11

    .line 175
    invoke-virtual {v0, p11}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setLimit(I)V

    move v1, p10

    .line 176
    invoke-virtual {v0, p10}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setDirect(I)V

    move-wide v1, p3

    .line 177
    invoke-virtual {v0, p3, p4}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setTimestamp(J)V

    move v1, p5

    .line 178
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setSclosed(Z)V

    move/from16 v1, p13

    .line 179
    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setRequestId(I)V

    move-object v1, p6

    .line 181
    invoke-virtual {v0, p6}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setToMsgId(Ljava/lang/String;)V

    move-wide v1, p7

    .line 182
    invoke-virtual {v0, p7, p8}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setToTimestamp(J)V

    move v1, p9

    .line 183
    invoke-virtual {v0, p9}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setTclosed(Z)V

    move v1, p12

    .line 184
    invoke-virtual {v0, p12}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setMsgType(I)V

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->direct:I

    return v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->getLogsCommand()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setLogsMessage(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 126
    iget v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setI(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    return v0
.end method

.method protected getLogsCommand()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 6

    .line 131
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->newBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 133
    iget v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setLimit(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 134
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 138
    :cond_0
    iget-wide v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->sclosed:Z

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setTIncluded(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 143
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setTmid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 147
    :cond_2
    iget-wide v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toTimestamp:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setTt(J)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 150
    :cond_3
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->tclosed:Z

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setTtIncluded(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 152
    iget v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->direct:I

    if-nez v1, :cond_4

    .line 153
    sget-object v1, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->OLD:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setDirection(Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    goto :goto_0

    .line 155
    :cond_4
    sget-object v1, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->NEW:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setDirection(Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 157
    :goto_0
    iget v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgType:I

    if-eqz v1, :cond_5

    .line 158
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setLctype(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 160
    :cond_5
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->build()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgType:I

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    return-wide v0
.end method

.method public getToMsgId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getToTimestamp()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toTimestamp:J

    return-wide v0
.end method

.method public isSclosed()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->sclosed:Z

    return v0
.end method

.method public isTclosed()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->tclosed:Z

    return v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    return-void
.end method

.method public setDirect(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->direct:I

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgType:I

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    return-void
.end method

.method public setSclosed(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->sclosed:Z

    return-void
.end method

.method public setTclosed(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->tclosed:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    return-void
.end method

.method public setToMsgId(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    return-void
.end method

.method public setToTimestamp(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toTimestamp:J

    return-void
.end method
