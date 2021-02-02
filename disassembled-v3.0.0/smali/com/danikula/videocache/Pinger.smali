.class Lcom/danikula/videocache/Pinger;
.super Ljava/lang/Object;
.source "Pinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/Pinger$PingCallable;
    }
.end annotation


# static fields
.field private static final PING_REQUEST:Ljava/lang/String; = "ping"

.field private static final PING_RESPONSE:Ljava/lang/String; = "ping ok"


# instance fields
.field private final host:Ljava/lang/String;

.field private final pingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 42
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/danikula/videocache/Pinger;->host:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/danikula/videocache/Pinger;->port:I

    return-void
.end method

.method static synthetic access$100(Lcom/danikula/videocache/Pinger;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->pingServer()Z

    move-result p0

    return p0
.end method

.method private getDefaultProxies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 77
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/net/URI;

    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getPingUrl()Ljava/lang/String;
    .locals 4

    .line 114
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/danikula/videocache/Pinger;->host:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/danikula/videocache/Pinger;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "ping"

    aput-object v3, v1, v2

    const-string v2, "http://%s:%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pingServer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/danikula/videocache/HttpUrlSource;

    invoke-direct {v1, v0}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ping ok"

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 99
    invoke-virtual {v1, v2, v3}, Lcom/danikula/videocache/HttpUrlSource;->open(J)V

    .line 100
    array-length v2, v0

    new-array v2, v2, [B

    .line 101
    invoke-virtual {v1, v2}, Lcom/danikula/videocache/HttpUrlSource;->read([B)I

    .line 102
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ping response: `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`, pinged? "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Error reading ping response"

    .line 106
    invoke-static {v2, v0}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 109
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    return v0

    :goto_0
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    throw v0
.end method


# virtual methods
.method isPingRequest(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ping"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method ping(II)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-static {v2}, Lcom/danikula/videocache/Preconditions;->checkArgument(Z)V

    if-lez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 48
    :goto_1
    invoke-static {v2}, Lcom/danikula/videocache/Preconditions;->checkArgument(Z)V

    move v2, p2

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_3

    .line 54
    :try_start_0
    iget-object v3, p0, Lcom/danikula/videocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/danikula/videocache/Pinger$PingCallable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/danikula/videocache/Pinger$PingCallable;-><init>(Lcom/danikula/videocache/Pinger;Lcom/danikula/videocache/Pinger$1;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    int-to-long v4, v2

    .line 55
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return v1

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_3
    const-string v4, "Error pinging server due to unexpected error"

    .line 62
    invoke-static {v4, v3}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 60
    :catch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error pinging server (attempt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfWarning(Ljava/lang/String;)V

    :cond_2
    :goto_4
    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 67
    :cond_3
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    const/4 p2, 0x2

    div-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {p0}, Lcom/danikula/videocache/Pinger;->getDefaultProxies()Ljava/util/List;

    move-result-object v1

    aput-object v1, v3, p2

    const-string p2, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s"

    .line 67
    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/danikula/videocache/ProxyCacheException;

    invoke-direct {p2, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method responseToPing(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string v0, "HTTP/1.1 200 OK\n\n"

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "ping ok"

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
