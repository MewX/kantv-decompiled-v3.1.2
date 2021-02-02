.class public Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;
.super Ljava/lang/Object;
.source "ClingDeviceList.java"


# static fields
.field private static INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;


# instance fields
.field private mClingDeviceList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    .line 28
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;
    .locals 1

    .line 34
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;-><init>()V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    .line 37
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    return-object v0
.end method


# virtual methods
.method public addDevice(Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public contain(Lorg/fourthline/cling/model/meta/Device;)Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 74
    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 76
    invoke-virtual {v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/meta/Device;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 78
    monitor-exit v0

    return p1

    .line 81
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    monitor-enter v0

    .line 105
    :try_start_0
    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    .line 106
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_0
    :goto_0
    sput-object v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    return-void
.end method

.method public getClingDevice(Lorg/fourthline/cling/model/meta/Device;)Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 59
    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 61
    invoke-virtual {v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3, p1}, Lorg/fourthline/cling/model/meta/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    monitor-exit v0

    return-object v2

    .line 66
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClingDeviceList()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    return-object v0
.end method

.method public removeDevice(Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setClingDeviceList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 96
    monitor-enter v0

    .line 97
    :try_start_0
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->mClingDeviceList:Ljava/util/Collection;

    .line 98
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
