.class public Lcom/avos/avoscloud/AVOSCloud;
.super Ljava/lang/Object;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;
    }
.end annotation


# static fields
.field static final AV_CLOUD_API_VERSION_KEY:Ljava/lang/String; = "AV_CLOUD_API_VERSION"

.field static final AV_CLOUD_API_VERSION_KEY_ZONE:Ljava/lang/String; = "AV_CLOUD_API_VERSION_KEY_ZONE"

.field static final AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

.field static final AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

.field static final AV_CLOUD_CACHE_EXPIRE_DATE_KEY:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

.field static final AV_CLOUD_CACHE_EXPIRE_KEY_ZONE:Ljava/lang/String; = "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

.field public static final DEFAULT_NETWORK_TIMEOUT:I = 0x3a98

.field static final DEFAULT_THREAD_POOL_SIZE:I = 0xa

.field public static final LOG_LEVEL_DEBUG:I = 0x4

.field public static final LOG_LEVEL_ERROR:I = 0x20

.field public static final LOG_LEVEL_INFO:I = 0x8

.field public static final LOG_LEVEL_NONE:I = -0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x10

.field public static applicationContext:Landroid/content/Context;

.field public static applicationId:Ljava/lang/String;

.field public static clientKey:Ljava/lang/String;

.field protected static handler:Landroid/os/Handler;

.field private static internalDebugLog:Z

.field private static isCN:Z

.field private static isGcmOpen:Z

.field private static logLevel:I

.field private static networkTimeoutInMills:I

.field private static threadPoolSize:I

.field private static userInternalDebugLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1e

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    .line 42
    sput-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    .line 44
    sput-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->isGcmOpen:Z

    const/16 v0, 0x3a98

    .line 50
    sput v0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    const/16 v0, 0xa

    .line 52
    sput v0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->isCN:Z

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 101
    sput-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->setAutoTypeSupport(Z)V

    .line 103
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVObject;

    sget-object v2, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 104
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    sget-object v2, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 106
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVObject;

    sget-object v2, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 107
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    sget-object v2, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    :try_start_0
    const-string v0, "com.avos.avoscloud.AVInstallation"

    .line 109
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 112
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 19
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->initialize()V

    return-void
.end method

.method public static clearLastModifyCache()V
    .locals 0

    .line 316
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->clearLastModifyCache()V

    return-void
.end method

.method public static disableAutoCacheCleaner()V
    .locals 4

    .line 325
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v3, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    .line 325
    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static enableAutoCacheCleaner()V
    .locals 4

    .line 320
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const/4 v1, 0x1

    .line 321
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v3, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    .line 320
    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 266
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    return v0
.end method

.method public static getNetworkTimeout()I
    .locals 1

    .line 89
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    return v0
.end method

