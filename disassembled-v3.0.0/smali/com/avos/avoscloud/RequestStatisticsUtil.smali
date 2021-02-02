.class Lcom/avos/avoscloud/RequestStatisticsUtil;
.super Ljava/lang/Object;
.source "RequestStatisticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
    }
.end annotation


# static fields
.field private static final LAST_SENDTIME:Ljava/lang/String; = "lastSendTime"

.field public static REPORT_INTERNAL_STATS:Ljava/lang/Boolean; = null

.field private static final REQUEST_DATA:Ljava/lang/String; = "com.avos.avoscloud.RequestStatisticsUtil.data"

.field private static TIME_INTERVAL:I = 0x5265c00

.field private static sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;


# instance fields
.field private lastSendTime:J

.field private requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/RequestStatisticsUtil;->REPORT_INTERNAL_STATS:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    .line 41
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getLastSendTime()V

    .line 42
    new-instance v0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-direct {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/RequestStatisticsUtil;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->updateLastSendTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/RequestStatisticsUtil;)Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    return-object p0
.end method

.method private getClientInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform"

    const-string v3, "Android"

    .line 85
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "app_version"

    .line 88
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk_version"

    const-string v2, "v4.6.4"

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 96
    :try_start_1
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v3, "wifi"

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 98
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :catch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "android_id"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "id"

    .line 105
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/avos/avoscloud/RequestStatisticsUtil;
    .locals 2

    const-class v0, Lcom/avos/avoscloud/RequestStatisticsUtil;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/RequestStatisticsUtil;->sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/avos/avoscloud/RequestStatisticsUtil;

    invoke-direct {v1}, Lcom/avos/avoscloud/RequestStatisticsUtil;-><init>()V

    sput-object v1, Lcom/avos/avoscloud/RequestStatisticsUtil;->sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;

    .line 49
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/RequestStatisticsUtil;->sInstance:Lcom/avos/avoscloud/RequestStatisticsUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLastSendTime()V
    .locals 6

    .line 162
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "lastSendTime"

    .line 164
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    .line 165
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    return-void
.end method

.method private isNeedToSend()Z
    .locals 6

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    sget v4, Lcom/avos/avoscloud/RequestStatisticsUtil;->TIME_INTERVAL:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendData(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
    .locals 7

    .line 113
    invoke-static {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->access$000(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getClientInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "client"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->toPostDataMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "attributes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->statistisInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    .line 119
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v2

    const-string v3, "always_collect"

    .line 120
    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    :try_start_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 123
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    sget-object v5, Lcom/avos/avoscloud/AVHttpClient;->JSON:Lokhttp3/MediaType;

    .line 124
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    invoke-static {v5, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v1, v4, v0, v3}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 126
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v3, Lcom/avos/avoscloud/RequestStatisticsUtil$1;

    invoke-direct {v3, p0, p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$1;-><init>(Lcom/avos/avoscloud/RequestStatisticsUtil;Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->updateLastSendTime()V

    :goto_0
    return-void
.end method

.method private updateLastSendTime()V
    .locals 4

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    .line 154
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    iget-wide v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->lastSendTime:J

    const-string v3, "lastSendTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public recordRequestTime(IZJ)V
    .locals 3

    .line 60
    sget-object v0, Lcom/avos/avoscloud/RequestStatisticsUtil;->REPORT_INTERNAL_STATS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .line 63
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->addRequestData(IZJ)V

    .line 65
    iget-object p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-virtual {p1}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->saveToPreference()V

    :cond_1
    return-void
.end method

.method public sendToServer()V
    .locals 1

    .line 73
    sget-object v0, Lcom/avos/avoscloud/RequestStatisticsUtil;->REPORT_INTERNAL_STATS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->isNeedToSend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-direct {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;-><init>()V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->sendData(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V

    :cond_1
    return-void
.end method
