.class public Lcom/avos/avospush/session/MessagePatchModifyPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "MessagePatchModifyPacket.java"


# instance fields
.field private binaryData:Lcom/google/protobuf/ByteString;

.field private conversationId:Ljava/lang/String;

.field private isRecall:Z

.field private mentionAll:Z

.field private mentionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messageData:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->binaryData:Lcom/google/protobuf/ByteString;

    const-string v0, "patch"

    .line 16
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static getMessagePatchPacketForRecall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/avos/avospush/session/MessagePatchModifyPacket;
    .locals 1

    .line 87
    new-instance v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/MessagePatchModifyPacket;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->conversationId:Ljava/lang/String;

    .line 89
    iput-object p2, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->messageId:Ljava/lang/String;

    .line 90
    iput-wide p3, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->timestamp:J

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->isRecall:Z

    .line 92
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->setRequestId(I)V

    .line 93
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result p2

    if-le p2, p1, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->setPeerId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getMessagePatchPacketForUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/util/List;JI)Lcom/avos/avospush/session/MessagePatchModifyPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI)",
            "Lcom/avos/avospush/session/MessagePatchModifyPacket;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/MessagePatchModifyPacket;-><init>()V

    .line 68
    iput-object p1, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->conversationId:Ljava/lang/String;

    .line 69
    iput-object p2, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->messageId:Ljava/lang/String;

    .line 70
    iput-wide p7, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->timestamp:J

    .line 71
    iput-object p3, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->messageData:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 73
    invoke-static {p4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->binaryData:Lcom/google/protobuf/ByteString;

    :cond_0
    const/4 p1, 0x0

    .line 75
    iput-boolean p1, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->isRecall:Z

    .line 76
    iput-boolean p5, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->mentionAll:Z

    .line 77
    iput-object p6, v0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->mentionList:Ljava/util/List;

    .line 78
    invoke-virtual {v0, p9}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->setRequestId(I)V

    .line 79
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    .line 81
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->setPeerId(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private getPatchCommand()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 7

    .line 37
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->newBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->newBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v1

    .line 39
    iget-wide v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setTimestamp(J)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->messageId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->conversationId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->messageData:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->messageData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 51
    :cond_3
    iget-boolean v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->mentionAll:Z

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setMentionAll(Z)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 52
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->mentionList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 53
    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->addAllMentionPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 55
    :cond_4
    iget-boolean v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->isRecall:Z

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setRecall(Z)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 56
    iget-object v2, p0, Lcom/avos/avospush/session/MessagePatchModifyPacket;->binaryData:Lcom/google/protobuf/ByteString;

    if-eqz v2, :cond_5

    .line 57
    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 59
    :cond_5
    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->addPatches(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    .line 61
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/avos/avoscloud/Messages$OpType;->modify:Lcom/avos/avoscloud/Messages$OpType;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 32
    invoke-direct {p0}, Lcom/avos/avospush/session/MessagePatchModifyPacket;->getPatchCommand()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setPatchMessage(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method
