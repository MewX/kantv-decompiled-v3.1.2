.class public Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;
.super Lcom/avos/avoscloud/im/v2/AVIMReadonlyConversation;
.source "AVIMServiceConversation.java"


# static fields
.field private static final SUBSCRIBERCOUNT_PATH:Ljava/lang/String; = "rtm/conversation/subscribed"


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMReadonlyConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;->isSystem:Z

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMReadonlyConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;->isSystem:Z

    return-void
.end method


# virtual methods
.method public getSubscriberCount(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;->conversationId:Ljava/lang/String;

    const-string v2, "conv_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v5, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 68
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;

    invoke-direct {v8, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;)V

    sget-object v9, Lcom/avos/avoscloud/AVQuery$CachePolicy;->NETWORK_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const-wide/32 v10, 0x5265c00

    const-string v4, "rtm/conversation/subscribed"

    invoke-virtual/range {v3 .. v11}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    return-void
.end method

.method public subscribe(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;->join(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    return-void
.end method

.method public unsubscribe(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;->quit(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    return-void
.end method
