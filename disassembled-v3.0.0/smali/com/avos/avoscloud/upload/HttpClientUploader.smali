.class public abstract Lcom/avos/avoscloud/upload/HttpClientUploader;
.super Ljava/lang/Object;
.source "HttpClientUploader.java"

# interfaces
.implements Lcom/avos/avoscloud/upload/Uploader;


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field protected static final DEFAULT_RETRY_TIMES:I = 0x6

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_POOL_SIZE:I

.field private static client:Lokhttp3/OkHttpClient;

.field static executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field protected avFile:Lcom/avos/avoscloud/AVFile;

.field private volatile cancelled:Z

.field protected finalObjectId:Ljava/lang/String;

.field protected finalUrl:Ljava/lang/String;

.field private volatile future:Ljava/util/concurrent/Future;

.field progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field saveCallback:Lcom/avos/avoscloud/SaveCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/avos/avoscloud/upload/HttpClientUploader;->CPU_COUNT:I

    .line 50
    sget v0, Lcom/avos/avoscloud/upload/HttpClientUploader;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/avos/avoscloud/upload/HttpClientUploader;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 51
    sput v0, Lcom/avos/avoscloud/upload/HttpClientUploader;->MAX_POOL_SIZE:I

    .line 56
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/avos/avoscloud/upload/HttpClientUploader;->CORE_POOL_SIZE:I

    sget v4, Lcom/avos/avoscloud/upload/HttpClientUploader;->MAX_POOL_SIZE:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/avos/avoscloud/upload/HttpClientUploader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 65
    sget-object v0, Lcom/avos/avoscloud/upload/HttpClientUploader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->finalUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->finalObjectId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->cancelled:Z

    .line 35
    iput-object p1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    .line 36
    iput-object p2, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    .line 37
    iput-object p3, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 38
    iput-boolean v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->cancelled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/upload/HttpClientUploader;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->cancelled:Z

    return p0
.end method

.method protected static declared-synchronized getOKHttpClient()Lokhttp3/OkHttpClient;
    .locals 5

    const-class v0, Lcom/avos/avoscloud/upload/HttpClientUploader;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/upload/HttpClientUploader;->client:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVHttpClient;->getOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x1e

    .line 72
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 74
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/avos/avoscloud/upload/HttpClientUploader;->client:Lokhttp3/OkHttpClient;

    .line 76
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/upload/HttpClientUploader;->client:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .line 141
    iget-boolean v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->cancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->cancelled:Z

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/avos/avoscloud/upload/HttpClientUploader;->interruptImmediately()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->future:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->future:Ljava/util/concurrent/Future;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public execute()V
    .locals 2

    .line 106
    new-instance v0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/upload/HttpClientUploader$1;-><init>(Lcom/avos/avoscloud/upload/HttpClientUploader;)V

    .line 123
    sget-object v1, Lcom/avos/avoscloud/upload/HttpClientUploader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method protected executeWithRetry(Lokhttp3/Request;I)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    if-lez p2, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/avos/avoscloud/upload/HttpClientUploader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/upload/HttpClientUploader;->getOKHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, p2, -0x1

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/upload/HttpClientUploader;->executeWithRetry(Lokhttp3/Request;I)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 p2, p2, -0x1

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/upload/HttpClientUploader;->executeWithRetry(Lokhttp3/Request;I)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 95
    :cond_2
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/4 p2, -0x1

    const-string v0, "Upload File failure"

    invoke-direct {p1, p2, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getFinalObjectId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->finalObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public interruptImmediately()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->cancelled:Z

    return v0
.end method

.method public publishProgress(I)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public setFinalObjectId(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->finalObjectId:Ljava/lang/String;

    return-void
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader;->finalUrl:Ljava/lang/String;

    return-void
.end method
