.class public abstract Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;
.super Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/avos/avoscloud/java_websocket/WebSocket;


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectTimeout:I

.field private draft:Lcom/avos/avoscloud/java_websocket/drafts/Draft;

.field private transient engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private istream:Ljava/io/InputStream;

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private readThread:Ljava/lang/Thread;

.field private socket:Ljava/net/Socket;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/avos/avoscloud/java_websocket/drafts/Draft_17;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft_17;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/avos/avoscloud/java_websocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/avos/avoscloud/java_websocket/drafts/Draft;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 38
    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    .line 40
    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 46
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 56
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 58
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connectTimeout:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 82
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 83
    iput-object p2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->draft:Lcom/avos/avoscloud/java_websocket/drafts/Draft;

    .line 84
    iput-object p3, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 85
    iput p4, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connectTimeout:I

    .line 86
    new-instance p1, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-direct {p1, p0, p2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Lcom/avos/avoscloud/java_websocket/drafts/Draft;)V

    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private getPort()I
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    const-string v1, "ws"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    return v0

    .line 198
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkonow scheme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method private sendHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    if-eqz v1, :cond_2

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->getPort()I

    move-result v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v2, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v2}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 218
    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Client;->setResourceDescriptor(Ljava/lang/String;)V

    const-string v0, "Host"

    .line 219
    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 221
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->startHandshake(Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshakeBuilder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->close(I)V

    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {p1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->close()V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->close()V

    .line 143
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 113
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->readThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->draft:Lcom/avos/avoscloud/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/drafts/Draft;->copyInstance()Lcom/avos/avoscloud/java_websocket/drafts/Draft;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->draft:Lcom/avos/avoscloud/java_websocket/drafts/Draft;

    .line 115
    new-instance v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->draft:Lcom/avos/avoscloud/java_websocket/drafts/Draft;

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Lcom/avos/avoscloud/java_websocket/drafts/Draft;)V

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connect()V

    .line 127
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 128
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public getConnection()Lcom/avos/avoscloud/java_websocket/WebSocket;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    return-object v0
.end method

.method public getDraft()Lcom/avos/avoscloud/java_websocket/drafts/Draft;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->draft:Lcom/avos/avoscloud/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReadyState()Lcom/avos/avoscloud/java_websocket/WebSocket$READYSTATE;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->getReadyState()Lcom/avos/avoscloud/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onFragment(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V
.end method

.method public final onWebsocketClose(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 268
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 269
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 272
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p0, p0, p1}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onWebsocketError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

.method public onWebsocketCloseInitiated(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 295
    invoke-virtual {p0, p2, p3}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onCloseInitiated(ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 300
    invoke-virtual {p0, p2, p3, p4}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onClosing(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 285
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 240
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 245
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0

    .line 250
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onFragment(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public final onWebsocketOpen(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 259
    check-cast p2, Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;

    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onOpen(Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V

    return-void
.end method

.method public final onWriteDemand(Lcom/avos/avoscloud/java_websocket/WebSocket;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->istream:Ljava/io/InputStream;

    .line 174
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    .line 176
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avos/avoscloud/java_websocket/client/WebSocketWriteThread;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    iget-object v3, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/java_websocket/client/WebSocketWriteThread;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketImpl;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 184
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    iget-object v3, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->istream:Ljava/io/InputStream;

    invoke-direct {v1, p0, v2, v3}, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Lcom/avos/avoscloud/java_websocket/WebSocketImpl;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->readThread:Ljava/lang/Thread;

    .line 187
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->readThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->onWebsocketError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 179
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->send(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->send([B)V

    return-void
.end method

.method public sendFragmentedFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->sendFragmentedFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public sendFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->sendFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 341
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    return-void

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 353
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-void

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "socket has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
