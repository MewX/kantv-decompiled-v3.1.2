.class public Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
.super Ljava/lang/Object;
.source "AVIMConversationsQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$CacheConversationQueryCallback;
    }
.end annotation


# static fields
.field private static final MAX_CONVERSATION_CACHE_TIME:J = 0x36ee80L


# instance fields
.field private client:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

.field private maxAge:J

.field policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const-wide/32 v0, 0x36ee80

    .line 40
    iput-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->maxAge:J

    .line 43
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 44
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-direct {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;-><init>()V

    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->cacheQueryResult(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private cacheQueryResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;)V"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 563
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 564
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v3, v3, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 568
    invoke-virtual {v3, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    .line 570
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object p2

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v2}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static or(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 643
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 646
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 647
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    .line 648
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    .line 649
    iget-object v3, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    iget-object v4, v2, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    new-instance v4, Lcom/avos/avoscloud/QueryOperation;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    .line 653
    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v2

    const-string v5, "$or"

    invoke-direct {v4, v5, v5, v2}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)V

    goto :goto_0

    .line 650
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "All queries must be for the same client"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v1

    .line 644
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Queries cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation

    .line 574
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 575
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 576
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 577
    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-static {v4, v3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->parseFromJson(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 579
    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {v5, v4, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->mergeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;ZLcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 581
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V
    .locals 3

    .line 507
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 509
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x64

    const-string v2, "Connection lost"

    invoke-direct {p2, v0, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 517
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    .line 556
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p1, p2, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->addAscendingOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->addDescendingOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method public containsMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    const-string v1, "m"

    const-string v2, "$all"

    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public findInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 12

    .line 473
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    .line 474
    sget-object v1, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$3;->$SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy:[I

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 500
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :pswitch_1
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v3

    iget-wide v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->maxAge:J

    const/4 v7, 0x0

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$CacheConversationQueryCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {v8, v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$CacheConversationQueryCallback;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 487
    :pswitch_2
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v3

    iget-wide v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->maxAge:J

    const/4 v7, 0x0

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$CacheConversationQueryCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {v8, v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$CacheConversationQueryCallback;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 478
    :pswitch_3
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v1

    iget-wide v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->maxAge:J

    const/4 v2, 0x0

    new-instance v11, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-object v3, v11

    move-object v4, p0

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    move-wide v5, v9

    move-object v7, v2

    move-object v8, v11

    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheMaxAge()J
    .locals 4

    .line 667
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->maxAge:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isWithLastMessagesRefreshed()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isWithLastMessagesRefreshed()Z

    move-result v0

    return v0
.end method

.method public limit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->setLimit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    move-result-object p1

    return-object p1
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->orderByAscending(Ljava/lang/String;)V

    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->orderByDescending(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCacheMaxAge(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 663
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->maxAge:J

    return-void
.end method

.method public setLimit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->setLimit(I)V

    return-object p0
.end method

.method public setQueryPolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-void
.end method

.method public setSkip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->setSkip(I)V

    return-object p0
.end method

.method public setWithLastMessagesRefreshed(Z)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->setWithLastMessagesRefreshed(Z)V

    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 0

    .line 392
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->setSkip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    move-result-object p1

    return-object p1
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereContainsIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereDoesNotExist(Ljava/lang/String;)V

    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereExists(Ljava/lang/String;)V

    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereGreaterThanOrEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereLessThanOrEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    return-object p0
.end method

.method public whereNotContainsIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereNotEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->conditions:Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public withMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->withMembers(Ljava/util/List;Z)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    move-result-object p1

    return-object p1
.end method

.method public withMembers(Ljava/util/List;Z)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    .line 67
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->containsMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    const-string p2, "m"

    invoke-virtual {p0, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    return-object p0
.end method
