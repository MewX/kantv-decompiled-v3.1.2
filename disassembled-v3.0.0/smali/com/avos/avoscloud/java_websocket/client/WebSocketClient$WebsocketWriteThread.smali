.class Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebsocketWriteThread;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebsocketWriteThread"
.end annotation


# instance fields
.field engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

.field ostream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/java_websocket/WebSocketImpl;Ljava/io/OutputStream;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebsocketWriteThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    .line 356
    iput-object p2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebsocketWriteThread;->ostream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 360
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 362
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebsocketWriteThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    iget-object v0, v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 364
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebsocketWriteThread;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 365
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebsocketWriteThread;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 368
    :catch_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebsocketWriteThread;->engine:Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;->eot()V

    :catch_1
    :cond_0
    return-void
.end method
