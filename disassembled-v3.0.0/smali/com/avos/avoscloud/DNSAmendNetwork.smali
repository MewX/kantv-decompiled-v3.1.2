.class public Lcom/avos/avoscloud/DNSAmendNetwork;
.super Ljava/lang/Object;
.source "DNSAmendNetwork.java"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field static final AVOS_SERVER_HOST_ZONE:Ljava/lang/String; = "avoscloud_server_host_zone"

.field private static final DNS_REQUEST_TIME_OUT:I = 0x7d0

.field public static final EXPIRE_TIME:Ljava/lang/String; = ".expireTime"

.field static final TWENTY_MIN_IN_MILLS:J = 0x124f80L

.field private static instance:Lcom/avos/avoscloud/DNSAmendNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/avos/avoscloud/DNSAmendNetwork;

    invoke-direct {v0}, Lcom/avos/avoscloud/DNSAmendNetwork;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/DNSAmendNetwork;->instance:Lcom/avos/avoscloud/DNSAmendNetwork;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cacheDNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 96
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "avoscloud_server_host_zone"

    invoke-virtual {v0, v1, p1, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".expireTime"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p2, v1, p1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCacheDNSResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 104
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "avoscloud_server_host_zone"

    invoke-virtual {v0, v2, p1, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".expireTime"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "0"

    invoke-virtual {v3, v2, p1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private static getIPAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ";"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 119
    array-length v0, p1

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 120
    const-class v1, Ljava/net/InetAddress;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [B

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 123
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 124
    aget-object v4, p1, v3

    const-string v8, "\\."

    .line 125
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 126
    array-length v8, v4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 127
    new-array v8, v9, [B

    aget-object v9, v4, v5

    .line 128
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v8, v5

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    aget-object v9, v4, v7

    .line 129
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v8, v2

    .line 130
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    aput-object v8, v4, v6

    aput-object p0, v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    aput-object v4, v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getIPByHostSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    .line 71
    new-instance v1, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "119.29.29.29"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "d"

    .line 72
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "dn"

    invoke-virtual {v1, v2, p0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    .line 74
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVHttpClient;->getOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 75
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 76
    sget-object v2, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 77
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 78
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 81
    :try_start_0
    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 88
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getIPByHostSync error"

    .line 89
    invoke-static {v1, p0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/avos/avoscloud/DNSAmendNetwork;
    .locals 1

    .line 36
    sget-object v0, Lcom/avos/avoscloud/DNSAmendNetwork;->instance:Lcom/avos/avoscloud/DNSAmendNetwork;

    return-object v0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Please add <uses-permission android:name=\"android.permission.INTERNET\"/> in your AndroidManifest file"

    .line 44
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 46
    :cond_0
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1}, Ljava/net/UnknownHostException;-><init>()V

    throw p1

    .line 50
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 54
    :catch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/DNSAmendNetwork;->getCacheDNSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 57
    invoke-static {p1}, Lcom/avos/avoscloud/DNSAmendNetwork;->getIPByHostSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_2
    invoke-static {p1, v0}, Lcom/avos/avoscloud/DNSAmendNetwork;->getIPAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    if-nez v1, :cond_3

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/DNSAmendNetwork;->cacheDNS(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 65
    :catch_1
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1}, Ljava/net/UnknownHostException;-><init>()V

    throw p1
.end method
