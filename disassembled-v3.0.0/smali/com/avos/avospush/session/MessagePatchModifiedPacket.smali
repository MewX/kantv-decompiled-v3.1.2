.class public Lcom/avos/avospush/session/MessagePatchModifiedPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "MessagePatchModifiedPacket.java"


# instance fields
.field private lastPatchTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const-string v0, "patch"

    .line 14
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/MessagePatchModifiedPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static getPatchMessagePacket(Ljava/lang/String;J)Lcom/avos/avospush/session/MessagePatchModifiedPacket;
    .locals 3

    .line 32
    new-instance v0, Lcom/avos/avospush/session/MessagePatchModifiedPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/MessagePatchModifiedPacket;-><init>()V

    .line 33
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 35
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/MessagePatchModifiedPacket;->setPeerId(Ljava/lang/String;)V

    .line 37
    :cond_0
    iput-wide p1, v0, Lcom/avos/avospush/session/MessagePatchModifiedPacket;->lastPatchTime:J

    return-object v0
.end method


# virtual methods
.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 19
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/avos/avoscloud/Messages$OpType;->modified:Lcom/avos/avoscloud/Messages$OpType;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 21
    invoke-virtual {p0}, Lcom/avos/avospush/session/MessagePatchModifiedPacket;->getPatchCommand()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setPatchMessage(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method protected getPatchCommand()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 3

    .line 26
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->newBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    .line 27
    iget-wide v1, p0, Lcom/avos/avospush/session/MessagePatchModifiedPacket;->lastPatchTime:J

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setLastPatchTime(J)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    .line 28
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method
