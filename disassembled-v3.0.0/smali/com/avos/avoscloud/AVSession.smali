.class public Lcom/avos/avoscloud/AVSession;
.super Ljava/lang/Object;
.source "AVSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final ERROR_INVALID_SESSION_ID:Ljava/lang/String; = "Null id in session id list."

.field static final OPERATION_CLOSE_SESSION:I = 0x2715

.field static final OPERATION_OPEN_SESSION:I = 0x2714

.field static final OPERATION_UNKNOW:I = -0x1

.field private static onlyPushCount:Z = false


# instance fields
.field private final AVUSER_SESSION_TOKEN:Ljava/lang/String;

.field private final LAST_NOTIFY_TIME:Ljava/lang/String;

.field private final LAST_PATCH_TIME:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final conversationHolderCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVConversationHolder;",
            ">;"
        }
    .end annotation
.end field

.field conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

.field private lastNotifyTime:J

.field private lastPatchTime:J

.field private final lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

.field pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/PendingMessageCache<",
            "Lcom/avos/avoscloud/PendingMessageCache$Message;",
            ">;"
        }
    .end annotation
.end field

.field private realtimeSessionToken:Ljava/lang/String;

.field private realtimeSessionTokenExpired:J

.field private final selfId:Ljava/lang/String;

.field final sessionListener:Lcom/avos/avoscloud/AVSessionListener;

.field final sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

.field tag:Ljava/lang/String;

.field private userSessionToken:Ljava/lang/String;

.field private final websocketListener:Lcom/avos/avospush/push/AVWebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSessionListener;)V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lastNotifyTime"

    .line 43
    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->LAST_NOTIFY_TIME:Ljava/lang/String;

    const-string v0, "lastPatchTime"

    .line 48
    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->LAST_PATCH_TIME:Ljava/lang/String;

    const-string v0, "avuserSessionToken"

    .line 53
    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->AVUSER_SESSION_TOKEN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->userSessionToken:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->realtimeSessionToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/avos/avoscloud/AVSession;->realtimeSessionTokenExpired:J

    .line 61
    iput-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastNotifyTime:J

    .line 62
    iput-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    .line 64
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationHolderCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    .line 95
    new-instance p2, Lcom/avos/avoscloud/AVDefaultWebSocketListener;

    invoke-direct {p2, p0}, Lcom/avos/avoscloud/AVDefaultWebSocketListener;-><init>(Lcom/avos/avoscloud/AVSession;)V

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avospush/push/AVWebSocketListener;

    .line 96
    new-instance p2, Lcom/avos/avoscloud/PendingMessageCache;

    const-class v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {p2, p1, v0}, Lcom/avos/avoscloud/PendingMessageCache;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    .line 97
    new-instance p2, Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-direct {p2, p1}, Lcom/avos/avoscloud/AVIMOperationQueue;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/avos/avoscloud/AVSession;->realtimeSessionToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object p0
.end method

.method public static isOnlyPushCount()Z
    .locals 1

    .line 430
    sget-boolean v0, Lcom/avos/avoscloud/AVSession;->onlyPushCount:Z

    return v0
.end method

