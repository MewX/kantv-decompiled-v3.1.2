.class Lcom/avos/avoscloud/PendingMessageCache;
.super Ljava/lang/Object;
.source "PendingMessageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PendingMessageCache$Message;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/avos/avospush/session/MessageQueue$HasId;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private messages:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private msgMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    invoke-direct {v0, p1, p2}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    .line 17
    invoke-direct {p0}, Lcom/avos/avoscloud/PendingMessageCache;->setupMapping()V

    return-void
.end method

.method private setupMapping()V
    .locals 4

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    .line 22
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avospush/session/MessageQueue$HasId;

    .line 23
    invoke-interface {v1}, Lcom/avos/avospush/session/MessageQueue$HasId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {v1}, Lcom/avos/avospush/session/MessageQueue$HasId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->clear()V

    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Lcom/avos/avospush/session/MessageQueue$HasId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {p1}, Lcom/avos/avospush/session/MessageQueue$HasId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/MessageQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method poll()Lcom/avos/avospush/session/MessageQueue$HasId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avospush/session/MessageQueue$HasId;

    return-object v0
.end method

.method poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->msgMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avospush/session/MessageQueue$HasId;

    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache;->messages:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/MessageQueue;->remove(Ljava/lang/Object;)Z

    return-object p1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PendingMessageCache;->poll()Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object p1

    return-object p1
.end method
