.class public Lcom/samsung/multiscreen/Search;
.super Ljava/lang/Object;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/Search$SearchListener;,
        Lcom/samsung/multiscreen/Search$OnBleFoundListener;,
        Lcom/samsung/multiscreen/Search$OnServiceLostListener;,
        Lcom/samsung/multiscreen/Search$OnServiceFoundListener;,
        Lcom/samsung/multiscreen/Search$OnStopListener;,
        Lcom/samsung/multiscreen/Search$OnStartListener;
    }
.end annotation


# static fields
.field private static final SERVICE_CHECK_TIMEOUT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "Search"

.field private static instance:Lcom/samsung/multiscreen/Search;


# instance fields
.field private bleProvider:Lcom/samsung/multiscreen/SearchProvider;

.field private clearProviders:Z

.field private final context:Landroid/content/Context;

.field private mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

.field private numRunning:I

.field private volatile onBleFoundListener:Lcom/samsung/multiscreen/Search$OnBleFoundListener;

.field private volatile onServiceFoundListener:Lcom/samsung/multiscreen/Search$OnServiceFoundListener;

.field private volatile onServiceLostListener:Lcom/samsung/multiscreen/Search$OnServiceLostListener;

.field private volatile onStartListener:Lcom/samsung/multiscreen/Search$OnStartListener;

.field private onStartNotified:I

.field private volatile onStopListener:Lcom/samsung/multiscreen/Search$OnStopListener;

.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/SearchProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final removedProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/SearchProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Service;",
            ">;"
        }
    .end annotation
.end field

.field private startingBle:Z

