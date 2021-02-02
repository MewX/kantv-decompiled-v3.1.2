.class Lcom/avos/avoscloud/AVPushConnectionManager;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;


# static fields
.field private static final SUB_PROTOCOL_2_1:Ljava/lang/String; = "lc.protobuf2.1"

.field private static final SUB_PROTOCOL_2_3:Ljava/lang/String; = "lc.protobuf2.3"

.field private static instance:Lcom/avos/avoscloud/AVPushConnectionManager;

.field private static liveQuerySubscribeId:Ljava/lang/String;

.field private static final peerIdEnabledSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVCallback;",
            ">;"
        }
    .end annotation
.end field

.field private router:Lcom/avos/avospush/push/AVPushRouter;

.field private volatile socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    const-string v0, ""

    .line 44
    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->liveQuerySubscribeId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallbacks:Ljava/util/List;

    const-string v0, "begin to invoke AVPushConnectionManager(Context)"

    .line 47
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/avos/avospush/push/AVPushRouter;

    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVPushConnectionManager$1;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    invoke-direct {v0, p1, v1}, Lcom/avos/avospush/push/AVPushRouter;-><init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->router:Lcom/avos/avospush/push/AVPushRouter;

    .line 61
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initSessionsIfExists()V

    .line 63
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isGcmOpen()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.avos.avoscloud.AVGcmManager"

    .line 65
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getGcmTokenInBackground"

    .line 66
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 67
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 70
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "gcm library not started since not included"

    .line 71
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection()V

    goto :goto_1

    :cond_1
    const-string p1, "skip initialize connection bcz of GCM Push using"

    .line 78
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    :goto_1
    const-string p1, "end of AVPushConnectionManager(Context)"

    .line 80
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->createNewWebSocket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVPushConnectionManager;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallbacks:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized createNewWebSocket(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "skip create socketClient."

    .line 202
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 184
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v0, :cond_2

    const-string v0, "destroy socketClient first which is closed."

    .line 185
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->destroy()V

    .line 189
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->isOnlyPushCount()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 190
    new-instance v0, Lcom/avos/avoscloud/AVPushWebSocketClient;

    .line 191
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    const-string v3, "lc.protobuf2.3"

    invoke-direct {v0, v2, p0, v3, v1}, Lcom/avos/avoscloud/AVPushWebSocketClient;-><init>(Ljava/net/URI;Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    goto :goto_1

    .line 193
    :cond_3
    new-instance v0, Lcom/avos/avoscloud/AVPushWebSocketClient;

    .line 194
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    const-string v3, "lc.protobuf2.1"

    invoke-direct {v0, v2, p0, v3, v1}, Lcom/avos/avoscloud/AVPushWebSocketClient;-><init>(Ljava/net/URI;Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->connect()V

    .line 198
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 2

    const-class v0, Lcom/avos/avoscloud/AVPushConnectionManager;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 100
    :cond_0
    sget-object p0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initSessionsIfExists()V
    .locals 6

    .line 84
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getTagCacheInstance()Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->getAllSession()Ljava/util/Map;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v3

    .line 87
    iget-object v4, v3, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/avos/avoscloud/AVSession;->tag:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions recovered"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processAckCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$AckCommand;)V
    .locals 1

    .line 366
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/avos/avospush/push/AVWebSocketListener;->onAckCommand(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$AckCommand;)V

    :cond_0
    return-void
.end method

.method private processBlacklistCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$BlacklistCommand;)V
    .locals 1

    .line 374
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/avos/avospush/push/AVWebSocketListener;->onBlacklistCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$BlacklistCommand;)V

    :cond_0
    return-void
.end method

.method private processConvCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ConvCommand;)V
    .locals 1

    .line 382
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/avos/avospush/push/AVWebSocketListener;->onConversationCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ConvCommand;)V

    :cond_0
    return-void
.end method

.method private processDataCommand(Lcom/avos/avoscloud/Messages$DataCommand;)V
    .locals 5

    .line 222
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsgList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 225
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    invoke-static {}, Lcom/avos/avoscloud/AVNotificationManager;->getInstance()Lcom/avos/avoscloud/AVNotificationManager;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/AVNotificationManager;->processPushMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_1
    new-instance p1, Lcom/avos/avospush/session/PushAckPacket;

    invoke-direct {p1}, Lcom/avos/avospush/session/PushAckPacket;-><init>()V

    .line 230
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/avos/avospush/session/PushAckPacket;->setInstallationId(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1, v0}, Lcom/avos/avospush/session/PushAckPacket;->setMessageIds(Ljava/util/List;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method private processDirectCommand(Ljava/lang/String;Lcom/avos/avoscloud/Messages$DirectCommand;)V
    .locals 1

    .line 348
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/avos/avospush/push/AVWebSocketListener;->onDirectCommand(Lcom/avos/avoscloud/Messages$DirectCommand;)V

    :cond_0
    return-void
.end method

.method private processErrorCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ErrorCommand;)V
    .locals 1

    .line 390
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/avos/avospush/push/AVWebSocketListener;->onError(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ErrorCommand;)V

    :cond_0
    return-void
