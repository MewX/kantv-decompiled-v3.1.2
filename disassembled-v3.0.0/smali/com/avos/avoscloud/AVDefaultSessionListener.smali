.class public Lcom/avos/avoscloud/AVDefaultSessionListener;
.super Lcom/avos/avoscloud/AVSessionListener;
.source "AVDefaultSessionListener.java"


# instance fields
.field manager:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/avos/avoscloud/AVSessionListener;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/AVDefaultSessionListener;->manager:Lcom/avos/avoscloud/AVPushConnectionManager;

    return-void
.end method

.method private cleanSession(Lcom/avos/avoscloud/AVSession;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getTagCacheInstance()Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->removeSession(Ljava/lang/String;)V

    .line 106
    iget-object v0, p1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->cleanUp()V

    .line 109
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultSessionListener;->manager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->removeSession(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "session error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    :cond_1
    const p1, -0x10001

    if-le p5, p1, :cond_4

    const/16 p1, 0x2714

    const/4 v0, 0x0

    if-eq p4, p1, :cond_3

    const/16 p1, 0x2715

    if-eq p4, p1, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v0, p5, p3, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v0, p5, p3, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 88
    :goto_0
    sget-object p1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    if-ne p4, p1, :cond_4

    .line 89
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v0, p5, p3, p2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_4
    return-void
.end method

.method public onOnlineQuery(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/AVSession;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const p1, -0x10001

    if-eq p4, p1, :cond_0

    .line 116
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p3, "callbackOnlineClient"

    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p2, p3, p4, p1, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_0
    return-void
.end method

.method public onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/avos/avoscloud/AVDefaultSessionListener;->manager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->removeSession(Ljava/lang/String;)V

    const p1, -0x10001

    if-le p3, p1, :cond_0

    .line 99
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, p2, p3, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_0
    return-void
.end method

.method public onSessionClosedFromServer(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVDefaultSessionListener;->cleanSession(Lcom/avos/avoscloud/AVSession;)V

    .line 64
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0xc35a

    const/4 v1, 0x0

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 67
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object p2

    .line 66
    invoke-virtual {p1, v0, v1, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getTagCacheInstance()Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    move-result-object p1

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/avos/avoscloud/AVSession;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;->addSession(Ljava/lang/String;Ljava/lang/String;)V

    const p1, -0x10001

    if-le p3, p1, :cond_0

    .line 30
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, p2, p3, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_0
    return-void
.end method

.method public onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0xc356

    .line 40
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object p2

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1, v1, p2}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;)V
    .locals 2

    .line 54
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0xc357

    .line 57
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object p2

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1, v1, p2}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSessionTokenRenewed(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
    .locals 1

    const p1, -0x10001

    if-le p3, p1, :cond_0

    .line 47
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_REFRESH_TOKEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, p2, p3, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_0
    return-void
.end method
