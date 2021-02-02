.class public Lcom/avos/avospush/session/ConversationDirectMessagePacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationDirectMessagePacket.java"


# instance fields
.field binaryMessage:Lcom/google/protobuf/ByteString;

.field conversationId:Ljava/lang/String;

.field mentionAll:Z

.field mentionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field message:Ljava/lang/String;

.field messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

.field messageToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionAll:Z

    .line 16
    iput-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionList:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageToken:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->binaryMessage:Lcom/google/protobuf/ByteString;

    const-string v0, "direct"

    .line 22
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/util/List;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;I)Lcom/avos/avospush/session/ConversationDirectMessagePacket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMMessageOption;",
            "I)",
            "Lcom/avos/avospush/session/ConversationDirectMessagePacket;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;-><init>()V

    .line 128
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 130
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setConversationId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p7}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setRequestId(I)V

    .line 134
    invoke-direct {v0, p6}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setMessageOption(Lcom/avos/avoscloud/im/v2/AVIMMessageOption;)V

    .line 135
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setMessage(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setMentionAll(Z)V

    .line 137
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setMentionList(Ljava/util/List;)V

    .line 138
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setBinaryMessage([B)V

    return-object v0
.end method

.method public static getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;I)Lcom/avos/avospush/session/ConversationDirectMessagePacket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMMessageOption;",
            "I)",
            "Lcom/avos/avospush/session/ConversationDirectMessagePacket;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    move/from16 v7, p8

    .line 147
    invoke-static/range {v0 .. v7}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/util/List;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;I)Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    move-result-object v0

    move-object v1, p6

    .line 148
    iput-object v1, v0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageToken:Ljava/lang/String;

    return-object v0
.end method

.method private setMessageOption(Lcom/avos/avoscloud/im/v2/AVIMMessageOption;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    return-void
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getDirectCommand()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 4

    .line 82
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->newBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setMsg(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 87
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionAll:Z

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setMentionAll(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->addAllMentionPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    if-eqz v1, :cond_6

    .line 95
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setR(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setTransient(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->getPushData()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 104
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setPushData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isWill()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setWill(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 112
    :cond_6
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 113
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setDt(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 116
    :cond_7
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->binaryMessage:Lcom/google/protobuf/ByteString;

    if-eqz v1, :cond_8

    .line 117
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setBinaryMsg(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 120
    :cond_8
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->getDirectCommand()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setDirectMessage(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 73
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->getPriority()Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->getPriority()Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setPriority(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    :cond_0
    return-object v0
.end method

.method public getMentionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionList:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isMentionAll()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionAll:Z

    return v0
.end method

.method public setBinaryMessage([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->binaryMessage:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->binaryMessage:Lcom/google/protobuf/ByteString;

    :goto_0
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    return-void
.end method

.method public setMentionAll(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionAll:Z

    return-void
.end method

.method public setMentionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->mentionList:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    return-void
.end method