.end method

.method private processLiveQueryData(Lcom/avos/avoscloud/Messages$DataCommand;)V
    .locals 4

    .line 208
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsgList()Ljava/util/List;

    move-result-object p1

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 212
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 213
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVLiveQuery;->processData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private processLoggedinCommand(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live_query_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private processLogsCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$LogsCommand;)V
    .locals 1

    .line 398
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    .line 399
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/avos/avospush/push/AVWebSocketListener;->onHistoryMessageQuery(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$LogsCommand;)V

    return-void
.end method

.method private processPatchCommand(Ljava/lang/String;ZLjava/lang/Integer;Lcom/avos/avoscloud/Messages$PatchCommand;)V
    .locals 4

    .line 410
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/avos/avospush/push/AVWebSocketListener;->onMessagePatchCommand(ZLjava/lang/Integer;Lcom/avos/avoscloud/Messages$PatchCommand;)V

    :cond_0
    if-eqz p2, :cond_3

    const-wide/16 p2, 0x0

    .line 417
    invoke-virtual {p4}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PatchItem;

    .line 418
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-lez v3, :cond_1

    .line 419
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide p2

    goto :goto_0

    .line 422
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/avos/avospush/session/MessagePatchModifiedPacket;->getPatchMessagePacket(Ljava/lang/String;J)Lcom/avos/avospush/session/MessagePatchModifiedPacket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    :cond_3
    return-void
.end method

.method private processRpcCommand(Ljava/lang/String;Lcom/avos/avoscloud/Messages$RcpCommand;)V
    .locals 1

    .line 355
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/avos/avospush/push/AVWebSocketListener;->onReadCmdReceipt(Lcom/avos/avoscloud/Messages$RcpCommand;)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/avos/avospush/push/AVWebSocketListener;->onMessageReceipt(Lcom/avos/avoscloud/Messages$RcpCommand;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private processSessionCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$SessionCommand;)V
    .locals 1

    .line 341
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/avos/avospush/push/AVWebSocketListener;->onSessionCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$SessionCommand;)V

    :cond_0
    return-void
.end method

