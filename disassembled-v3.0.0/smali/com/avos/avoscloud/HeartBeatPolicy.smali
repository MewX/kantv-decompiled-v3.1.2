.class abstract Lcom/avos/avoscloud/HeartBeatPolicy;
.super Ljava/lang/Object;
.source "HeartBeatPolicy.java"


# static fields
.field private static final executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final HEALTHY_THRESHOLD:J

.field private final HEART_BEAT_INTERNAL:J

.field private healthFuture:Ljava/util/concurrent/Future;

.field private healthMonitor:Ljava/lang/Runnable;

.field private lastPongTS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/avos/avoscloud/HeartBeatPolicy;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x2bf20

    .line 28
    iput-wide v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->HEART_BEAT_INTERNAL:J

    const-wide/32 v0, 0x57e40

    .line 33
    iput-wide v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->HEALTHY_THRESHOLD:J

    .line 35
    new-instance v0, Lcom/avos/avoscloud/HeartBeatPolicy$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/HeartBeatPolicy$1;-><init>(Lcom/avos/avoscloud/HeartBeatPolicy;)V

    iput-object v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->healthMonitor:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/HeartBeatPolicy;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->lastPongTS:J

    return-wide v0
.end method


# virtual methods
.method declared-synchronized onPong()V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->lastPongTS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onTimeOut()V
.end method

.method public abstract sendPing()V
.end method

.method declared-synchronized startHeartbeat()V
    .locals 9

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/HeartBeatPolicy;->stopHeartbeat()V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->lastPongTS:J

    .line 53
    sget-object v2, Lcom/avos/avoscloud/HeartBeatPolicy;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->healthMonitor:Ljava/lang/Runnable;

    const-wide/32 v4, 0x2bf20

    const-wide/32 v6, 0x2bf20

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->healthFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopHeartbeat()V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->healthFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy;->healthFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
