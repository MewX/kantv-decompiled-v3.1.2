.class public Lcom/avos/avospush/session/PeerBasedCommandPacket;
.super Lcom/avos/avospush/session/CommandPacket;
.source "PeerBasedCommandPacket.java"


# instance fields
.field private peerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/avos/avospush/session/CommandPacket;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/avos/avospush/session/CommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getPeerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setPeerId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    :cond_0
    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/avos/avospush/session/PeerBasedCommandPacket;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public setPeerId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/avos/avospush/session/PeerBasedCommandPacket;->peerId:Ljava/lang/String;

    return-void
.end method
