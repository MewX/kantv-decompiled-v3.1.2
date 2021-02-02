.class public Lcom/avos/avospush/session/ConversationQueryPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationQueryPacket.java"


# instance fields
.field queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const-string v0, "conv"

    .line 16
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationQueryPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static getConversationQueryPacket(Ljava/lang/String;Ljava/util/Map;I)Lcom/avos/avospush/session/ConversationQueryPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Lcom/avos/avospush/session/ConversationQueryPacket;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/avos/avospush/session/ConversationQueryPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationQueryPacket;-><init>()V

    .line 82
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 84
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationQueryPacket;->setPeerId(Ljava/lang/String;)V

    .line 86
    :cond_0
    iput-object p1, v0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    .line 87
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationQueryPacket;->setRequestId(I)V

    return-object v0
.end method


# virtual methods
.method protected getConvCommand()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 4

    .line 28
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->newBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 31
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    const-string v2, "temp_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->addTempConvIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    const-string v2, "order"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setSort(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    const-string v2, "skip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setSkip(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    const-string v2, "limit"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setLimit(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    const-string v2, "where"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 53
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 55
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setWhere(Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    :cond_4
    const/4 v1, 0x0

    .line 59
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    const-string v3, "last_message"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    .line 66
    :cond_5
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->queryParams:Ljava/util/Map;

    const-string v3, "compact"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    or-int/lit8 v1, v1, 0x1

    :cond_6
    if-lez v1, :cond_7

    .line 74
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setFlag(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 77
    :cond_7
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 21
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationQueryPacket;->getConvCommand()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setConvMessage(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    const-string v1, "query"

    .line 23
    invoke-static {v1}, Lcom/avos/avoscloud/Messages$OpType;->valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method
