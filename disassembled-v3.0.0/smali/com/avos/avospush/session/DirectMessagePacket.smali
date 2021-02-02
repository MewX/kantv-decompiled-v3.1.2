.class public Lcom/avos/avospush/session/DirectMessagePacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "DirectMessagePacket.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private receipt:Z

.field private roomId:Ljava/lang/String;

.field private toPeerIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const-string v0, "direct"

    .line 23
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDirectCommand()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 2

    .line 74
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->newBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setMsg(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 77
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->addAllToPeerIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 81
    :cond_0
    iget-boolean v1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->receipt:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setR(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setRoomId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->isTransient()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->isTransient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setTransient(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getDirectCommand()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setDirectMessage(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getToPeerIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->toPeerIds:Ljava/util/Collection;

    return-object v0
.end method

.method public isReceipt()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->receipt:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->transi:Z

    return v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->roomId:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->msg:Ljava/lang/String;

    return-void
.end method

.method public setReceipt(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->receipt:Z

    return-void
.end method

.method public setToPeerIds(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->toPeerIds:Ljava/util/Collection;

    return-void
.end method

.method public setTransient(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->transi:Z

    return-void
.end method
