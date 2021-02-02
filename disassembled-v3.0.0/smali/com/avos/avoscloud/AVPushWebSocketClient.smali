.class public Lcom/avos/avoscloud/AVPushWebSocketClient;
.super Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;
.source "AVPushWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;
    }
.end annotation


# static fields
.field private static final HEADER_SNI_HOST:Ljava/lang/String; = "Host"

.field private static final HEADER_SUB_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"

.field private static final PING_TIMEOUT_CODE:I = 0xbb8


# instance fields
.field private final RECONNECT_INTERVAL:J

.field destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private heartBeatPolicy:Lcom/avos/avoscloud/HeartBeatPolicy;

.field receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

.field reconnectTask:Ljava/lang/Runnable;

.field sessionCache:Landroid/net/SSLSessionCache;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;Ljava/lang/String;Z)V
    .locals 3

    .line 54
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_17;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_17;-><init>()V

    new-instance v1, Lcom/avos/avoscloud/AVPushWebSocketClient$2;

    invoke-direct {v1, p3}, Lcom/avos/avoscloud/AVPushWebSocketClient$2;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    const-wide/16 v0, 0x2710

    .line 40
    iput-wide v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->RECONNECT_INTERVAL:J

    .line 42
    new-instance v0, Lcom/avos/avoscloud/AVPushWebSocketClient$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVPushWebSocketClient$1;-><init>(Lcom/avos/avoscloud/AVPushWebSocketClient;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->reconnectTask:Ljava/lang/Runnable;

    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trying to connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", subProtocol="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->initHeartBeatPolicy()V

    if-eqz p4, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->setSocket()V

    .line 66
    :cond_1
    iput-object p2, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    return-void
.end method

.method private initHeartBeatPolicy()V
    .locals 1

    .line 70
    new-instance v0, Lcom/avos/avoscloud/AVPushWebSocketClient$3;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVPushWebSocketClient$3;-><init>(Lcom/avos/avoscloud/AVPushWebSocketClient;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->heartBeatPolicy:Lcom/avos/avoscloud/HeartBeatPolicy;

    return-void
.end method

.method private setSocket()V
    .locals 5

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "wss"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->sessionCache:Landroid/net/SSLSessionCache;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/net/SSLSessionCache;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->sessionCache:Landroid/net/SSLSessionCache;

    :cond_0
    const/16 v0, 0x1388

    .line 92
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->sessionCache:Landroid/net/SSLSessionCache;

    invoke-static {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 93
    invoke-virtual {v0}, Landroid/net/SSLCertificateSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 94
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    .line 95
    invoke-virtual {v0, v1, v4}, Landroid/net/SSLCertificateSocketFactory;->setUseSessionTickets(Ljava/net/Socket;Z)V

    .line 97
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    instance-of v0, v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 99
    :try_start_1
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 105
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVPushWebSocketClient;->setSocket(Ljava/net/Socket;)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->setSocket(Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 119
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "Socket Error"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected cancelReconnect()V
    .locals 2

    .line 194
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->reconnectTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected destroy()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->cancelReconnect()V

    .line 200
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->heartBeatPolicy:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-virtual {v0}, Lcom/avos/avoscloud/HeartBeatPolicy;->stopHeartbeat()V

    return-void
.end method

.method public onClose(ILjava/lang/String;Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->heartBeatPolicy:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-virtual {v0}, Lcom/avos/avoscloud/HeartBeatPolicy;->stopHeartbeat()V

    .line 148
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 149
    invoke-interface {v0, v1}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->processSessionsStatus(Z)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    if-eqz v0, :cond_1

    .line 152
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->processConnectionStatus(Lcom/avos/avoscloud/AVException;)V

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClose(). local disconnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    const/16 p2, 0x3ee

    if-eq p1, p2, :cond_3

    const/16 p2, 0xbb8

    if-eq p1, p2, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->scheduleReconnect()V

    goto :goto_0

    :cond_2
    const-string p1, "connection unhealthy"

    .line 170
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->reconnect()V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->scheduleReconnect()V

    goto :goto_0

    :cond_4
    const-string p1, "connection refused"

    .line 157
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 159
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    if-eqz p1, :cond_6

    .line 160
    invoke-interface {p1}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->processRemoteServerNotAvailable()V

    goto :goto_0

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->scheduleReconnect()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    invoke-interface {p1}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->processRemoteServerNotAvailable()V

    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p1}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->processCommand(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public onOpen(Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->cancelReconnect()V

    .line 126
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->heartBeatPolicy:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-virtual {p1}, Lcom/avos/avoscloud/HeartBeatPolicy;->startHeartbeat()V

    .line 127
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->loginCmd()V

    .line 129
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->processConnectionStatus(Lcom/avos/avoscloud/AVException;)V

    .line 130
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->receiver:Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;->processSessionsStatus(Z)V

    :cond_0
    const-string p1, "onOpen()"

    .line 132
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onWebsocketPong(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onWebsocketPong(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    .line 235
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->heartBeatPolicy:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-virtual {p1}, Lcom/avos/avoscloud/HeartBeatPolicy;->onPong()V

    return-void
.end method

.method protected ping()V
    .locals 2

    .line 216
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    const/4 v1, 0x1

    .line 217
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->sendFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    return-void
.end method

.method protected declared-synchronized reconnect()V
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->connect()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->scheduleReconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected scheduleReconnect()V
    .locals 4

    .line 189
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient;->reconnectTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public send(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 2

    .line 222
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uplink : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->getGenericCommand()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$GenericCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->getGenericCommand()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVPushWebSocketClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
