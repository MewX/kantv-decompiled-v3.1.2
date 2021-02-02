.class public Lcom/avos/avospush/session/SessionAckPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "SessionAckPacket.java"


# instance fields
.field ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const-string v0, "ack"

    .line 19
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/SessionAckPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAckCommand()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 2

    .line 35
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->addAllIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->build()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 29
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionAckPacket;->getAckCommand()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setAckMessage(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
