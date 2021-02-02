.class public Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;
.super Ljava/lang/Object;
.source "SSLSocketChannel2.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Lcom/avos/avoscloud/java_websocket/WrappedByteChannel;


# static fields
.field protected static emptybuffer:Ljava/nio/ByteBuffer;


# instance fields
.field protected engineResult:Ljavax/net/ssl/SSLEngineResult;

.field protected exec:Ljava/util/concurrent/ExecutorService;

.field protected inCrypt:Ljava/nio/ByteBuffer;

.field protected inData:Ljava/nio/ByteBuffer;

.field private lastReadEngineStatus:Ljavax/net/ssl/SSLEngineResult$Status;

.field protected outCrypt:Ljava/nio/ByteBuffer;

.field protected selectionKey:Ljava/nio/channels/SelectionKey;

.field protected socketChannel:Ljava/nio/channels/SocketChannel;

.field protected sslEngine:Ljavax/net/ssl/SSLEngine;

.field protected tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->lastReadEngineStatus:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 59
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 60
    iput-object p2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 61
    iput-object p3, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->exec:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    if-eqz p4, :cond_0

    .line 65
    invoke-virtual {p4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p4, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 66
    iput-object p4, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->selectionKey:Ljava/nio/channels/SelectionKey;

    .line 68
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V

    .line 70
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->handshake()V

    return-void

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private consumeFutureUninterruptible(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 126
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->consumeDelegatedTasks()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 89
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->consumeFutureUninterruptible(Ljava/util/concurrent/Future;)V

    :cond_2
    return-void

    .line 99
    :cond_3
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_4

    .line 100
    sget-object v0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->write(Ljava/nio/ByteBuffer;)I

    .line 104
    :cond_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->read(Ljava/nio/ByteBuffer;)I

    .line 108
    :cond_5
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_6

    .line 110
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V

    :cond_6
    return-void
.end method

.method private handshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    return-void
.end method

.method private transferTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 297
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 298
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 301
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 303
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 307
    :cond_1
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return v0
.end method

.method private declared-synchronized unwrap()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->engineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 247
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->engineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->lastReadEngineStatus:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 248
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 250
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->lastReadEngineStatus:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 254
    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    .line 255
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->unwrap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 261
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 262
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->write(Ljava/nio/ByteBuffer;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    return-void
.end method

.method protected consumeDelegatedTasks()V
    .locals 3

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->tasks:Ljava/util/List;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected createBuffers(Ljavax/net/ssl/SSLSession;)V
    .locals 2

    .line 140
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 141
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    .line 143
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 144
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    .line 145
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    .line 146
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 149
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 151
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 153
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    .line 155
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 157
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 158
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 159
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 160
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isNeedRead()Z
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->lastReadEngineStatus:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

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

.method public isNeedWrite()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->transferTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->lastReadEngineStatus:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_7

    .line 220
    :cond_6
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    return v2

    .line 225
    :cond_7
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 227
    invoke-direct {p0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->unwrap()V

    if-eqz p1, :cond_8

    .line 230
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->transferTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->engineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    if-nez v0, :cond_9

    .line 234
    invoke-virtual {p0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 235
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 238
    :cond_8
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->engineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    :cond_9
    return v0
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 169
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->engineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 170
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->engineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 179
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 181
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 182
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 183
    iput-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    .line 184
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_1

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->engineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    :cond_3
    :goto_1
    return v0
.end method

.method public writeMore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