.method private openWithSessionToken(Ljava/lang/String;)V
    .locals 9

    .line 203
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getLastNotifyTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getLastPatchTime()J

    move-result-wide v6

    const/4 v1, 0x0

    const-string v2, "open"

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 202
    invoke-static/range {v0 .. v8}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;JJLjava/lang/Integer;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionControlPacket;->setSessionToken(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 206
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionControlPacket;->setReconnectionRequest(Z)V

    .line 207
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method private openWithSignature(IZZ)V
    .locals 1

    .line 215
    new-instance v0, Lcom/avos/avoscloud/AVSession$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/avos/avoscloud/AVSession$3;-><init>(Lcom/avos/avoscloud/AVSession;ZIZ)V

    .line 250
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 251
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/avos/avoscloud/AVSession$4;

    invoke-direct {p2, p0, v0}, Lcom/avos/avoscloud/AVSession$4;-><init>(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/SignatureCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 258
    :cond_0
    new-instance p1, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public static setUnreadNotificationEnabled(Z)V
    .locals 0

    .line 422
    sput-boolean p0, Lcom/avos/avoscloud/AVSession;->onlyPushCount:Z

    return-void
.end method


# virtual methods
.method public checkSessionStatus()Lcom/avos/avoscloud/AVException;
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x77

    const-string v2, "Please call AVIMClient.open() first"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection Lost"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connecting to server"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public cleanUp()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVSession;->updateRealtimeSessionToken(Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->clear()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->clear()V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationHolderCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 275
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avospush/session/MessageReceiptCache;->clean(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    const v0, -0x10001

    .line 263
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVSession;->close(I)V

    return-void
.end method

.method protected close(I)V
    .locals 7

    .line 283
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getTagCacheInstance()Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->removeSession(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->removeIMSessionToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->cleanUp()V

    .line 289
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 295
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v3, 0x0

    .line 294
    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 296
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const-string v1, "close"

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 296
    invoke-static {v0, v3, v1, v3, v2}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;Ljava/lang/Integer;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 304
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/16 v5, 0x2715

    move-object v3, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V

    :goto_0
    return-void
.end method

.method protected conversationQuery(Ljava/util/Map;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 334
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Connection Lost"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p2, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 341
    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 340
    invoke-static {v2, v3, v1, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 343
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/avos/avospush/session/ConversationQueryPacket;->getConversationQueryPacket(Ljava/lang/String;Ljava/util/Map;I)Lcom/avos/avospush/session/ConversationQueryPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method protected createConversation(Ljava/util/List;Ljava/util/Map;ZZZIZI)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZZIZI)V"
        }
    .end annotation

    move-object v10, p0

    .line 383
    iget-object v0, v10, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection Lost"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 385
    iget-object v1, v10, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    iget-object v2, v10, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v3

    move-object p1, v1

    move-object p2, v2

    move-object p3, p0

    move-object/from16 p4, v0

    move/from16 p5, v3

    move/from16 p6, p8

    invoke-virtual/range {p1 .. p6}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V

    return-void

    .line 389
    :cond_0
    new-instance v11, Lcom/avos/avoscloud/AVSession$5;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/avos/avoscloud/AVSession$5;-><init>(Lcom/avos/avoscloud/AVSession;ILjava/util/List;Ljava/util/Map;ZZZIZ)V

    .line 414
    new-instance v0, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {v0, v11}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationHolderCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVConversationHolder;

    if-eqz v0, :cond_0

    return-object v0

    .line 368
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVConversationHolder;

    invoke-direct {v0, p1, p0, p2}, Lcom/avos/avoscloud/AVConversationHolder;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSession;I)V

    .line 369
    iget-object p2, p0, Lcom/avos/avoscloud/AVSession;->conversationHolderCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 370
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVConversationHolder;

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method getLastNotifyTime()J
    .locals 5

    .line 434
    iget-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastNotifyTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 435
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 436
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lastNotifyTime"

    .line 435
    invoke-virtual {v0, v1, v3, v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastNotifyTime:J

    .line 438
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastNotifyTime:J

    return-wide v0
.end method

.method getLastPatchTime()J
    .locals 6

    .line 455
    iget-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    const-string v2, "lastPatchTime"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 456
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 457
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 456
    invoke-virtual {v0, v1, v2, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    .line 460
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_1

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    .line 462
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    :cond_1
    iget-wide v0, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    return-wide v0
.end method

.method public getSelfPeerId()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method getUserSessionToken()Ljava/lang/String;
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->userSessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const-string v2, "avuserSessionToken"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->userSessionToken:Ljava/lang/String;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->userSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avospush/push/AVWebSocketListener;

    return-object v0
.end method

.method public open(Lcom/avos/avoscloud/AVIMClientParcel;I)V
    .locals 7

    .line 107
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVIMClientParcel;->getClientTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->tag:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVIMClientParcel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVSession;->updateUserSessionToken(Ljava/lang/String;)V

    .line 110
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/PushService;->isPushConnectionBroken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string p1, "Connection Lost"

    invoke-direct {v4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2714

    move-object v3, p0

    move v6, p2

    .line 112
    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object p1, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, p0, p2}, Lcom/avos/avoscloud/AVSessionListener;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V

    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVIMClientParcel;->isReconnection()Z

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/avos/avoscloud/AVSession;->openWithSignature(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 124
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/16 v4, 0x2714

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V

    :goto_0
    return-void
.end method

.method protected queryOnlinePeers(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 327
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "query"

    const/4 v2, 0x0

    .line 326
    invoke-static {v0, p1, v1, v2, p2}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;Ljava/lang/Integer;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object p1

    .line 328
    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    return-void
.end method

.method protected removeConversation(Ljava/lang/String;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationHolderCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public renewRealtimeSesionToken(I)V
    .locals 3

    .line 140
    new-instance v0, Lcom/avos/avoscloud/AVSession$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVSession$1;-><init>(Lcom/avos/avoscloud/AVSession;I)V

    .line 170
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/avos/avoscloud/AVSession$2;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVSession$2;-><init>(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/SignatureCallback;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Lcom/avos/avoscloud/SignatureTask;

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method reopen()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->getIMSessionToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVSession;->openWithSessionToken(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVSession;->openWithSignature(IZZ)V

    :goto_0
    return-void
.end method

.method public sendUnreadMessagesAck(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 498
    sget-boolean v0, Lcom/avos/avoscloud/AVSession;->onlyPushCount:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 499
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 500
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 501
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 502
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/avos/avospush/session/ConversationAckPacket;->getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/avos/avospush/session/ConversationAckPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    :cond_2
    return-void
.end method

.method protected setServerAckReceived(J)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method protected storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 311
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 312
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    .line 311
    invoke-static {v1, v2, p1, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    return-void
.end method

.method updateLastNotifyTime(J)V
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getLastNotifyTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 444
    iput-wide p1, p0, Lcom/avos/avoscloud/AVSession;->lastNotifyTime:J

    .line 445
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lastNotifyTime"

    invoke-virtual {v0, v1, p2, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method updateLastPatchTime(J)V
    .locals 3

    .line 468
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getLastPatchTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 470
    iput-wide p1, p0, Lcom/avos/avoscloud/AVSession;->lastPatchTime:J

    .line 471
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lastPatchTime"

    invoke-virtual {v0, v1, p2, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method updateRealtimeSessionToken(Ljava/lang/String;I)V
    .locals 4

    .line 184
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->realtimeSessionToken:Ljava/lang/String;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/AVSession;->realtimeSessionTokenExpired:J

    .line 186
    iget-object p2, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 188
    iget-wide v0, p0, Lcom/avos/avoscloud/AVSession;->realtimeSessionTokenExpired:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->updateRealtimeSessionToken(Ljava/lang/String;J)V

    .line 190
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->removeIMSessionToken(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    iget-wide v0, p0, Lcom/avos/avoscloud/AVSession;->realtimeSessionTokenExpired:J

    invoke-static {p2, p1, v0, v1}, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->addIMSessionToken(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method updateUserSessionToken(Ljava/lang/String;)V
    .locals 3

    .line 484
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->userSessionToken:Ljava/lang/String;

    .line 485
    iget-object p1, p0, Lcom/avos/avoscloud/AVSession;->userSessionToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 486
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->userSessionToken:Ljava/lang/String;

    const-string v2, "avuserSessionToken"

    invoke-virtual {p1, v0, v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