.method public static getServerDate()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 393
    new-array v1, v0, [Ljava/util/Date;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 394
    new-instance v3, Lcom/avos/avoscloud/AVOSCloud$3;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVOSCloud$3;-><init>([Ljava/util/Date;)V

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVOSCloud;->getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V

    .line 409
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    aget-object v0, v1, v2

    return-object v0

    .line 410
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public static getServerDateInBackground(Lcom/avos/avoscloud/callback/AVServerDateCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVOSCloud;->getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V

    return-void
.end method

.method private static getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V
    .locals 6

    .line 416
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v5, Lcom/avos/avoscloud/AVOSCloud$4;

    invoke-direct {v5, p1}, Lcom/avos/avoscloud/AVOSCloud$4;-><init>(Lcom/avos/avoscloud/callback/AVServerDateCallback;)V

    const-string v1, "date"

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static getThreadPoolSize()I
    .locals 1

    .line 93
    sget v0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    return v0
.end method

.method private static initialize()V
    .locals 4

    .line 221
    invoke-static {}, Lcom/avos/avoscloud/AppRouterManager;->getInstance()Lcom/avos/avoscloud/AppRouterManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AppRouterManager;->fetchRouter(Z)V

    .line 224
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->startAnalytics(Landroid/content/Context;)V

    .line 226
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const/4 v1, 0x1

    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v3, "AV_CLOUD_CACHE_EXPIRE_AUTO_CLEAN_KEY"

    .line 226
    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    const-string v3, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    .line 229
    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    .line 232
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->AV_CLOUD_CACHE_DEFAULT_EXPIRE_DATE:Ljava/lang/Integer;

    .line 233
    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearFileCacheMoreThanDays(I)Z

    .line 239
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "AV_CLOUD_API_VERSION"

    const-string v2, "AV_CLOUD_API_VERSION_KEY_ZONE"

    const-string v3, "1"

    invoke-virtual {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVOSCloud;->onUpgrade(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please call AVOSCloud.initialize in main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_5

    .line 144
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 147
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 148
    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 152
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t initialize more than once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_3
    sput-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 156
    sput-object p2, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    .line 157
    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    .line 159
    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez p0, :cond_4

    .line 160
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    .line 162
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    .line 163
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->initialize()V

    return-void

    .line 145
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter(context or applicationId or clientKey) is illegal."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVCallback;)V
    .locals 1

    .line 177
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Please call AVOSCloud.initialize in main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_6

    .line 180
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 183
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 184
    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    const/4 p0, 0x0

    .line 187
    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_2
    return-void

    .line 191
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t initialize more than once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_4
    sput-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    .line 196
    sput-object p2, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    .line 197
    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    .line 199
    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    if-nez p0, :cond_5

    .line 200
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    .line 203
    :cond_5
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    .line 205
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/avos/avoscloud/AVOSCloud$1;

    invoke-direct {p1, p3}, Lcom/avos/avoscloud/AVOSCloud$1;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 181
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter(context or applicationId or clientKey) is illegal."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static isCN()Z
    .locals 1

    .line 257
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->isCN:Z

    return v0
.end method

.method public static isDebugLogEnabled()Z
    .locals 1

    .line 296
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

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

.method public static isGcmOpen()Z
    .locals 1

    .line 304
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->isGcmOpen:Z

    return v0
.end method

.method public static isLastModifyEnabled()Z
    .locals 1

    .line 308
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    return v0
.end method

.method protected static onUpgrade(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 335
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p0}, Lcom/avos/avoscloud/AVUtils;->compareNumberString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "1.1"

    .line 336
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 337
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "try to do some upgrade work"

    .line 338
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 340
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 343
    new-instance p1, Lcom/avos/avoscloud/AVOSCloud$2;

    invoke-direct {p1}, Lcom/avos/avoscloud/AVOSCloud$2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVUser;->fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V

    :cond_1
    :try_start_0
    const-string p0, "com.avos.avoscloud.AVInstallation"

    .line 353
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "updateCurrentInstallation"

    const/4 v0, 0x0

    .line 354
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 355
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "failed to update local Installation"

    .line 357
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    .line 359
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->clearAllCache()Z

    :cond_2
    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 444
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVSMS;->requestSMSCode(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;)V

    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 451
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 452
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVSMSOption;->setApplicationName(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVSMSOption;->setOperation(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AVSMSOption;->setTtl(I)V

    .line 455
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVSMS;->requestSMSCode(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;)V

    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 474
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 475
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVSMSOption;->setTemplateName(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVSMSOption;->setSignatureName(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AVSMSOption;->setEnvMap(Ljava/util/Map;)V

    .line 478
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVSMS;->requestSMSCode(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;)V

    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 463
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 464
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVSMSOption;->setTemplateName(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVSMSOption;->setEnvMap(Ljava/util/Map;)V

    .line 466
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVSMS;->requestSMSCode(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;)V

    return-void
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 520
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVSMS;->requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    .line 486
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 487
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVSMSOption;->setApplicationName(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVSMSOption;->setOperation(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AVSMSOption;->setTtl(I)V

    .line 490
    invoke-static {p0, v0, p4}, Lcom/avos/avoscloud/AVSMS;->requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/RequestMobileCodeCallback;",
            ")V"
        }
    .end annotation

    .line 509
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 510
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVSMSOption;->setTemplateName(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVSMSOption;->setSignatureName(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/AVSMSOption;->setEnvMap(Ljava/util/Map;)V

    .line 513
    invoke-static {p0, v0, p4}, Lcom/avos/avoscloud/AVSMS;->requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/RequestMobileCodeCallback;",
            ")V"
        }
    .end annotation

    .line 498
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 499
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVSMSOption;->setTemplateName(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVSMSOption;->setEnvMap(Ljava/util/Map;)V

    .line 501
    invoke-static {p0, v0, p3}, Lcom/avos/avoscloud/AVSMS;->requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static requestVoiceCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 527
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 528
    sget-object v1, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->VOICE_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVSMSOption;->setSmsType(Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;)V

    .line 529
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVSMS;->requestSMSCode(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;)V

    return-void
.end method

.method public static requestVoiceCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 2

    .line 536
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMSOption;-><init>()V

    .line 537
    sget-object v1, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->VOICE_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVSMSOption;->setSmsType(Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;)V

    .line 538
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVSMS;->requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static setCacheFileAutoExpireDate(I)V
    .locals 3

    .line 330
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 331
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "AV_CLOUD_CACHE_EXPIRE_KEY_ZONE"

    const-string v2, "AV_CLOUD_CACHE_EXPIRE_DATE_KEY"

    .line 330
    invoke-virtual {v0, v1, v2, p0}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static setDebugLogEnabled(Z)V
    .locals 0

    .line 282
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->userInternalDebugLog:Z

    return-void
.end method

.method public static setGcmOpen(Z)V
    .locals 0

    .line 300
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->isGcmOpen:Z

    return-void
.end method

.method public static setLastModifyEnabled(Z)V
    .locals 0

    .line 312
    invoke-static {p0}, Lcom/avos/avoscloud/PaasClient;->setLastModifyEnabled(Z)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 270
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->logLevel:I

    return-void
.end method

.method public static setNetworkTimeout(I)V
    .locals 0

    .line 80
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->networkTimeoutInMills:I

    return-void
.end method

.method public static setServer(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AppRouterManager;->setServer(Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;Ljava/lang/String;)V

    return-void
.end method

.method public static setThreadPoolSize(I)V
    .locals 0

    .line 97
    sput p0, Lcom/avos/avoscloud/AVOSCloud;->threadPoolSize:I

    return-void
.end method

.method static showInternalDebugLog(Z)V
    .locals 0

    .line 274
    sput-boolean p0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    return-void
.end method

.method public static showInternalDebugLog()Z
    .locals 1

    .line 278
    sget-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->internalDebugLog:Z

    return v0
.end method

.method private static startAnalytics(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "com.avos.avoscloud.AVAnalytics"

    .line 366
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "start"

    const/4 v2, 0x1

    .line 367
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 369
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 371
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "statistics library not started since not included"

    .line 372
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static useAVCloudCN()V
    .locals 1

    const/4 v0, 0x1

    .line 252
    sput-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->isCN:Z

    .line 253
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->useAVCloudCN()V

    return-void
.end method

.method public static useAVCloudUS()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    sput-boolean v0, Lcom/avos/avoscloud/AVOSCloud;->isCN:Z

    .line 248
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->useAVCloudUS()V

    return-void
.end method

.method public static verifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 552
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVSMS;->verifySMSCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verifyCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 0

    .line 567
    invoke-static {p0, p1, p2}, Lcom/avos/avoscloud/AVSMS;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    return-void
.end method

.method public static verifySMSCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 545
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVSMS;->verifySMSCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 0

    .line 559
    invoke-static {p0, p1, p2}, Lcom/avos/avoscloud/AVSMS;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    return-void
.end method
