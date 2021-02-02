.class Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;
.super Ljava/lang/Object;
.source "WebSocketReadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

.field istream:Ljava/io/InputStream;

.field wsl:Lcom/avos/avoscloud/java_websocket/WebSocketListener;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Lcom/avos/avoscloud/java_websocket/WebSocketImpl;Ljava/io/InputStream;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    .line 21
    iput-object p3, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->istream:Ljava/io/InputStream;

    .line 22
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->wsl:Lcom/avos/avoscloud/java_websocket/WebSocketListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 27
    sget v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->RCVBUF:I

    new-array v0, v0, [B

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "WebsocketReadThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 31
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    .line 32
    invoke-virtual {v1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->istream:Ljava/io/InputStream;

    .line 33
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->eot()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->wsl:Lcom/avos/avoscloud/java_websocket/WebSocketListener;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-interface {v1, v2, v0}, Lcom/avos/avoscloud/java_websocket/WebSocketListener;->onWebsocketError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 43
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_1

    .line 38
    :catch_1
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketReadThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->eot()V

    :goto_1
    return-void
.end method
