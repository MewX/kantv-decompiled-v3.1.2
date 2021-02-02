.class Lcom/avos/avoscloud/AVNotificationManager;
.super Ljava/lang/Object;
.source "AVNotificationManager.java"


# static fields
.field private static final AV_PUSH_SERVICE_APP_DATA:Ljava/lang/String; = "AV_PUSH_SERVICE_APP_DATA"

.field private static final ICON_KEY:Ljava/lang/String; = "_notification_icon"

.field private static final LOGTAG:Ljava/lang/String; = "AVNotificationManager"

.field private static final PUSH_INTENT_KEY:Ljava/lang/String; = "com.avoscloud.push"

.field private static final PUSH_MESSAGE_DEPOT:Ljava/lang/String; = "com.avos.push.message"

.field private static notificationManager:Lcom/avos/avoscloud/AVNotificationManager;

.field private static final random:Ljava/util/Random;


# instance fields
.field private context:Landroid/content/Context;

.field private final defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field private notificationIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVNotificationManager;->random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    iput-object p1, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput p1, p0, Lcom/avos/avoscloud/AVNotificationManager;->notificationIcon:I

    .line 65
    new-instance p1, Lcom/avos/avospush/session/StaleMessageDepot;

    const-string v0, "com.avos.push.message"

    invoke-direct {p1, v0}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/avos/avoscloud/AVNotificationManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    .line 66
    invoke-direct {p0}, Lcom/avos/avoscloud/AVNotificationManager;->readDataFromCache()V

    .line 67
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Init AppManager Done, read data from cache: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AVNotificationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    .line 81
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p3, 0x1

    const-string v1, "com.avoscloud.push"

    .line 83
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "com.avos.avoscloud.Channel"

    .line 84
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "com.avoscloud.Channel"

    .line 85
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.avos.avoscloud.Data"

    .line 86
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.avoscloud.Data"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p1, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private containsDefaultPushCallback(Ljava/lang/String;)Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "action"

    .line 124
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "Notification"

    :goto_1
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_channel"

    .line 120
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getExpiration(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 150
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "_expiration_time"

    .line 151
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 157
    :goto_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/avos/avoscloud/AVNotificationManager;
    .locals 3

    const-class v0, Lcom/avos/avoscloud/AVNotificationManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVNotificationManager;->notificationManager:Lcom/avos/avoscloud/AVNotificationManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/avos/avoscloud/AVNotificationManager;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/AVNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/avos/avoscloud/AVNotificationManager;->notificationManager:Lcom/avos/avoscloud/AVNotificationManager;

    .line 57
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AVNotificationManager;->notificationManager:Lcom/avos/avoscloud/AVNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNotificationIcon()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->notificationIcon:I

    return v0
.end method

.method private getSilent(Ljava/lang/String;)Z
    .locals 2

    .line 134
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "silent"

    .line 137
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 139
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getSilent failed."

    .line 140
    invoke-static {v0, p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return v1
.end method

.method private getSound(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "sound"

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVNotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "alert"

    .line 431
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 435
    :cond_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 436
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "data"

    .line 438
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 439
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "message"

    .line 442
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 444
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    .line 388
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVNotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 396
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 400
    :cond_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 401
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "data"

    .line 403
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 404
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 407
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 411
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/AVNotificationManager;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 405
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVNotificationManager;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 401
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/avos/avoscloud/AVNotificationManager;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readDataFromCache()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_notification_icon"

    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/AVNotificationManager;->notificationIcon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    iget-object v3, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVNotificationManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "action: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "sent broadcast"

    .line 99
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVNotificationManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVNotificationManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 341
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 350
    sget-object v0, Lcom/avos/avoscloud/AVNotificationManager;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 351
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 353
    iget-object p1, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 354
    invoke-static {p1, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 355
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVNotificationManager;->getSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-gt v1, v2, :cond_0

    .line 358
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-direct {p0}, Lcom/avos/avoscloud/AVNotificationManager;->getNotificationIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 361
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVNotificationManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 362
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 363
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVNotificationManager;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    .line 366
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-direct {p0}, Lcom/avos/avoscloud/AVNotificationManager;->getNotificationIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 368
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVNotificationManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 369
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 370
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 371
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVNotificationManager;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget-object p2, Lcom/avos/avoscloud/PushService;->DefaultChannelId:Ljava/lang/String;

    .line 372
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_1

    .line 376
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 379
    :cond_1
    iget-object p2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    const-string p3, "notification"

    .line 380
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 381
    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 383
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Class name is invalid, which must contain \'.\': "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AVNotificationManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 343
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No default callback found, did you forget to invoke setDefaultPushCallback?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendNotificationBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVNotificationManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 110
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "action: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "sent broadcast"

    .line 115
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 318
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    .line 317
    invoke-virtual {v0, v1, p1, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 332
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method porcessMixNotificationArrived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 278
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVNotificationManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 284
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVNotificationManager;->sendNotificationBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method processGcmMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 172
    :cond_0
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 174
    invoke-direct {p0, p1, p3, p2}, Lcom/avos/avoscloud/AVNotificationManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/avos/avoscloud/AVNotificationManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method processMixNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 208
    invoke-static {p1}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AVNotificationManager"

    if-eqz v0, :cond_0

    const-string p1, "message is empty, ignore."

    .line 209
    invoke-static {v1, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVNotificationManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 216
    :cond_2
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 218
    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVNotificationManager;->sendNotificationBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVNotificationManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-static {p2}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "className is empty, ignore."

    .line 222
    invoke-static {v1, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 224
    invoke-direct {p0, v0, p1, v2}, Lcom/avos/avoscloud/AVNotificationManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 225
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 227
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    iget-object p2, p0, Lcom/avos/avoscloud/AVNotificationManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p2, v0, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 230
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Ocurred PendingIntent.CanceledException"

    .line 232
    invoke-static {v1, p2, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method processMixPushMessage(Ljava/lang/String;)V
    .locals 3

    .line 186
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVNotificationManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 192
    :cond_1
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getSilent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_2

    .line 195
    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVNotificationManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 197
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method processPushMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 246
    :try_start_0
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVNotificationManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 251
    :cond_1
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getExpiration(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 253
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "message expired:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVNotificationManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    invoke-virtual {v1, p2}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 260
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 262
    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVNotificationManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Process notification failed."

    .line 268
    invoke-static {p2, p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method

.method removeDefaultPushCallback(Ljava/lang/String;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setNotificationIcon(I)V
    .locals 3

    .line 310
    iput p1, p0, Lcom/avos/avoscloud/AVNotificationManager;->notificationIcon:I

    .line 311
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 312
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AV_PUSH_SERVICE_APP_DATA"

    const-string v2, "_notification_icon"

    .line 311
    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/avos/avoscloud/AVNotificationManager;->defaultPushCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
