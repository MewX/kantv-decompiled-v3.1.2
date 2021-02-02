.class public Lcom/avos/avoscloud/ArchiveRequestTaskController;
.super Ljava/lang/Object;
.source "ArchiveRequestTaskController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TIME_DELAY_FOR_ARCHIVEREQUEST:J = 0x1eL

.field static archiveRequestTask:Ljava/lang/Runnable;

.field private static lock:Ljava/util/concurrent/locks/Lock;

.field static scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->lock:Ljava/util/concurrent/locks/Lock;

    .line 38
    new-instance v0, Lcom/avos/avoscloud/ArchiveRequestTaskController$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/ArchiveRequestTaskController$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->archiveRequestTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 13
    sget-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static declared-synchronized schedule()V
    .locals 6

    const-class v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/RequestStatisticsUtil;->REPORT_INTERNAL_STATS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 21
    monitor-exit v0

    return-void

    .line 24
    :cond_0
    :try_start_1
    sget-object v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 25
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 28
    sget-object v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_3

    .line 31
    sget-object v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Lcom/avos/avoscloud/ArchiveRequestTaskController;->archiveRequestTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
