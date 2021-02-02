.class Lcom/danikula/videocache/ProxyCache;
.super Ljava/lang/Object;
.source "ProxyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/ProxyCache$SourceReaderRunnable;
    }
.end annotation


# static fields
.field private static final MAX_READ_SOURCE_ATTEMPTS:I = 0x1


# instance fields
.field private final cache:Lcom/danikula/videocache/Cache;

.field private volatile percentsAvailable:I

.field private final readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final source:Lcom/danikula/videocache/Source;

.field private volatile sourceReaderThread:Ljava/lang/Thread;

.field private final stopLock:Ljava/lang/Object;

.field private volatile stopped:Z

.field private final wc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/Source;Lcom/danikula/videocache/Cache;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/ProxyCache;->wc:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/danikula/videocache/ProxyCache;->percentsAvailable:I

    .line 31
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/Source;

    iput-object p1, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    .line 32
    invoke-static {p2}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/danikula/videocache/Cache;

    iput-object p1, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$100(Lcom/danikula/videocache/ProxyCache;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->readSource()V

    return-void
.end method

.method private checkReadSourceErrorsCount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 56
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSource()V
    .locals 4

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    invoke-interface {v0}, Lcom/danikula/videocache/Source;->close()V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/danikula/videocache/ProxyCache;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private isStopped()Z
    .locals 1

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/danikula/videocache/ProxyCache;->stopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyNewCacheDataAvailable(JJ)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/danikula/videocache/ProxyCache;->onCacheAvailable(JJ)V

    .line 95
    iget-object p1, p0, Lcom/danikula/videocache/ProxyCache;->wc:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_0
    iget-object p2, p0, Lcom/danikula/videocache/ProxyCache;->wc:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private onSourceRead()V
    .locals 1

    const/16 v0, 0x64

    .line 146
    iput v0, p0, Lcom/danikula/videocache/ProxyCache;->percentsAvailable:I

    .line 147
    iget v0, p0, Lcom/danikula/videocache/ProxyCache;->percentsAvailable:I

    invoke-virtual {p0, v0}, Lcom/danikula/videocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    return-void
.end method

.method private readSource()V
    .locals 8

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v4}, Lcom/danikula/videocache/Cache;->available()J

    move-result-wide v2

    .line 119
    iget-object v4, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    invoke-interface {v4, v2, v3}, Lcom/danikula/videocache/Source;->open(J)V

    .line 120
    iget-object v4, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    invoke-interface {v4}, Lcom/danikula/videocache/Source;->length()J

    move-result-wide v0

    const/high16 v4, 0x800000

    .line 121
    new-array v4, v4, [B

    .line 123
    :goto_0
    iget-object v5, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    invoke-interface {v5, v4}, Lcom/danikula/videocache/Source;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 124
    iget-object v6, p0, Lcom/danikula/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 126
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->closeSource()V

    .line 140
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    return-void

    .line 128
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v7, v4, v5}, Lcom/danikula/videocache/Cache;->append([BI)V

    .line 129
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 131
    :try_start_3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 129
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->tryComplete()V

    .line 134
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->onSourceRead()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    .line 136
    :try_start_6
    iget-object v5, p0, Lcom/danikula/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 137
    invoke-virtual {p0, v4}, Lcom/danikula/videocache/ProxyCache;->onError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 139
    :goto_1
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->closeSource()V

    .line 140
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    return-void

    .line 139
    :goto_2
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->closeSource()V

    .line 140
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    goto :goto_4

    :goto_3
    throw v4

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized readSourceAsync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    iget-boolean v1, p0, Lcom/danikula/videocache/ProxyCache;->stopped:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v1}, Lcom/danikula/videocache/Cache;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/danikula/videocache/ProxyCache$SourceReaderRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/danikula/videocache/ProxyCache$SourceReaderRunnable;-><init>(Lcom/danikula/videocache/ProxyCache;Lcom/danikula/videocache/ProxyCache$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source reader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/danikula/videocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    .line 78
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryComplete()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v1}, Lcom/danikula/videocache/Cache;->available()J

    move-result-wide v1

    iget-object v3, p0, Lcom/danikula/videocache/ProxyCache;->source:Lcom/danikula/videocache/Source;

    invoke-interface {v3}, Lcom/danikula/videocache/Source;->length()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 153
    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v1}, Lcom/danikula/videocache/Cache;->complete()V

    .line 155
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForSourceData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->wc:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->wc:Ljava/lang/Object;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 87
    new-instance v2, Lcom/danikula/videocache/ProxyCacheException;

    const-string v3, "Waiting source data is interrupted!"

    invoke-direct {v2, v3, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected onCacheAvailable(JJ)V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p3, v0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const/16 p1, 0x64

    goto :goto_1

    :cond_1
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 103
    :goto_1
    iget p2, p0, Lcom/danikula/videocache/ProxyCache;->percentsAvailable:I

    if-eq p1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    cmp-long v4, p3, v0

    if-ltz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 106
    invoke-virtual {p0, p1}, Lcom/danikula/videocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    .line 108
    :cond_4
    iput p1, p0, Lcom/danikula/videocache/ProxyCache;->percentsAvailable:I

    return-void
.end method

.method protected onCachePercentsAvailableChanged(I)V
    .locals 0

    return-void
.end method

.method protected final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 171
    instance-of v0, p1, Lcom/danikula/videocache/InterruptedProxyCacheException;

    if-eqz v0, :cond_0

    const-string p1, "ProxyCache is interrupted"

    .line 173
    invoke-static {p1}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfLog(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProxyCache error"

    invoke-static {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public read([BJI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 37
    invoke-static {p1, p2, p3, p4}, Lcom/danikula/videocache/ProxyCacheUtils;->assertBuffer([BJI)V

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v0}, Lcom/danikula/videocache/Cache;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v0}, Lcom/danikula/videocache/Cache;->available()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-boolean v0, p0, Lcom/danikula/videocache/ProxyCache;->stopped:Z

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->readSourceAsync()V

    .line 41
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->waitForSourceData()V

    .line 42
    invoke-direct {p0}, Lcom/danikula/videocache/ProxyCache;->checkReadSourceErrorsCount()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/danikula/videocache/Cache;->read([BJI)I

    move-result p1

    .line 45
    iget-object p2, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {p2}, Lcom/danikula/videocache/Cache;->isCompleted()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/danikula/videocache/ProxyCache;->percentsAvailable:I

    const/16 p3, 0x64

    if-eq p2, p3, :cond_1

    .line 46
    iput p3, p0, Lcom/danikula/videocache/ProxyCache;->percentsAvailable:I

    .line 47
    invoke-virtual {p0, p3}, Lcom/danikula/videocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    :cond_1
    return p1
.end method

.method public shutdown()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/danikula/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 63
    :try_start_0
    iput-boolean v1, p0, Lcom/danikula/videocache/ProxyCache;->stopped:Z

    .line 64
    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/danikula/videocache/ProxyCache;->cache:Lcom/danikula/videocache/Cache;

    invoke-interface {v1}, Lcom/danikula/videocache/Cache;->close()V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 69
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/danikula/videocache/ProxyCache;->onError(Ljava/lang/Throwable;)V

    .line 71
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
