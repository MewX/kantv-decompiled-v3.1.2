.class public Lcom/kantv/common/api/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field private static domain:Ljava/lang/String;

.field private static mInterceptor:Lokhttp3/Interceptor;

.field public static nativeDomain:[Ljava/lang/String;

.field private static singleton:Lcom/kantv/common/api/ApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "www.suramic.com"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "skyollie.com"

    aput-object v3, v0, v2

    sput-object v0, Lcom/kantv/common/api/Api;->nativeDomain:[Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kantv/common/api/Api;->nativeDomain:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kantv/common/api/Api;->domain:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/kantv/common/api/Api$1;

    invoke-direct {v0}, Lcom/kantv/common/api/Api$1;-><init>()V

    sput-object v0, Lcom/kantv/common/api/Api;->mInterceptor:Lokhttp3/Interceptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRetrofit()Lretrofit2/Retrofit;
    .locals 4

    .line 96
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 97
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 99
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/kantv/common/api/Api;->mInterceptor:Lokhttp3/Interceptor;

    .line 101
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 103
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 104
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/kantv/common/api/Api;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 106
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public static getDomain()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/kantv/common/api/Api;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public static getService()Lcom/kantv/common/api/ApiService;
    .locals 3

    .line 40
    sget-object v0, Lcom/kantv/common/api/Api;->singleton:Lcom/kantv/common/api/ApiService;

    if-nez v0, :cond_0

    .line 41
    const-class v0, Lcom/kantv/common/api/Api;

    monitor-enter v0

    .line 42
    :try_start_0
    invoke-static {}, Lcom/kantv/common/api/Api;->createRetrofit()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/kantv/common/api/ApiService;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/common/api/ApiService;

    sput-object v1, Lcom/kantv/common/api/Api;->singleton:Lcom/kantv/common/api/ApiService;

    .line 43
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_0
    :goto_0
    sget-object v0, Lcom/kantv/common/api/Api;->singleton:Lcom/kantv/common/api/ApiService;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/kantv/common/api/ApiService;
    .locals 4

    .line 50
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 51
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/kantv/common/api/Api;->mInterceptor:Lokhttp3/Interceptor;

    .line 52
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 54
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 55
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 57
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    .line 60
    const-class v0, Lcom/kantv/common/api/ApiService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kantv/common/api/ApiService;

    return-object p0
.end method


# virtual methods
.method public setDomain(Ljava/lang/String;)V
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#####setDomain DOMAIN ####### "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/Object;)V

    const-string v0, "http"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sput-object p1, Lcom/kantv/common/api/Api;->domain:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/common/api/Api;->domain:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/common/api/Api;->domain:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setSingletonNull()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/kantv/common/api/Api;->singleton:Lcom/kantv/common/api/ApiService;

    return-void
.end method
