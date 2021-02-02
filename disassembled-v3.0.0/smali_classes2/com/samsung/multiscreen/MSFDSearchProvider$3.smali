.class final Lcom/samsung/multiscreen/MSFDSearchProvider$3;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private processing:Z

.field private searching:Z

.field final synthetic val$executor:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic val$multicastInetAddress:Ljava/net/InetAddress;

.field final synthetic val$multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;

.field final synthetic val$searchId:Ljava/lang/String;

.field final synthetic val$threadSocket:Ljava/net/MulticastSocket;


# direct methods
.method constructor <init>(Ljava/net/MulticastSocket;Ljava/lang/String;Lcom/samsung/multiscreen/Result;Ljava/net/InetAddress;Landroid/net/wifi/WifiManager$MulticastLock;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$threadSocket:Ljava/net/MulticastSocket;

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$searchId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$result:Lcom/samsung/multiscreen/Result;

    iput-object p4, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$multicastInetAddress:Ljava/net/InetAddress;

    iput-object p5, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    iput-object p6, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 416
    iput-boolean p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->searching:Z

    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->processing:Z

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/multiscreen/MSFDSearchProvider$3;Z)Z
    .locals 0

    .line 414
    iput-boolean p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->searching:Z

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/multiscreen/MSFDSearchProvider$3;Z)Z
    .locals 0

    .line 414
    iput-boolean p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->processing:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0x400

    .line 422
    :try_start_0
    new-array v0, v0, [B

    .line 423
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 425
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->searching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MSFDSearchProvider"

    if-eqz v0, :cond_6

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    .line 428
    :try_start_2
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$threadSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 429
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 431
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->processing:Z

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 441
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 442
    invoke-static {v0}, Lcom/samsung/multiscreen/util/JSONUtil;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    .line 451
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "discover"

    const-string v4, "type"

    .line 452
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "sid"

    .line 456
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 457
    iget-object v5, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$searchId:Ljava/lang/String;

    .line 458
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 459
    iput-boolean v3, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->processing:Z

    const-string v3, "alive"

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "up"

    .line 462
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "data"

    .line 465
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_5

    const-string v3, "v2"

    .line 467
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_5

    const-string v3, "uri"

    .line 469
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 471
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v3, 0x7d0

    .line 473
    new-instance v4, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;

    invoke-direct {v4, p0}, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;-><init>(Lcom/samsung/multiscreen/MSFDSearchProvider$3;)V

    invoke-static {v0, v3, v4}, Lcom/samsung/multiscreen/Service;->getByURI(Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V

    goto/16 :goto_0

    .line 499
    :cond_5
    iput-boolean v6, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->processing:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 444
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 502
    :try_start_5
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 508
    :cond_6
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$threadSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$multicastInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 510
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProviderThread exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_2
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-static {v0}, Lcom/samsung/multiscreen/util/NetUtil;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 517
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$threadSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 518
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$threadSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 517
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$threadSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 518
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$threadSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 520
    :cond_8
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
