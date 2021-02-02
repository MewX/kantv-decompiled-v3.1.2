.class public abstract Lcom/avos/avospush/session/CommandPacket;
.super Ljava/lang/Object;
.source "CommandPacket.java"


# static fields
.field public static final UNSUPPORTED_OPERATION:I = -0x10001


# instance fields
.field private appId:Ljava/lang/String;

.field private cmd:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field private requestId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x10001

    .line 18
    iput v0, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericCommand()Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->build()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 55
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->newBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setAppId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/Messages$CommandType;->valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setCmd(Lcom/avos/avoscloud/Messages$CommandType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 61
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setInstallationId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 64
    :cond_1
    iget v1, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    const v2, -0x10001

    if-le v1, v2, :cond_2

    .line 65
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setI(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    :cond_2
    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->build()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->cmd:Ljava/lang/String;

    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->installationId:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    return-void
.end method
