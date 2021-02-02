.class Lcom/avos/avoscloud/IntervalTimer$1;
.super Landroid/os/Handler;
.source "IntervalTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/IntervalTimer;-><init>(Landroid/os/Looper;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/IntervalTimer;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/IntervalTimer;Landroid/os/Looper;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 37
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {v1}, Lcom/avos/avoscloud/IntervalTimer;->access$000(Lcom/avos/avoscloud/IntervalTimer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    monitor-exit v0

    return-void

    .line 42
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {p1}, Lcom/avos/avoscloud/IntervalTimer;->access$100(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-virtual {p1}, Lcom/avos/avoscloud/IntervalTimer;->onTrigger()V

    .line 48
    iget-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    iget-object v4, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {v4}, Lcom/avos/avoscloud/IntervalTimer;->access$100(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {v6}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v6

    add-long/2addr v4, v6

    sub-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Lcom/avos/avoscloud/IntervalTimer;->access$102(Lcom/avos/avoscloud/IntervalTimer;J)J

    .line 49
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/IntervalTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {v1}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/avos/avoscloud/IntervalTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {p1}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4

    .line 53
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/IntervalTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/avos/avoscloud/IntervalTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {v3}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lcom/avos/avoscloud/IntervalTimer;->access$102(Lcom/avos/avoscloud/IntervalTimer;J)J

    .line 61
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
