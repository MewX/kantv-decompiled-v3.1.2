.class public Lcom/avos/avoscloud/AppRouterManager;
.super Ljava/lang/Object;
.source "AppRouterManager.java"


# static fields
.field private static final API_SERVER_KEY:Ljava/lang/String; = "api_server"

.field private static final DEFALUT_US_API_SERVER:Ljava/lang/String; = "https://us-api.leancloud.cn"

.field private static final DEFAULT_QCLOUD_API_SERVER:Ljava/lang/String; = "https://e1-api.leancloud.cn"

.field private static final DEFAULT_QCLOUD_ROUTER_SERVER:Ljava/lang/String; = "https://router-q0-push.leancloud.cn"

.field private static final DEFAULT_US_ROUTER_SERVER:Ljava/lang/String; = "https://router-a0-push.leancloud.cn"

.field private static final ENGINE_SERVRE_KEY:Ljava/lang/String; = "engine_server"

.field private static final LATEST_UPDATE_TIME_KEY:Ljava/lang/String; = "latest_update_time"

.field private static final PUSH_SERVRE_KEY:Ljava/lang/String; = "push_server"

.field private static final ROUTER_ADDRESS:Ljava/lang/String; = " https://app-router.leancloud.cn/2/route?appId="

.field private static final RTM_ROUTER_SERVRE_KEY:Ljava/lang/String; = "rtm_router_server"

.field private static final STATS_SERVRE_KEY:Ljava/lang/String; = "stats_server"

.field private static final TTL_KEY:Ljava/lang/String; = "ttl"

.field private static appRouterManager:Lcom/avos/avoscloud/AppRouterManager;

.field private static customApiMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiMaps:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AppRouterManager;->customApiMaps:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AppRouterManager;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AppRouterManager;->saveRouterResult(Ljava/lang/String;)V

    return-void
.end method

.method private addHttpsPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 285
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getAppRouterSPName()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.avos.avoscloud.approuter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/avos/avoscloud/AppRouterManager;
    .locals 2

    const-class v0, Lcom/avos/avoscloud/AppRouterManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AppRouterManager;->appRouterManager:Lcom/avos/avoscloud/AppRouterManager;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/avos/avoscloud/AppRouterManager;

    invoke-direct {v1}, Lcom/avos/avoscloud/AppRouterManager;-><init>()V

    sput-object v1, Lcom/avos/avoscloud/AppRouterManager;->appRouterManager:Lcom/avos/avoscloud/AppRouterManager;

    .line 56
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AppRouterManager;->appRouterManager:Lcom/avos/avoscloud/AppRouterManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getServerUrl(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;
    .locals 2

    .line 92
    sget-object v0, Lcom/avos/avoscloud/AppRouterManager;->customApiMaps:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/avos/avoscloud/AppRouterManager;->customApiMaps:Ljava/util/Map;

    iget-object p1, p1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 96
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AppRouterManager;->isUsApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "https://router-a0-push.leancloud.cn"

    goto :goto_0

    :cond_1
    const-string p1, "https://us-api.leancloud.cn"

    :goto_0
    return-object p1

    .line 104
    :cond_2
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AppRouterManager;->isQCloudApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const-string p1, "https://router-q0-push.leancloud.cn"

    goto :goto_1

    :cond_3
    const-string p1, "https://e1-api.leancloud.cn"

    :goto_1
    return-object p1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    iget-object p1, p1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 112
    :cond_5
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AppRouterManager;->getUcloudDefaultServer(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUcloudDefaultServer(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;
    .locals 4

    .line 122
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "https://%s.%s.lncld.net"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "AppId is null, Please call AVOSCloud.initialize first"

    .line 125
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method static isQCloudApp(Ljava/lang/String;)Z
    .locals 1

    .line 297
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "9Nh9j0Va"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isUsApp(Ljava/lang/String;)Z
    .locals 1

    .line 306
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MdYXbMMI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private refreshMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 255
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->getAppRouterSPName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 254
    invoke-virtual {v0, v1, p3, v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 256
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private saveRouterResult(Ljava/lang/String;)V
    .locals 3

    .line 220
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "get router error "

    .line 222
    invoke-static {v0, p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "rtm_router_server"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->updateMapAndSaveLocal(Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->PUSH:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "push_server"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->updateMapAndSaveLocal(Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->API:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "api_server"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->updateMapAndSaveLocal(Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->STATS:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "stats_server"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->updateMapAndSaveLocal(Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->ENGINE:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "engine_server"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->updateMapAndSaveLocal(Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ttl"

    .line 232
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    .line 234
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->getAppRouterSPName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 233
    invoke-virtual {v1, v2, v0, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object p1

    .line 238
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->getAppRouterSPName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "latest_update_time"

    .line 237
    invoke-virtual {p1, v0, v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method static setServer(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;Ljava/lang/String;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/avos/avoscloud/AppRouterManager;->customApiMaps:Ljava/util/Map;

    iget-object p0, p0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/avos/avoscloud/RequestStatisticsUtil;->REPORT_INTERNAL_STATS:Ljava/lang/Boolean;

    return-void
.end method

.method private updateMapAndSaveLocal(Ljava/util/Map;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 243
    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AppRouterManager;->addHttpsPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 246
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->getAppRouterSPName()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1, p4, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 248
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateServers()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "rtm_router_server"

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->refreshMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->PUSH:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "push_server"

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->refreshMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->API:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "api_server"

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->refreshMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->STATS:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "stats_server"

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->refreshMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->ENGINE:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    const-string v2, "engine_server"

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AppRouterManager;->refreshMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method fetchRouter(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AppRouterManager;->fetchRouter(ZLcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method fetchRouter(ZLcom/avos/avoscloud/AVCallback;)V
    .locals 9

    .line 162
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AppRouterManager;->isUsApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->updateServers()V

    .line 165
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 166
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->getAppRouterSPName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "latest_update_time"

    .line 165
    invoke-virtual {v0, v2, v4, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    .line 169
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->getAppRouterSPName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ttl"

    .line 168
    invoke-virtual {v2, v3, v6, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez p1, :cond_1

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long p1, v5, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 207
    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 172
    :cond_1
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object p1

    .line 173
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " https://app-router.leancloud.cn/2/route?appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 175
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/GetHttpResponseHandler;

    new-instance v2, Lcom/avos/avoscloud/AppRouterManager$1;

    invoke-direct {v2, p0, p2}, Lcom/avos/avoscloud/AppRouterManager$1;-><init>(Lcom/avos/avoscloud/AppRouterManager;Lcom/avos/avoscloud/AVCallback;)V

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-virtual {p1, v0, v4, v1}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 212
    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_3
    :goto_1
    return-void
.end method

.method getEngineServer()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->ENGINE:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AppRouterManager;->getServerUrl(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushServer()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->PUSH:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AppRouterManager;->getServerUrl(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRtmRouterServer()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AppRouterManager;->getServerUrl(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStatsServer()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->STATS:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AppRouterManager;->getServerUrl(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStorageServer()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->API:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AppRouterManager;->getServerUrl(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRtmRouterServer(Ljava/lang/String;Z)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AppRouterManager;->addHttpsPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 142
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object p1

    .line 143
    invoke-direct {p0}, Lcom/avos/avoscloud/AppRouterManager;->getAppRouterSPName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager;->apiMaps:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    iget-object v1, v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "rtm_router_server"

    .line 142
    invoke-virtual {p1, p2, v1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
