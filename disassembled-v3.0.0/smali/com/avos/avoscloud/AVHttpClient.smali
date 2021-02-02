.class public Lcom/avos/avoscloud/AVHttpClient;
.super Ljava/lang/Object;
.source "AVHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVHttpClient$ProgressListener;,
        Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;,
        Lcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;,
        Lcom/avos/avoscloud/AVHttpClient$RequestStatisticInterceptor;
    }
.end annotation


# static fields
.field public static final JSON:Lokhttp3/MediaType;

.field private static avHttpClient:Lcom/avos/avoscloud/AVHttpClient;


# instance fields
.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json"

    .line 26
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVHttpClient;->JSON:Lokhttp3/MediaType;

    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;ILcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 37
    invoke-static {}, Lcom/avos/avoscloud/DNSAmendNetwork;->getInstance()Lcom/avos/avoscloud/DNSAmendNetwork;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 38
    new-instance v0, Lcom/avos/avoscloud/AVHttpClient$RequestStatisticInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVHttpClient$RequestStatisticInterceptor;-><init>(Lcom/avos/avoscloud/AVHttpClient$1;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :goto_0
    int-to-long v0, p2

    .line 40
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 44
    :cond_1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/AVHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static declared-synchronized clientInstance()Lcom/avos/avoscloud/AVHttpClient;
    .locals 4

    const-class v0, Lcom/avos/avoscloud/AVHttpClient;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/avos/avoscloud/AVHttpClient;

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/avos/avoscloud/AVHttpClient;-><init>(Lokhttp3/OkHttpClient;ILcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;)V

    sput-object v1, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    .line 51
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized newClientInstance(I)Lcom/avos/avoscloud/AVHttpClient;
    .locals 4

    const-class v0, Lcom/avos/avoscloud/AVHttpClient;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/avos/avoscloud/AVHttpClient;

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v3

    invoke-direct {v1, v2, v3, v2}, Lcom/avos/avoscloud/AVHttpClient;-><init>(Lokhttp3/OkHttpClient;ILcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;)V

    sput-object v1, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    .line 72
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVHttpClient;

    sget-object v3, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    iget-object v3, v3, Lcom/avos/avoscloud/AVHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v1, v3, p0, v2}, Lcom/avos/avoscloud/AVHttpClient;-><init>(Lokhttp3/OkHttpClient;ILcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized progressClientInstance(Lcom/avos/avoscloud/AVHttpClient$ProgressListener;)Lcom/avos/avoscloud/AVHttpClient;
    .locals 4

    const-class v0, Lcom/avos/avoscloud/AVHttpClient;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/avos/avoscloud/AVHttpClient;

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/avos/avoscloud/AVHttpClient;-><init>(Lokhttp3/OkHttpClient;ILcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;)V

    sput-object v1, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    .line 59
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;-><init>(Lcom/avos/avoscloud/AVHttpClient$ProgressListener;)V

    .line 60
    new-instance p0, Lcom/avos/avoscloud/AVHttpClient;

    sget-object v2, Lcom/avos/avoscloud/AVHttpClient;->avHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    iget-object v2, v2, Lcom/avos/avoscloud/AVHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Lcom/avos/avoscloud/AVHttpClient;-><init>(Lokhttp3/OkHttpClient;ILcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public execute(Lokhttp3/Request;ZLokhttp3/Callback;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVHttpClient;->getCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    .line 84
    invoke-interface {p3, p1, p2}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 86
    invoke-interface {p3, p1, p2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p1, p3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized getOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