.method private processUnreadCommand(Ljava/lang/String;Lcom/avos/avoscloud/Messages$UnreadCommand;)V
    .locals 1

    .line 403
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/avos/avospush/push/AVWebSocketListener;->onUnreadMessagesCommand(Lcom/avos/avoscloud/Messages$UnreadCommand;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanupSocketConnection()V
    .locals 2

    const/16 v0, 0x3e8

    const-string v1, ""

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection(ILjava/lang/String;)V

    return-void
.end method

.method public cleanupSocketConnection(ILjava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVPushWebSocketClient;->close(ILjava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVPushWebSocketClient;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Close socket client failed."

    .line 172
    invoke-static {p2, p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isClosing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVPushWebSocketClient;->destroy()V

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    :cond_2
    :goto_0
    return-void
.end method

.method public getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;
    .locals 3

    .line 132
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Lcom/avos/avoscloud/AVSession;

    new-instance v2, Lcom/avos/avoscloud/AVDefaultSessionListener;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVDefaultSessionListener;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    invoke-direct {v0, p1, v2}, Lcom/avos/avoscloud/AVSession;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSessionListener;)V

    .line 136
    sget-object v2, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    .line 138
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 137
    :goto_0
    invoke-interface {p1, v1}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerAdded(Z)V

    goto :goto_1

    .line 140
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/avos/avoscloud/AVSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initConnection()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method public initConnection(Lcom/avos/avoscloud/AVCallback;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "push connection is open"

    .line 109
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->cancelReconnect()V

    :cond_1
    const-string v0, "try to query connection server via push router."

    .line 114
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->router:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer()V

    if-eqz p1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public isConnectedToPushServer()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loginCmd()V
    .locals 2

    .line 448
    new-instance v0, Lcom/avos/avospush/session/LoginPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/LoginPacket;-><init>()V

    .line 449
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/LoginPacket;->setAppId(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/LoginPacket;->setInstallationId(Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 453
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->liveQuerySubscribeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->liveQuerySubscribeId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLiveQueryLoginCmd(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public processCommand(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 237
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->parseFrom([B)Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object p1

    .line 238
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downlink : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPeerId()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasI()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getI()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 244
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getDefaultClient()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getCmd()Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$CommandType;->getNumber()I

    move-result v2

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 250
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getService()I

    move-result p1

    if-ne v4, p1, :cond_b

    .line 251
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processLoggedinCommand(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 253
    :cond_3
    sget-object v2, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/16 v3, 0x9

    if-eqz v2, :cond_4

    .line 254
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getCmd()Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$CommandType;->getNumber()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 255
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getCmd()Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$CommandType;->getNumber()I

    move-result v2

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12

    if-eq v2, v3, :cond_6

    const/16 v3, 0x14

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 286
    :pswitch_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processErrorCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ErrorCommand;)V

    goto/16 :goto_1

    .line 289
    :pswitch_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processLogsCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$LogsCommand;)V

    goto/16 :goto_1

    .line 292
    :pswitch_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processUnreadCommand(Ljava/lang/String;Lcom/avos/avoscloud/Messages$UnreadCommand;)V

    goto/16 :goto_1

    .line 279
    :pswitch_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processRpcCommand(Ljava/lang/String;Lcom/avos/avoscloud/Messages$RcpCommand;)V

    goto/16 :goto_1

    .line 276
    :pswitch_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processAckCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$AckCommand;)V

    goto/16 :goto_1

    .line 269
    :pswitch_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processDirectCommand(Ljava/lang/String;Lcom/avos/avoscloud/Messages$DirectCommand;)V

    goto/16 :goto_1

    .line 282
    :pswitch_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getOp()Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$OpType;->name()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object p1

    .line 282
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processConvCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ConvCommand;)V

    goto/16 :goto_1

    .line 272
    :pswitch_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getOp()Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$OpType;->name()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object p1

    .line 272
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processSessionCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$SessionCommand;)V

    goto :goto_1

    .line 295
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getOp()Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$OpType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object p1

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processBlacklistCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$BlacklistCommand;)V

    goto :goto_1

    .line 298
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getOp()Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/Messages$OpType;->modify:Lcom/avos/avoscloud/Messages$OpType;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/Messages$OpType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 300
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object p1

    invoke-direct {p0, v0, v4, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processPatchCommand(Ljava/lang/String;ZLjava/lang/Integer;Lcom/avos/avoscloud/Messages$PatchCommand;)V

    goto :goto_1

    .line 301
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getOp()Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/Messages$OpType;->modified:Lcom/avos/avoscloud/Messages$OpType;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/Messages$OpType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object p1

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processPatchCommand(Ljava/lang/String;ZLjava/lang/Integer;Lcom/avos/avoscloud/Messages$PatchCommand;)V

    goto :goto_1

    .line 257
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasService()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 258
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getService()I

    move-result v0

    if-nez v0, :cond_9

    .line 260
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processDataCommand(Lcom/avos/avoscloud/Messages$DataCommand;)V

    goto :goto_1

    :cond_9
    if-ne v4, v0, :cond_b

    .line 262
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processLiveQueryData(Lcom/avos/avoscloud/Messages$DataCommand;)V

    goto :goto_1

    .line 265
    :cond_a
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->processDataCommand(Lcom/avos/avoscloud/Messages$DataCommand;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 311
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    :cond_b
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized processConnectionStatus(Lcom/avos/avoscloud/AVException;)V
    .locals 2

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->router:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/push/AVPushRouter;->processSocketConnectionResult(Lcom/avos/avoscloud/AVException;)V

    .line 322
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager$2;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processRemoteServerNotAvailable()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->router:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer()V

    return-void
.end method

.method public processSessionsStatus(Z)V
    .locals 3

    .line 460
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 461
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 463
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketClose()V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketOpen()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 1

    .line 149
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVSession;

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerRemoved()V

    :cond_0
    return-void
.end method

.method public sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    :cond_0
    return-void
.end method

.method public sendLiveQueryLoginCmd(Ljava/lang/String;I)V
    .locals 1

    .line 435
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    sput-object p1, Lcom/avos/avoscloud/AVPushConnectionManager;->liveQuerySubscribeId:Ljava/lang/String;

    .line 437
    new-instance v0, Lcom/avos/avospush/session/LiveQueryLoginPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/LiveQueryLoginPacket;-><init>()V

    .line 438
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/LiveQueryLoginPacket;->setSubscribeId(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 440
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/LiveQueryLoginPacket;->setRequestId(I)V

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    return-void
.end method
