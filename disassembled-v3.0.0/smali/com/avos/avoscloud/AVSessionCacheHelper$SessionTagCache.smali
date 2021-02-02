.class Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;
.super Ljava/lang/Object;
.source "AVSessionCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSessionCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionTagCache"
.end annotation


# instance fields
.field private final SESSION_TAG_CACHE_KEY:Ljava/lang/String;

.field cachedTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "session_tag_cache_key"

    .line 32
    iput-object v0, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->SESSION_TAG_CACHE_KEY:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    .line 36
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->syncLocalToMemory(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVSessionCacheHelper$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;-><init>()V

    return-void
.end method

.method private syncLocalToMemory(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "sessionids"

    const-string v2, "session_tag_cache_key"

    const-string v3, "{}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-class v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized syncTagsToLocal(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "sessionids"

    const-string v2, "session_tag_cache_key"

    .line 42
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method addSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->syncTagsToLocal(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method getAllSession()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method removeSession(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->cachedTagMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->syncTagsToLocal(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