.field private stoppingBle:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/Search;->removedProviders:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/samsung/multiscreen/Search;->bleProvider:Lcom/samsung/multiscreen/SearchProvider;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Search;->startingBle:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Search;->stoppingBle:Z

    .line 68
    new-instance v1, Lcom/samsung/multiscreen/Search$1;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/Search$1;-><init>(Lcom/samsung/multiscreen/Search;)V

    iput-object v1, p0, Lcom/samsung/multiscreen/Search;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    .line 154
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Search;->clearProviders:Z

    .line 156
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    .line 198
    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$006(Lcom/samsung/multiscreen/Search;)I
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/multiscreen/Search;->onStartNotified:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/multiscreen/Search;->onStartNotified:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnStartListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->onStartListener:Lcom/samsung/multiscreen/Search$OnStartListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/Service;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/Search;->validateService(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnBleFoundListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->onBleFoundListener:Lcom/samsung/multiscreen/Search$OnBleFoundListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$SearchListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/SearchProvider;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->bleProvider:Lcom/samsung/multiscreen/SearchProvider;

    return-object p0
.end method

.method static synthetic access$206(Lcom/samsung/multiscreen/Search;)I
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/multiscreen/Search;->numRunning:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/multiscreen/Search;->numRunning:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/multiscreen/Search;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/samsung/multiscreen/Search;->clearProviders:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/multiscreen/Search;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/multiscreen/Search;->processRemovedProviders()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnStopListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->onStopListener:Lcom/samsung/multiscreen/Search$OnStopListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/Service;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/Search;->addService(Lcom/samsung/multiscreen/Service;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/StandbyDeviceList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnServiceLostListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->onServiceLostListener:Lcom/samsung/multiscreen/Search$OnServiceLostListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnServiceFoundListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/multiscreen/Search;->onServiceFoundListener:Lcom/samsung/multiscreen/Search$OnServiceFoundListener;

    return-object p0
.end method

.method private addService(Lcom/samsung/multiscreen/Service;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    monitor-enter v1

    .line 478
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    .line 479
    :goto_0
    iget-object v4, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 480
    iget-object v4, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/multiscreen/Service;

    invoke-virtual {v4, p1}, Lcom/samsung/multiscreen/Service;->isEqualTo(Lcom/samsung/multiscreen/Service;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 486
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    monitor-exit v1

    return v5

    .line 489
    :cond_3
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static getInstance(Landroid/content/Context;)Lcom/samsung/multiscreen/Search;
    .locals 1

    .line 191
    sget-object v0, Lcom/samsung/multiscreen/Search;->instance:Lcom/samsung/multiscreen/Search;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/samsung/multiscreen/Search;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Search;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/multiscreen/Search;->instance:Lcom/samsung/multiscreen/Search;

    .line 194
    :cond_0
    sget-object p0, Lcom/samsung/multiscreen/Search;->instance:Lcom/samsung/multiscreen/Search;

    return-object p0
.end method

.method private declared-synchronized processRemovedProviders()V
    .locals 3

    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->removedProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->removedProviders:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/SearchProvider;

    .line 375
    invoke-virtual {v1}, Lcom/samsung/multiscreen/SearchProvider;->isSearching()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/samsung/multiscreen/Search;->removedProviders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private removeAndNotify(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 512
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/Search;->removeService(Lcom/samsung/multiscreen/Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->onServiceLostListener:Lcom/samsung/multiscreen/Search$OnServiceLostListener;

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Lcom/samsung/multiscreen/Search$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Search$6;-><init>(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/Service;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private removeService(Lcom/samsung/multiscreen/Service;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 501
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/Service;

    invoke-virtual {v3, p1}, Lcom/samsung/multiscreen/Service;->isEqualTo(Lcom/samsung/multiscreen/Service;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    iget-object p1, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 504
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private startDiscovery()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Search"

    const-string v1, "No search providers specified. Adding default providers..."

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/multiscreen/Search;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    invoke-static {v1, v2}, Lcom/samsung/multiscreen/MDNSSearchProvider;->create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/SearchProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/multiscreen/Search;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    invoke-static {v1, v2}, Lcom/samsung/multiscreen/MSFDSearchProvider;->create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/SearchProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 404
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/multiscreen/Search;->numRunning:I

    iput v0, p0, Lcom/samsung/multiscreen/Search;->onStartNotified:I

    .line 405
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/SearchProvider;

    .line 406
    new-instance v2, Lcom/samsung/multiscreen/Search$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/multiscreen/Search$2;-><init>(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/SearchProvider;)V

    invoke-static {v2}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startDiscoveryUsingBle()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->bleProvider:Lcom/samsung/multiscreen/SearchProvider;

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/BLESearchProvider;->create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/SearchProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/Search;->bleProvider:Lcom/samsung/multiscreen/SearchProvider;

    :cond_0
    const/4 v0, 0x1

    .line 444
    iput v0, p0, Lcom/samsung/multiscreen/Search;->numRunning:I

    iput v0, p0, Lcom/samsung/multiscreen/Search;->onStartNotified:I

    .line 445
    new-instance v0, Lcom/samsung/multiscreen/Search$4;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Search$4;-><init>(Lcom/samsung/multiscreen/Search;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopDiscovery()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/SearchProvider;

    .line 422
    new-instance v2, Lcom/samsung/multiscreen/Search$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/multiscreen/Search$3;-><init>(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/SearchProvider;)V

    .line 435
    invoke-static {v2}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopDiscoveryUsingBle()V
    .locals 1

    .line 459
    new-instance v0, Lcom/samsung/multiscreen/Search$5;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Search$5;-><init>(Lcom/samsung/multiscreen/Search;)V

    .line 469
    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateService(Lcom/samsung/multiscreen/Service;)V
    .locals 2

    .line 533
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/Search;->removeAndNotify(Lcom/samsung/multiscreen/Service;)V

    .line 535
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/SearchProvider;

    .line 537
    invoke-virtual {v1, p1}, Lcom/samsung/multiscreen/SearchProvider;->removeService(Lcom/samsung/multiscreen/Service;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addProvider(Lcom/samsung/multiscreen/SearchProvider;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v1, p0, Lcom/samsung/multiscreen/Search;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    invoke-virtual {p1, v1}, Lcom/samsung/multiscreen/SearchProvider;->setSearchListener(Lcom/samsung/multiscreen/Search$SearchListener;)V

    .line 350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public clearStandbyDeviceList()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->clear()V

    :cond_0
    return-void
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Service;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->services:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSearching()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/SearchProvider;

    .line 208
    invoke-virtual {v1}, Lcom/samsung/multiscreen/SearchProvider;->isSearching()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSearchingBle()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->bleProvider:Lcom/samsung/multiscreen/SearchProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/SearchProvider;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBle()Z
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized removeAllProviders()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 386
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Search;->clearProviders:Z

    .line 387
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Search;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Search;->clearProviders:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeProvider(Lcom/samsung/multiscreen/SearchProvider;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 363
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/multiscreen/SearchProvider;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 366
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->removedProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 369
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 360
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setOnBleFoundListener(Lcom/samsung/multiscreen/Search$OnBleFoundListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->onBleFoundListener:Lcom/samsung/multiscreen/Search$OnBleFoundListener;

    return-void
.end method

.method public setOnServiceFoundListener(Lcom/samsung/multiscreen/Search$OnServiceFoundListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->onServiceFoundListener:Lcom/samsung/multiscreen/Search$OnServiceFoundListener;

    return-void
.end method

.method public setOnServiceLostListener(Lcom/samsung/multiscreen/Search$OnServiceLostListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->onServiceLostListener:Lcom/samsung/multiscreen/Search$OnServiceLostListener;

    return-void
.end method

.method public setOnStartListener(Lcom/samsung/multiscreen/Search$OnStartListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->onStartListener:Lcom/samsung/multiscreen/Search$OnStartListener;

    return-void
.end method

.method public setOnStopListener(Lcom/samsung/multiscreen/Search$OnStopListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->onStopListener:Lcom/samsung/multiscreen/Search$OnStopListener;

    return-void
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Search;->start(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/Boolean;)Z
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Search;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/samsung/multiscreen/Search;->startDiscovery()V

    const-string v0, "Search"

    const-string v1, "start() called & Discovery started."

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/samsung/multiscreen/Search;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/multiscreen/Search;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

    .line 255
    iget-object p1, p0, Lcom/samsung/multiscreen/Search;->mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->start()V

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/samsung/multiscreen/Search;->mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->destruct()V

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/samsung/multiscreen/Search;->mStandbyDeviceList:Lcom/samsung/multiscreen/StandbyDeviceList;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public startUsingBle()Z
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Search;->isSupportBle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Search;->isSearchingBle()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/samsung/multiscreen/Search;->startDiscoveryUsingBle()V

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/samsung/multiscreen/Search;->stopDiscovery()V

    const/4 v0, 0x1

    return v0
.end method

.method public stopUsingBle()Z
    .locals 1

    .line 321
    invoke-direct {p0}, Lcom/samsung/multiscreen/Search;->stopDiscoveryUsingBle()V

    const/4 v0, 0x1

    return v0
.end method
