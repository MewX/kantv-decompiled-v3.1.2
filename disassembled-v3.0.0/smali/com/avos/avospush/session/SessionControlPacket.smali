.class public Lcom/avos/avospush/session/SessionControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "SessionControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/SessionControlPacket$SessionControlOp;
    }
.end annotation


# static fields
.field private static final PATCH_FLAG:J = 0x1L

.field private static final PATCH_FLAG_ACK_4_TRANSIENT_MSG:J = 0x8L

.field private static final PATCH_FLAG_BIND_INSTALLATION_TO_SESSION:J = 0x4L

.field private static final PATCH_FLAG_SUPPORT_CONVMEMBER_INFO:J = 0x20L

.field public static final USERAGENT:Ljava/lang/String; = "android/v4.6.4"


# instance fields
.field private lastPatchTime:J

.field private lastUnreadNotifyTime:J

.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private reconnectionRequest:Z

.field private sessionConfig:J

.field private sessionPeerIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sessionToken:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->lastUnreadNotifyTime:J

    .line 72
    iput-wide v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->lastPatchTime:J

    .line 74
    iput-wide v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    const-string v0, "session"

    .line 50
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/SessionControlPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;JJLjava/lang/Integer;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            "JJ",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/avos/avospush/session/SessionControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionControlPacket;-><init>()V

    const-string v1, "open"

    if-eqz p3, :cond_1

    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "add"

    .line 161
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    .line 163
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    .line 164
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    .line 168
    :cond_1
    iput-object p2, v0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    .line 169
    iput-object p1, v0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    .line 170
    iput-wide p4, v0, Lcom/avos/avospush/session/SessionControlPacket;->lastUnreadNotifyTime:J

    .line 171
    iput-wide p6, v0, Lcom/avos/avospush/session/SessionControlPacket;->lastPatchTime:J

    .line 172
    iget-wide p3, v0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    const-wide/16 p5, 0x9

    or-long/2addr p3, p5

    iput-wide p3, v0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    .line 173
    iget-wide p3, v0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    const-wide/16 p5, 0x20

    or-long/2addr p3, p5

    iput-wide p3, v0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    const-string p1, "refresh"

    .line 174
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setPeerId(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 178
    iget-wide p1, v0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    const-wide/16 p3, 0x4

    or-long/2addr p1, p3

    iput-wide p1, v0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    .line 179
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setPeerId(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_3
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_4

    .line 182
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setPeerId(Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-nez p8, :cond_5

    const p0, -0x10001

    .line 186
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    goto :goto_1

    .line 188
    :cond_5
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    :goto_1
    return-object v0
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;Ljava/lang/Integer;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    .line 151
    invoke-static/range {v0 .. v8}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;JJLjava/lang/Integer;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object p0

    return-object p0
.end method

.method private getSessionCommand()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 6

    .line 104
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->newBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->addAllSessionPeerIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android/v4.6.4"

    .line 111
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setUa(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 112
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setTag(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setDeviceId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setS(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 122
    iget-wide v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 123
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setN(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 126
    :cond_4
    iget-boolean v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setR(Z)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 130
    :cond_5
    iget-wide v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->lastUnreadNotifyTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setLastUnreadNotifTime(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 134
    :cond_6
    iget-wide v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->lastPatchTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setLastPatchTime(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 138
    :cond_7
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 139
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setSt(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 142
    :cond_8
    iget-wide v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionConfig:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_9

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setConfigBitmap(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 146
    :cond_9
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->build()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/Messages$OpType;->valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 99
    invoke-direct {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getSessionCommand()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setSessionMessage(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public isReconnectionRequest()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    return v0
.end method

.method public setReconnectionRequest(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->tag:Ljava/lang/String;

    return-void
.end method
