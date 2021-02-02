.class public Lcom/avos/avospush/session/LiveQueryLoginPacket;
.super Lcom/avos/avospush/session/LoginPacket;
.source "LiveQueryLoginPacket.java"


# static fields
.field public static final SERVICE_LIVE_QUERY:I = 0x1

.field public static final SERVICE_PUSH:I


# instance fields
.field private subscribeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/avos/avospush/session/LoginPacket;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/avos/avospush/session/LoginPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/avos/avospush/session/LiveQueryLoginPacket;->subscribeId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/avos/avospush/session/LiveQueryLoginPacket;->subscribeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setInstallationId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setService(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    :cond_0
    return-object v0
.end method

.method public setSubscribeId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/avos/avospush/session/LiveQueryLoginPacket;->subscribeId:Ljava/lang/String;

    return-void
.end method
