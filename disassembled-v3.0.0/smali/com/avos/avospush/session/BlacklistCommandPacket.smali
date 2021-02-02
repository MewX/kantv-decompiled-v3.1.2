.class public Lcom/avos/avospush/session/BlacklistCommandPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "BlacklistCommandPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/BlacklistCommandPacket$BlacklistCommandOp;
    }
.end annotation


# static fields
.field public static final BLACKLIST_CMD:Ljava/lang/String; = "blacklist"


# instance fields
.field private clientIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId:Ljava/lang/String;

.field private limit:I

.field private nonce:Ljava/lang/String;

.field private offset:I

.field private op:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->offset:I

    .line 40
    iput v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->limit:I

    const-string v0, "blacklist"

    .line 43
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static genBlacklistCommandPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/avos/avospush/session/BlacklistCommandPacket;
    .locals 3

    .line 161
    new-instance v0, Lcom/avos/avospush/session/BlacklistCommandPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/BlacklistCommandPacket;-><init>()V

    .line 162
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 163
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setPeerId(Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setConversationId(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setOp(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setLimit(I)V

    .line 168
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setOffset(I)V

    .line 169
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setRequestId(I)V

    return-object v0
.end method

.method public static genBlacklistCommandPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/BlacklistCommandPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/BlacklistCommandPacket;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/avos/avospush/session/BlacklistCommandPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/BlacklistCommandPacket;-><init>()V

    .line 144
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 145
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setPeerId(Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setConversationId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setOp(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setClientIds(Ljava/util/List;)V

    .line 150
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setRequestId(I)V

    if-eqz p4, :cond_1

    .line 152
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setSignature(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setNonce(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/avos/avospush/session/BlacklistCommandPacket;->setTimestamp(J)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected getBlacklistCommand()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 3

    .line 119
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->newBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setSrcCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 121
    iget-object v1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->clientIds:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->clientIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->addAllToPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 125
    :cond_0
    iget v1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->offset:I

    if-lez v1, :cond_1

    .line 126
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setNext(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 128
    :cond_1
    iget v1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->limit:I

    if-lez v1, :cond_2

    .line 129
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setLimit(I)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->signature:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setS(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 133
    invoke-virtual {p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 134
    invoke-virtual {p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setN(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 137
    :cond_3
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->build()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public getClientIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->clientIds:Ljava/util/List;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->op:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/Messages$OpType;->valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 114
    invoke-virtual {p0}, Lcom/avos/avospush/session/BlacklistCommandPacket;->getBlacklistCommand()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setBlacklistMessage(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->limit:I

    return v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->offset:I

    return v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->timestamp:J

    return-wide v0
.end method

.method public setClientIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->clientIds:Ljava/util/List;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->conversationId:Ljava/lang/String;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->limit:I

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->offset:I

    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->op:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->signature:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/avos/avospush/session/BlacklistCommandPacket;->timestamp:J

    return-void
.end method
