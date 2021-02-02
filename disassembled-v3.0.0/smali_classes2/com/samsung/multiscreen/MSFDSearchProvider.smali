.class public Lcom/samsung/multiscreen/MSFDSearchProvider;
.super Lcom/samsung/multiscreen/SearchProvider;
.source "MSFDSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/MSFDSearchProvider$FutureRunnable;
    }
.end annotation


# static fields
.field private static final DISCOVER_INTERVAL:J = 0x3e8L

.field private static final DISCOVER_START_DELAY:J = 0x64L

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_SID:Ljava/lang/String; = "sid"

.field private static final KEY_TTL:Ljava/lang/String; = "ttl"

.field private static final KEY_TYPE_STATE:Ljava/lang/String; = "type"

.field private static final KEY_URI:Ljava/lang/String; = "uri"

.field private static final KEY_VERSION_1:Ljava/lang/String; = "v1"

.field private static final KEY_VERSION_2:Ljava/lang/String; = "v2"

.field private static final MAX_DISCOVER_NUM:I = 0x3

.field private static final MAX_GET_SERVICE_INFO_WAIT_TIME:J = 0x3a98L

.field private static final MULTICAST_GROUP:Ljava/lang/String; = "224.0.0.7"

.field private static final MULTICAST_PORT:I = 0x1f41

.field private static final SERVICE_CHECK_TIMEOUT:I = 0x7d0

.field private static final SOCKET_TIMEOUT:I = 0x2710

.field private static final STATE_ALIVE:Ljava/lang/String; = "alive"

.field private static final STATE_DOWN:Ljava/lang/String; = "down"

.field private static final STATE_UP:Ljava/lang/String; = "up"

.field private static final TAG:Ljava/lang/String; = "MSFDSearchProvider"

.field private static final TYPE_DISCOVER:Ljava/lang/String; = "discover"

.field private static final discoverMessage:Ljava/lang/String;

.field private static volatile multicastInetAddress:Ljava/net/InetAddress;


# instance fields
.field private final aliveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private discoverPacket:Ljava/net/DatagramPacket;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private receive:Z

.field private final receiveHandler:Ljava/lang/Runnable;

.field private receiverThread:Ljava/lang/Thread;

