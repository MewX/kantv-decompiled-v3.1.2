.class Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMConversationQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheConversationQueryCallback"
.end annotation


# instance fields
.field callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

.field client:Lcom/avos/avoscloud/im/v2/AVIMClient;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 0

    .line 625
    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    .line 626
    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    .line 627
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 654
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 632
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 634
    :try_start_0
    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 635
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object p2, p2, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    .line 636
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getCachedConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 637
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x78

    const-string p2, "Cache Missing"

    .line 638
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 645
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 648
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_1
    return-void
.end method
