.class public Lcom/samsung/multiscreen/MDNSSearchProvider;
.super Lcom/samsung/multiscreen/SearchProvider;
.source "MDNSSearchProvider.java"


# static fields
.field private static final MAX_GET_SERVICE_INFO_WAIT_TIME:J = 0x3a98L

.field private static final SERVICE_CHECK_TIMEOUT:I = 0x7d0

.field static final SERVICE_TYPE:Ljava/lang/String; = "_samsungmsf._tcp.local."

.field private static final TAG:Ljava/lang/String; = "MDNSSearchProvider"


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile jmdns:Ljavax/jmdns/JmDNS;

.field private volatile multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final serviceListener:Ljavax/jmdns/ServiceListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/samsung/multiscreen/SearchProvider;-><init>()V

    .line 62
    new-instance v0, Lcom/samsung/multiscreen/MDNSSearchProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/MDNSSearchProvider$1;-><init>(Lcom/samsung/multiscreen/MDNSSearchProvider;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->serviceListener:Ljavax/jmdns/ServiceListener;

    .line 111
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V
    .locals 0

    .line 115
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/SearchProvider;-><init>(Lcom/samsung/multiscreen/Search$SearchListener;)V

    .line 62
    new-instance p2, Lcom/samsung/multiscreen/MDNSSearchProvider$1;

    invoke-direct {p2, p0}, Lcom/samsung/multiscreen/MDNSSearchProvider$1;-><init>(Lcom/samsung/multiscreen/MDNSSearchProvider;)V

    iput-object p2, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->serviceListener:Ljavax/jmdns/ServiceListener;

    .line 117
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/multiscreen/MDNSSearchProvider;)Ljavax/jmdns/JmDNS;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->jmdns:Ljavax/jmdns/JmDNS;

    return-object p0
.end method

.method private acquireMulticastLock()Z
    .locals 2

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->context:Landroid/content/Context;

    const-string v1, "MDNSSearchProvider"

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/util/NetUtil;->acquireMulticastLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/multiscreen/SearchProvider;
    .locals 1

    .line 152
    new-instance v0, Lcom/samsung/multiscreen/MDNSSearchProvider;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/SearchProvider;
    .locals 1

    .line 157
    new-instance v0, Lcom/samsung/multiscreen/MDNSSearchProvider;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/MDNSSearchProvider;-><init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V

    return-object v0
.end method

.method private createJmDNS()Z
    .locals 3

    .line 251
    invoke-direct {p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->destroyJmDNS()Z

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/multiscreen/util/NetUtil;->getDeviceIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object v0

    .line 257
    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->jmdns:Ljavax/jmdns/JmDNS;

    .line 258
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->jmdns:Ljavax/jmdns/JmDNS;

    const-string v1, "_samsungmsf._tcp.local."

    iget-object v2, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->serviceListener:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized destroyJmDNS()Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->jmdns:Ljavax/jmdns/JmDNS;

    const-string v2, "_samsungmsf._tcp.local."

    iget-object v3, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->serviceListener:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v1, v2, v3}, Ljavax/jmdns/JmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :try_start_1
    iget-object v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 276
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 278
    iput-object v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->jmdns:Ljavax/jmdns/JmDNS;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
    .locals 2
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

    .line 162
    new-instance v0, Lcom/samsung/multiscreen/MDNSSearchProvider$3;

    new-instance v1, Lcom/samsung/multiscreen/MDNSSearchProvider$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/multiscreen/MDNSSearchProvider$2;-><init>(Landroid/content/Context;Lcom/samsung/multiscreen/Result;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/multiscreen/MDNSSearchProvider$3;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v0}, Lcom/samsung/multiscreen/ProviderThread;->start()V

    return-object v0
.end method

.method static getService(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Service;
    .locals 8

    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 288
    invoke-virtual/range {v2 .. v7}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {v0}, Lcom/samsung/multiscreen/Service;->create(Ljavax/jmdns/ServiceInfo;)Lcom/samsung/multiscreen/Service;

    move-result-object p0

    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private releaseMulticastLock()Z
    .locals 1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-static {v0}, Lcom/samsung/multiscreen/util/NetUtil;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->searching:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->stop()Z

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->clearServices()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->acquireMulticastLock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->createJmDNS()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->searching:Z

    return-void
.end method

.method public stop()Z
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->searching:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider;->searching:Z

    .line 139
    invoke-direct {p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->destroyJmDNS()Z

    .line 140
    invoke-direct {p0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->releaseMulticastLock()Z

    const/4 v0, 0x1

    return v0
.end method
