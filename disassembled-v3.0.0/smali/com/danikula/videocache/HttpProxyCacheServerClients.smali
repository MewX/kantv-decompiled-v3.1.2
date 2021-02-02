.class final Lcom/danikula/videocache/HttpProxyCacheServerClients;
.super Ljava/lang/Object;
.source "HttpProxyCacheServerClients.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/HttpProxyCacheServerClients$UiListenerHandler;
    }
.end annotation


# instance fields
.field private final clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final config:Lcom/danikula/videocache/Config;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/danikula/videocache/CacheListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile proxyCache:Lcom/danikula/videocache/HttpProxyCache;

.field private final uiCacheListener:Lcom/danikula/videocache/CacheListener;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/Config;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/danikula/videocache/Config;

    iput-object p2, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->config:Lcom/danikula/videocache/Config;

    .line 35
    new-instance p2, Lcom/danikula/videocache/HttpProxyCacheServerClients$UiListenerHandler;

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lcom/danikula/videocache/HttpProxyCacheServerClients$UiListenerHandler;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->uiCacheListener:Lcom/danikula/videocache/CacheListener;

    return-void
.end method

.method private declared-synchronized finishProcessRequest()V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCache;->shutdown()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private newHttpProxyCache()Lcom/danikula/videocache/HttpProxyCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/danikula/videocache/HttpUrlSource;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->config:Lcom/danikula/videocache/Config;

    iget-object v2, v2, Lcom/danikula/videocache/Config;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->config:Lcom/danikula/videocache/Config;

    iget-object v3, v3, Lcom/danikula/videocache/Config;->headerInjector:Lcom/danikula/videocache/headers/HeaderInjector;

    invoke-direct {v0, v1, v2, v3}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;Lcom/danikula/videocache/headers/HeaderInjector;)V

    .line 83
    new-instance v1, Lcom/danikula/videocache/file/FileCache;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->config:Lcom/danikula/videocache/Config;

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/danikula/videocache/Config;->generateCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->config:Lcom/danikula/videocache/Config;

    iget-object v3, v3, Lcom/danikula/videocache/Config;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    invoke-direct {v1, v2, v3}, Lcom/danikula/videocache/file/FileCache;-><init>(Ljava/io/File;Lcom/danikula/videocache/file/DiskUsage;)V

    .line 84
    new-instance v2, Lcom/danikula/videocache/HttpProxyCache;

    invoke-direct {v2, v0, v1}, Lcom/danikula/videocache/HttpProxyCache;-><init>(Lcom/danikula/videocache/HttpUrlSource;Lcom/danikula/videocache/file/FileCache;)V

    .line 85
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->uiCacheListener:Lcom/danikula/videocache/CacheListener;

    invoke-virtual {v2, v0}, Lcom/danikula/videocache/HttpProxyCache;->registerCacheListener(Lcom/danikula/videocache/CacheListener;)V

    return-object v2
.end method

.method private declared-synchronized startProcessRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->newHttpProxyCache()Lcom/danikula/videocache/HttpProxyCache;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    :goto_0
    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getClientsCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public processRequest(Lcom/danikula/videocache/GetRequest;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->startProcessRequest()V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    invoke-virtual {v0, p1, p2}, Lcom/danikula/videocache/HttpProxyCache;->processRequest(Lcom/danikula/videocache/GetRequest;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->finishProcessRequest()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServerClients;->finishProcessRequest()V

    throw p1
.end method

.method public registerCacheListener(Lcom/danikula/videocache/CacheListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/danikula/videocache/HttpProxyCache;->registerCacheListener(Lcom/danikula/videocache/CacheListener;)V

    .line 71
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCache;->shutdown()V

    .line 72
    iput-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->proxyCache:Lcom/danikula/videocache/HttpProxyCache;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public unregisterCacheListener(Lcom/danikula/videocache/CacheListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
