.class public Lcom/avos/avospush/session/PushAckPacket;
.super Lcom/avos/avospush/session/CommandPacket;
.source "PushAckPacket.java"


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

    .line 15
    invoke-direct {p0}, Lcom/avos/avospush/session/CommandPacket;-><init>()V

    const-string v0, "ack"

    .line 16
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/PushAckPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAckCommand()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 2

    .line 31
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/avos/avospush/session/PushAckPacket;->ids:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->addAllIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 33
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->build()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/avos/avospush/session/CommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/avos/avospush/session/PushAckPacket;->getAckCommand()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setAckMessage(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public setMessageIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/avos/avospush/session/PushAckPacket;->ids:Ljava/util/List;

    return-void
.end method