.field private volatile socket:Ljava/net/MulticastSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "discover"

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v0}, Lcom/samsung/multiscreen/util/JSONUtil;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/samsung/multiscreen/SearchProvider;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverPacket:Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receive:Z

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->aliveMap:Ljava/util/Map;

    .line 105
    new-instance v0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/MSFDSearchProvider$1;-><init>(Lcom/samsung/multiscreen/MSFDSearchProvider;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receiveHandler:Ljava/lang/Runnable;

    .line 249
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V
    .locals 0

    .line 253
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/SearchProvider;-><init>(Lcom/samsung/multiscreen/Search$SearchListener;)V

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverPacket:Ljava/net/DatagramPacket;

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receive:Z

    .line 102
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->aliveMap:Ljava/util/Map;

    .line 105
    new-instance p2, Lcom/samsung/multiscreen/MSFDSearchProvider$1;

    invoke-direct {p2, p0}, Lcom/samsung/multiscreen/MSFDSearchProvider$1;-><init>(Lcom/samsung/multiscreen/MSFDSearchProvider;)V

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receiveHandler:Ljava/lang/Runnable;

    .line 255
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/multiscreen/MSFDSearchProvider;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->aliveMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/DatagramPacket;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverPacket:Ljava/net/DatagramPacket;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private acquireMulticastLock()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->context:Landroid/content/Context;

    const-string v1, "MSFDSearchProvider"

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/util/NetUtil;->acquireMulticastLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/multiscreen/SearchProvider;
    .locals 1

    .line 378
    new-instance v0, Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/MSFDSearchProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/SearchProvider;
    .locals 1

    .line 383
    new-instance v0, Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/MSFDSearchProvider;-><init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V

    return-object v0
.end method

.method static getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)",
            "Lcom/samsung/multiscreen/ProviderThread;"
        }
    .end annotation

    move-object/from16 v8, p2

    const-string v0, "224.0.0.7"

    const-string v9, "MSFDSearchProvider"

    const/4 v10, 0x0

    move-object/from16 v1, p0

    .line 392
    :try_start_0
    invoke-static {v1, v9}, Lcom/samsung/multiscreen/util/NetUtil;->acquireMulticastLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz v8, :cond_0

    .line 395
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not fetch MulticastLock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/Exception;)Lcom/samsung/multiscreen/Error;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_0
    return-object v10

    .line 400
    :cond_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 401
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x1f41

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 402
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v3, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v3, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 405
    new-instance v11, Ljava/net/MulticastSocket;

    invoke-direct {v11, v2}, Ljava/net/MulticastSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 408
    :try_start_1
    invoke-virtual {v11, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 410
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v12

    .line 414
    new-instance v14, Lcom/samsung/multiscreen/MSFDSearchProvider$4;

    new-instance v13, Lcom/samsung/multiscreen/MSFDSearchProvider$3;

    move-object v1, v13

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/samsung/multiscreen/MSFDSearchProvider$3;-><init>(Ljava/net/MulticastSocket;Ljava/lang/String;Lcom/samsung/multiscreen/Result;Ljava/net/InetAddress;Landroid/net/wifi/WifiManager$MulticastLock;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-direct {v14, v13}, Lcom/samsung/multiscreen/MSFDSearchProvider$4;-><init>(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 530
    :try_start_2
    invoke-virtual {v14}, Lcom/samsung/multiscreen/ProviderThread;->start()V

    .line 533
    new-instance v1, Lcom/samsung/multiscreen/MSFDSearchProvider$5;

    invoke-direct {v1, v11, v8}, Lcom/samsung/multiscreen/MSFDSearchProvider$5;-><init>(Ljava/net/MulticastSocket;Lcom/samsung/multiscreen/Result;)V

    const-wide/16 v2, 0x3a98

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 549
    new-instance v1, Lcom/samsung/multiscreen/MSFDSearchProvider$6;

    invoke-direct {v1, v11, v0}, Lcom/samsung/multiscreen/MSFDSearchProvider$6;-><init>(Ljava/net/MulticastSocket;Ljava/net/DatagramPacket;)V

    const-wide/16 v2, 0x64

    const-wide/16 v16, 0x3e8

    .line 572
    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v13, v1

    move-object v4, v14

    move-wide v14, v2

    :try_start_3
    invoke-interface/range {v12 .. v18}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 573
    invoke-interface {v1, v0}, Lcom/samsung/multiscreen/MSFDSearchProvider$FutureRunnable;->setFuture(Ljava/util/concurrent/ScheduledFuture;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v14, v4

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v14, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v14

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v14, v10

    :goto_0
    move-object v10, v11

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v14, v10

    .line 575
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_2

    .line 576
    invoke-virtual {v10}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    invoke-virtual {v10}, Ljava/net/MulticastSocket;->close()V

    .line 579
    :cond_2
    new-instance v1, Lcom/samsung/multiscreen/MSFDSearchProvider$7;

    invoke-direct {v1, v8, v0}, Lcom/samsung/multiscreen/MSFDSearchProvider$7;-><init>(Lcom/samsung/multiscreen/Result;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :goto_2
    return-object v14
.end method

.method private setupDiscovery()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "224.0.0.7"

    .line 261
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastInetAddress:Ljava/net/InetAddress;

    .line 262
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x1f41

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 263
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v2, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverPacket:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 10

    .line 269
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->searching:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->stop()Z

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->clearServices()V

    .line 274
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->aliveMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->discoverPacket:Ljava/net/DatagramPacket;

    if-nez v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->setupDiscovery()V

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->acquireMulticastLock()V

    .line 282
    new-instance v0, Ljava/net/MulticastSocket;

    const/16 v1, 0x1f41

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    .line 283
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->setBroadcast(Z)V

    .line 284
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 288
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    new-instance v3, Ljava/net/InetSocketAddress;

    sget-object v4, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastInetAddress:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const-string v1, "eth0"

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 290
    iput-boolean v2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receive:Z

    .line 291
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receiveHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receiverThread:Ljava/lang/Thread;

    .line 292
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 295
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 296
    iget-object v3, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/samsung/multiscreen/MSFDSearchProvider$2;

    invoke-direct {v4, p0}, Lcom/samsung/multiscreen/MSFDSearchProvider$2;-><init>(Lcom/samsung/multiscreen/MSFDSearchProvider;)V

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x3e8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 318
    iput-boolean v2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->searching:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 320
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSFDSearchProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->searching:Z

    if-nez v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-static {v0}, Lcom/samsung/multiscreen/util/NetUtil;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    :cond_3
    return-void
.end method

.method public stop()Z
    .locals 5

    .line 336
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->searching:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 339
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->searching:Z

    .line 341
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-static {v0}, Lcom/samsung/multiscreen/util/NetUtil;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 346
    iput-object v2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 350
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receive:Z

    .line 351
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    const-string v1, "MSFDSearchProvider"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastInetAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->socket:Ljava/net/MulticastSocket;

    sget-object v3, Lcom/samsung/multiscreen/MSFDSearchProvider;->multicastInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v3}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receiverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x3e8

    .line 361
    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 363
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_1
    iput-object v2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider;->receiverThread:Ljava/lang/Thread;

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
