.class public Lcom/koushikdutta/async/FileDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FileDataEmitter.java"


# instance fields
.field callback:Lcom/koushikdutta/async/callback/DataCallback;

.field channel:Ljava/nio/channels/FileChannel;

.field file:Ljava/io/File;

.field paused:Z

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field pumper:Ljava/lang/Runnable;

.field server:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    .line 60
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 62
    new-instance v0, Lcom/koushikdutta/async/FileDataEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/FileDataEmitter$1;-><init>(Lcom/koushikdutta/async/FileDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->pumper:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 20
    iput-object p2, p0, Lcom/koushikdutta/async/FileDataEmitter;->file:Ljava/io/File;

    .line 21
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    .line 22
    iget-boolean p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    if-nez p1, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->doResume()V

    :cond_0
    return-void
.end method

.method private doResume()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter;->pumper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter;->channel:Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 57
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    .line 51
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->doResume()V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method
