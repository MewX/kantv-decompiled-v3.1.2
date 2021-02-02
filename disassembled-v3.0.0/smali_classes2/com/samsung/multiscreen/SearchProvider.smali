.class public abstract Lcom/samsung/multiscreen/SearchProvider;
.super Ljava/lang/Object;
.source "SearchProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchProvider"


# instance fields
.field protected TVListOnlyBle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

.field searching:Z

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/samsung/multiscreen/SearchProvider;->searching:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->TVListOnlyBle:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/samsung/multiscreen/Search$SearchListener;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/samsung/multiscreen/SearchProvider;->searching:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->TVListOnlyBle:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/samsung/multiscreen/SearchProvider;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    return-void
.end method


# virtual methods
.method protected addService(Lcom/samsung/multiscreen/Service;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 103
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Search$SearchListener;->onFound(Lcom/samsung/multiscreen/Service;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected addTVOnlyBle(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/samsung/multiscreen/SearchProvider;->TVListOnlyBle:Ljava/util/List;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/samsung/multiscreen/SearchProvider;->TVListOnlyBle:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->TVListOnlyBle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 157
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    if-eqz v0, :cond_2

    .line 160
    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Search$SearchListener;->onFoundOnlyBLE(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 157
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized clearServices()V
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getServiceById(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/Service;

    .line 138
    invoke-virtual {v1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
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

    .line 82
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isSearching()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/samsung/multiscreen/SearchProvider;->searching:Z

    return v0
.end method

.method removeService(Lcom/samsung/multiscreen/Service;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeServiceAndNotify(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/SearchProvider;->removeService(Lcom/samsung/multiscreen/Service;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Search$SearchListener;->onLost(Lcom/samsung/multiscreen/Service;)V

    :cond_1
    return-void
.end method

.method protected setSearchListener(Lcom/samsung/multiscreen/Search$SearchListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/multiscreen/SearchProvider;->searchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    return-void
.end method

.method protected declared-synchronized setServices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/SearchProvider;->clearServices()V

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/multiscreen/SearchProvider;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract start()V
.end method

.method public abstract stop()Z
.end method
