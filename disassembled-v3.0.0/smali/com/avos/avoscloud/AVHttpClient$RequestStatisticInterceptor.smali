.class Lcom/avos/avoscloud/AVHttpClient$RequestStatisticInterceptor;
.super Ljava/lang/Object;
.source "AVHttpClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestStatisticInterceptor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVHttpClient$1;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/avos/avoscloud/AVHttpClient$RequestStatisticInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 103
    sget-object v3, Lcom/avos/avoscloud/PaasClient;->REQUEST_STATIS_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    .line 105
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 109
    invoke-static {}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getInstance()Lcom/avos/avoscloud/RequestStatisticsUtil;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v7

    invoke-virtual {v0, v7, v4, v5, v6}, Lcom/avos/avoscloud/RequestStatisticsUtil;->recordRequestTime(IZJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    if-eqz v3, :cond_1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 116
    invoke-static {}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getInstance()Lcom/avos/avoscloud/RequestStatisticsUtil;

    move-result-object v0

    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0, v4, v1, v5, v6}, Lcom/avos/avoscloud/RequestStatisticsUtil;->recordRequestTime(IZJ)V

    .line 118
    :cond_1
    throw p1
.end method
