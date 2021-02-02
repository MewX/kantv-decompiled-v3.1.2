.class public Lcom/avos/avospush/push/AVPushRouter;
.super Ljava/lang/Object;
.source "AVPushRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;
    }
.end annotation


# static fields
.field private static final EXPIRE_AT:Ljava/lang/String; = "expireAt"

.field private static final PUSH_SERVER_CACHE_KEY_FMT:Ljava/lang/String; = "com.avos.push.router.server.cache%s"

.field private static ROUTER_QUERY_SRTING:Ljava/lang/String; = "/v1/route?appId=%s&installationId=%s&secure=1"

.field private static final ROUTER_REQUEST_TIME_OUT:I = 0x1388

.field private static final SECONDARY:Ljava/lang/String; = "secondary"

.field public static final SERVER:Ljava/lang/String; = "server"


# instance fields
.field private final context:Landroid/content/Context;

.field private final installationId:Ljava/lang/String;

.field private volatile isPrimarySever:Z

.field private volatile isRequesting:Z

.field private listener:Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

.field private routerHttpClient:Lcom/avos/avoscloud/AVHttpClient;

.field private socketLostNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ttlInSecs:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/avos/avospush/push/AVPushRouter;->isRequesting:Z

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->socketLostNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/avos/avospush/push/AVPushRouter;->isPrimarySever:Z

    .line 60
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/avos/avospush/push/AVPushRouter;->listener:Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    .line 62
    invoke-static {p1}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation(Landroid/content/Context;)Lcom/avos/avoscloud/AVInstallation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avospush/push/AVPushRouter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/avos/avospush/push/AVPushRouter;->socketLostNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/avos/avospush/push/AVPushRouter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    return p0
.end method

.method static synthetic access$102(Lcom/avos/avospush/push/AVPushRouter;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    return p1
.end method

.method static synthetic access$200(Lcom/avos/avospush/push/AVPushRouter;Ljava/util/HashMap;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/avos/avospush/push/AVPushRouter;->cachePushServer(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/avos/avospush/push/AVPushRouter;)Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/avos/avospush/push/AVPushRouter;->listener:Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/avos/avospush/push/AVPushRouter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/avos/avospush/push/AVPushRouter;->isPrimarySever:Z

    return p1
.end method

.method static synthetic access$502(Lcom/avos/avospush/push/AVPushRouter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/avos/avospush/push/AVPushRouter;->isRequesting:Z

    return p1
.end method

.method private cachePushServer(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.avos.push.router.server.cache%s"

    .line 228
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server"

    .line 231
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "expireAt"

    .line 232
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "secondary"

    .line 233
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private fetchPushServerFromServer()V
    .locals 5

    .line 152
    iget-boolean v0, p0, Lcom/avos/avospush/push/AVPushRouter;->isRequesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/avos/avospush/push/AVPushRouter;->isRequesting:Z

    .line 157
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getRouterUrl()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to fetch push server from :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 162
    :cond_1
    new-instance v1, Lcom/avos/avospush/push/AVPushRouter$1;

    invoke-direct {v1, p0}, Lcom/avos/avospush/push/AVPushRouter$1;-><init>(Lcom/avos/avospush/push/AVPushRouter;)V

    .line 203
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 204
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 205
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get router url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getRouterHttpClient()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-direct {v4, v1}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V

    return-void
.end method

.method private getPushServerFromCache()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "com.avos.push.router.server.cache%s"

    .line 216
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "server"

    .line 218
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "expireAt"

    const-wide/16 v4, 0x0

    .line 219
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "secondary"

    .line 220
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized getRouterHttpClient()Lcom/avos/avoscloud/AVHttpClient;
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->routerHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    if-nez v0, :cond_0

    const/16 v0, 0x1388

    .line 72
    invoke-static {v0}, Lcom/avos/avoscloud/AVHttpClient;->newClientInstance(I)Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->routerHttpClient:Lcom/avos/avoscloud/AVHttpClient;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->routerHttpClient:Lcom/avos/avoscloud/AVHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRouterUrl()Ljava/lang/String;
    .locals 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AppRouterManager;->getInstance()Lcom/avos/avoscloud/AppRouterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AppRouterManager;->getRtmRouterServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avospush/push/AVPushRouter;->ROUTER_QUERY_SRTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchPushServer()V
    .locals 7

    .line 112
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Please initialize Application first"

    .line 113
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getRTMServer()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->listener:Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;->onServerAddress(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "server"

    if-nez v0, :cond_3

    .line 122
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getPushServerFromCache()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->listener:Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;->onServerAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->listener:Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;->onServerAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getPushServerFromCache()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "expireAt"

    .line 130
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->socketLostNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_5

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    iget-boolean v2, p0, Lcom/avos/avospush/push/AVPushRouter;->isPrimarySever:Z

    if-nez v2, :cond_4

    const-string v2, "secondary"

    .line 135
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->listener:Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    invoke-interface {v1, v0}, Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;->onServerAddress(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get push server from cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_5
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->fetchPushServerFromServer()V

    :cond_6
    :goto_1
    return-void
.end method

.method public processSocketConnectionResult(Lcom/avos/avoscloud/AVException;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/avos/avospush/push/AVPushRouter;->socketLostNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Permission"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/avos/avospush/push/AVPushRouter;->socketLostNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 93
    iget-object p1, p0, Lcom/avos/avospush/push/AVPushRouter;->socketLostNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 95
    iput-boolean v0, p0, Lcom/avos/avospush/push/AVPushRouter;->isPrimarySever:Z

    :cond_2
    :goto_0
    return-void
.end method
