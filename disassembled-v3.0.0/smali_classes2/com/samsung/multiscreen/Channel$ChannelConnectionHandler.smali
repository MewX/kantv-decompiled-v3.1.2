.class Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelConnectionHandler"
.end annotation


# static fields
.field static final LIBVERSION_CHECK:Ljava/lang/String; = "msfVersion2"

.field static final PING:Ljava/lang/String; = "channel.ping"

.field private static final PONG:Ljava/lang/String; = "pong"


# instance fields
.field private average:D

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private longestRT:J

.field private numPings:I

.field private final pingCheckRunnable:Ljava/lang/Runnable;

.field private pingSent:J

.field private pingTimeout:I

.field private running:Z

.field private startTime:J

.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;


# direct methods
.method public constructor <init>(Lcom/samsung/multiscreen/Channel;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3a98

    .line 1301
    iput p1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingTimeout:I

    const/4 p1, 0x0

    .line 1307
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1309
    new-instance p1, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler$1;

    invoke-direct {p1, p0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler$1;-><init>(Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;)V

    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingCheckRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 1335
    iput-boolean p1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->running:Z

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;)V
    .locals 0

    .line 1295
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingCheck()V

    return-void
.end method

.method private pingCheck()V
    .locals 6

    .line 1324
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1325
    invoke-static {}, Lcom/samsung/multiscreen/Channel;->access$1400()J

    move-result-wide v2

    iget v4, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping not received in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Channel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$200(Lcom/samsung/multiscreen/Channel;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->close()V

    goto :goto_0

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$900(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Clients;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    const-string v2, "channel.ping"

    const-string v3, "pong"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/multiscreen/Channel;->publish(Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/multiscreen/Client;)V

    .line 1331
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingSent:J

    :goto_0
    return-void
.end method


# virtual methods
.method calculateAverageRT()V
    .locals 6

    .line 1344
    invoke-static {}, Lcom/samsung/multiscreen/Channel;->access$1400()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingSent:J

    sub-long/2addr v0, v2

    .line 1345
    iget-wide v2, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->longestRT:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1346
    iput-wide v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->longestRT:J

    .line 1348
    :cond_0
    iget v2, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->numPings:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->numPings:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->average:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    iget v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->numPings:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->average:D

    return-void
.end method

.method public getPingTimeout()I
    .locals 1

    .line 1301
    iget v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingTimeout:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1335
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->running:Z

    return v0
.end method

.method resetLastPingReceived()V
    .locals 2

    .line 1339
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/Channel;->access$1402(J)J

    return-void
.end method

.method public setPingTimeout(I)V
    .locals 0

    .line 1302
    iput p1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingTimeout:I

    return-void
.end method

.method startPing()V
    .locals 8

    .line 1364
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->running:Z

    if-eqz v0, :cond_0

    return-void

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->stopPing()V

    const/4 v0, 0x1

    .line 1369
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->running:Z

    const/4 v0, 0x0

    .line 1371
    iput v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->numPings:I

    const-wide/16 v0, 0x0

    .line 1372
    iput-wide v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->average:D

    const-wide/16 v0, 0x0

    .line 1373
    iput-wide v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->longestRT:J

    .line 1374
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$900(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Clients;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    const-string v2, "msfVersion2"

    invoke-virtual {v0, v2, v2, v1}, Lcom/samsung/multiscreen/Channel;->publish(Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/multiscreen/Client;)V

    .line 1375
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$900(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Clients;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    const-string v2, "channel.ping"

    const-string v3, "pong"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/multiscreen/Channel;->publish(Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/multiscreen/Client;)V

    .line 1376
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->startTime:J

    .line 1377
    iget-wide v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->startTime:J

    iput-wide v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingSent:J

    .line 1379
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1380
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->pingCheckRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x1388

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method stopPing()V
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 1355
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 1356
    iput-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    const/4 v0, 0x0

    .line 1359
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->running:Z

    return-void
.end method
