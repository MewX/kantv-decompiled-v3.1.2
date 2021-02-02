.class public Lcom/avos/avospush/session/LoginPacket;
.super Lcom/avos/avospush/session/CommandPacket;
.source "LoginPacket.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/avos/avospush/session/CommandPacket;-><init>()V

    const-string v0, "login"

    .line 11
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/LoginPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 16
    invoke-super {p0}, Lcom/avos/avospush/session/CommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->login:Lcom/avos/avoscloud/Messages$CommandType;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setCmd(Lcom/avos/avoscloud/Messages$CommandType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method
