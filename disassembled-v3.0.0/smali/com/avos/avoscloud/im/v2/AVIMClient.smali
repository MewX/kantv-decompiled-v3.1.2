.class public Lcom/avos/avoscloud/im/v2/AVIMClient;
.super Ljava/lang/Object;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    }
.end annotation


# static fields
.field private static REALTIME_TOKEN_WINDOW_INSECOND:I

.field static clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

.field static clients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ">;"
        }
    .end annotation
.end field

.field private static isAutoOpen:Z

.field static messageQueryCacheEnabled:Z


# instance fields
.field clientId:Ljava/lang/String;

.field private conversationCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation
.end field

.field volatile isConversationSync:Z

.field private realtimeSessionToken:Ljava/lang/String;

.field private realtimeSessionTokenExpired:J

.field storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

.field private tag:Ljava/lang/String;

.field private userSessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen:Z

    const/16 v1, 0x12c

    .line 66
    sput v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->REALTIME_TOKEN_WINDOW_INSECOND:I

    .line 987
    sput-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->isConversationSync:Z

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->realtimeSessionToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->realtimeSessionTokenExpired:J

    .line 117
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->queryConvMemberThroughNetwork(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZZILcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZZI",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    move-object v1, p3

    move-object/from16 v3, p8

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "Null id in session id list."

    .line 427
    invoke-static {p1, v4}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v7, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 439
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "name"

    move-object v4, p2

    .line 440
    invoke-virtual {v7, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 444
    iget-object v0, v8, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    iget-object v0, v8, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "conversation.member"

    .line 448
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "conversation.unique"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "conversation.transient"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "conversation.temp"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_3

    .line 453
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "conversation.tempTTL"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    .line 456
    invoke-static {v7, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processAttributes(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "conversation.attributes"

    .line 458
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v3, :cond_5

    .line 464
    new-instance v9, Lcom/avos/avoscloud/im/v2/AVIMClient$3;

    move-object v1, v9

    move-object v2, p0

    move-object/from16 v3, p8

    move v4, p4

    move/from16 v5, p6

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMClient$3;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;ZZLjava/util/List;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_5
    move-object v9, v2

    .line 489
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v0, v9, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void

    :catch_0
    move-exception v0

    if-eqz v3, :cond_6

    .line 430
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_6
    return-void
.end method

.method private createServiceConversation(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .line 376
    new-instance p1, Lcom/avos/avoscloud/AVRuntimeException;

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const-string p3, "can\'t invoke createServiceConversation within SDK."

    invoke-direct {p1, p3, p2}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
    .locals 1

    .line 698
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    return-object v0
.end method

.method public static getClientsCount()I
    .locals 1

    .line 150
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method private getConversation(Ljava/lang/String;ZZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->isConversationSync:Z

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->syncConversationCache()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    if-eqz v0, :cond_1

    return-object v0

    .line 592
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "conversationId is null"

    .line 593
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-eqz p4, :cond_3

    .line 598
    new-instance p2, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;

    invoke-direct {p2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_6

    const-string p3, "_tmp:"

    .line 599
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 602
    new-instance p2, Lcom/avos/avoscloud/im/v2/AVIMChatRoom;

    invoke-direct {p2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMChatRoom;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_1

    .line 604
    :cond_5
    new-instance p2, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-direct {p2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_1

    .line 600
    :cond_6
    :goto_0
    new-instance p2, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;

    invoke-direct {p2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 606
    :goto_1
    iget-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 607
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    if-nez p1, :cond_7

    move-object p1, p2

    :cond_7
    return-object p1
.end method

.method public static getDefaultClient()Ljava/lang/String;
    .locals 2

    .line 160
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getInstance(Lcom/avos/avoscloud/AVUser;)Lcom/avos/avoscloud/im/v2/AVIMClient;
    .locals 2

    if-eqz p0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 196
    iput-object p0, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->userSessionToken:Ljava/lang/String;

    return-object v0

    .line 192
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "user must login first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "user cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;
    .locals 0

    .line 207
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Lcom/avos/avoscloud/AVUser;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object p0

    .line 208
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;
    .locals 2

    .line 129
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    if-eqz v0, :cond_0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "clientId cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;
    .locals 0

    .line 174
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object p0

    .line 175
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->tag:Ljava/lang/String;

    return-object p0
.end method

.method private getTemporaryConversationQuery()Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 2

    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "only conversationId query is allowed, please invoke #getTemporaryConversaton with conversationId."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAutoOpen()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen:Z

    return v0
.end method

.method private processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 811
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 814
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 815
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVResponse;

    .line 817
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 818
    iget-object p1, p1, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 819
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 820
    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->createInstance(Ljava/util/Map;)Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;

    move-result-object v3

    .line 821
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private queryConvMemberThroughNetwork(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
    .locals 10

    const-string v0, "_ConversationMemberInfo"

    .line 774
    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual {p1}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 777
    invoke-virtual {p1}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object p1

    .line 778
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    const-string v1, "client_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    new-instance v3, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v3, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 781
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 782
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getRealtimeSessionToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-LC-IM-Session-Token"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v6, Lcom/avos/avoscloud/im/v2/AVIMClient$6;

    invoke-direct {v6, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient$6;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V

    sget-object v7, Lcom/avos/avoscloud/AVQuery$CachePolicy;->NETWORK_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v4, 0x0

    const-wide/32 v8, 0x5265c00

    invoke-virtual/range {v1 .. v9}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    return-void
.end method

.method private querySubscribedServiceConversations(ILcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 668
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->querySubscribedServiceConversations(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    return-void
.end method

.method private querySubscribedServiceConversations(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 0

    return-void
.end method

.method public static setAutoOpen(Z)V
    .locals 0

    .line 100
    sput-boolean p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen:Z

    return-void
.end method

.method public static setClientEventHandler(Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;)V
    .locals 0

    .line 694
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    return-void
.end method

.method public static setMessageQueryCacheEnable(Z)V
    .locals 0

    .line 995
    sput-boolean p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    return-void
.end method

.method public static setOfflineMessagePush(Z)V
    .locals 0

    .line 707
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->setUnreadNotificationEnabled(Z)V

    return-void
.end method

.method public static setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V

    return-void
.end method

.method public static setTimeoutInSecs(I)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->setTimeoutInSecs(I)V

    return-void
.end method

.method public static setUnreadNotificationEnabled(Z)V
    .locals 0

    .line 716
    invoke-static {p0}, Lcom/avos/avoscloud/AVSession;->setUnreadNotificationEnabled(Z)V

    return-void
.end method

.method private syncConversationCache()V
    .locals 4

    .line 943
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getAllCachedConversations()Ljava/util/List;

    move-result-object v0

    .line 944
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 945
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->isConversationSync:Z

    return-void
.end method

.method static validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVException;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 927
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "Null id in session id list."

    .line 932
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 934
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 928
    :cond_1
    :goto_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x3e7

    const-string v1, "Conversation can\'t be created with empty members"

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected close()V
    .locals 2

    .line 743
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 745
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->deleteClientData()V

    return-void
.end method

.method public close(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 728
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMClient$4;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$4;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 736
    :goto_0
    sget-object p1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method public createChatRoom(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 361
    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 329
    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 343
    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    .line 420
    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZZILcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    return-void
.end method

.method public createTemporaryConversation(Ljava/util/List;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    .line 401
    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZZILcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    return-void
.end method

.method public createTemporaryConversation(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    const v0, 0x3f480

    .line 388
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createTemporaryConversation(Ljava/util/List;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 980
    :cond_0
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 981
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 982
    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 984
    :cond_2
    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChatRoom(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 546
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;ZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    return-object p1
.end method

.method public getChatRoomQuery()Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 3

    .line 656
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    const/4 v1, 0x1

    .line 657
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "tr"

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientStatus(Lcom/avos/avoscloud/im/v2/callback/AVIMClientStatusCallback;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 872
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMClient$7;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$7;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 886
    :goto_0
    sget-object p1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method public getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 2

    .line 501
    invoke-static {p1}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "_tmp:"

    .line 504
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;ZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    return-object p1
.end method

.method public getConversation(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 532
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getTemporaryConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getServiceConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getChatRoom(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getConversation(Ljava/lang/String;ZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 1

    const/4 v0, 0x0

    .line 581
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;ZZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    return-object p1
.end method

.method public getConversationsQuery()Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 627
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-object v0
.end method

.method public getOnlineClients(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;",
            ")V"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "client.oneline"

    .line 274
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 279
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMClient$2;

    invoke-direct {p1, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 292
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, p2, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method public getQuery()Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1

    .line 619
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-object v0
.end method

.method public getRealtimeSessionToken()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->realtimeSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 557
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;ZZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    return-object p1
.end method

.method public getServiceConversationQuery()Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 3

    .line 636
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    const/4 v1, 0x1

    .line 637
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sys"

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .line 69
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    return-object v0
.end method

.method public getTemporaryConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 568
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;ZZ)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    return-object p1
.end method

.method mergeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;ZLcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 1

    if-eqz p1, :cond_3

    .line 955
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 958
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 960
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 963
    :cond_1
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    if-nez p2, :cond_2

    .line 965
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 969
    :cond_2
    invoke-static {p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateConversation(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public open(Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
    .locals 2

    .line 243
    new-instance v0, Lcom/avos/avoscloud/AVIMClientParcel;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVIMClientParcel;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMClientParcel;->setClientTag(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->userSessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMClientParcel;->setSessionToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isReconnect()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVIMClientParcel;->setReconnection(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 249
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVIMClientParcel;->setReconnection(Z)V

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 254
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMClient$1;

    invoke-direct {p1, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 261
    :cond_1
    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCommand(Lcom/avos/avoscloud/AVIMClientParcel;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method public open(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->open(Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V

    return-void
.end method

.method queryConversationMemberInfo(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->realtimeSessionTokenExpired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->queryConvMemberThroughNetwork(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V

    goto :goto_0

    :cond_1
    const-string v0, "realtime session token expired, start to refresh..."

    .line 756
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 758
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$5;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;Lcom/avos/avoscloud/QueryConditions;)V

    .line 769
    sget-object p1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_REFRESH_TOKEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method realtimeSessionTokenExpired()Z
    .locals 5

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 223
    sget v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->REALTIME_TOKEN_WINDOW_INSECOND:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->realtimeSessionTokenExpired:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 5

    .line 908
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    if-eqz p2, :cond_0

    .line 911
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1, p2, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 914
    :cond_0
    new-instance p2, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.avoscloud.im.v2.action"

    .line 915
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "conversation.data"

    .line 917
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    const-string v1, "conversation.client"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "conversation.requestId"

    .line 921
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 922
    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    const-string p3, "conversation.operation"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 923
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected sendClientCommand(Lcom/avos/avoscloud/AVIMClientParcel;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 5

    .line 890
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    if-eqz p2, :cond_0

    .line 893
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v1, p2, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 896
    :cond_0
    new-instance p2, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.avoscloud.im.v2.action"

    .line 897
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "conversation.client.parcel"

    .line 898
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 899
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    const-string v1, "conversation.client"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "conversation.requestId"

    .line 900
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    const-string p3, "conversation.operation"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public updateRealtimeSessionToken(Ljava/lang/String;J)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->realtimeSessionToken:Ljava/lang/String;

    .line 214
    iput-wide p2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->realtimeSessionTokenExpired:J

    return-void
.end method
