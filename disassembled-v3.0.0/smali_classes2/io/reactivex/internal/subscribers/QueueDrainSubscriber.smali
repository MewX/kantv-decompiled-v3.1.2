.class public abstract Lio/reactivex/internal/subscribers/QueueDrainSubscriber;
.super Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad4;
.source "QueueDrainSubscriber.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;
.implements Lio/reactivex/internal/util/QueueDrain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad4;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;",
        "Lio/reactivex/internal/util/QueueDrain<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriberPad4;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void
.end method


# virtual methods
.method public accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TV;>;TU;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final cancelled()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->cancelled:Z

    return v0
.end method

.method public final done()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->done:Z

    return v0
.end method

.method public drain(Z)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iget-object v1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-static {v0, v1, p1, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimpleQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/internal/util/QueueDrain;)V

    :cond_0
    return-void
.end method

.method public final enter()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final error()Ljava/lang/Throwable;
    .locals 1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final fastEnter()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected final fastPathEmitMax(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 69
    iget-object v1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 71
    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    .line 76
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->produced(J)J

    :cond_0
    const/4 p1, -0x1

    .line 79
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->leave(I)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 83
    :cond_1
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 84
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 88
    :cond_2
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->enter()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 93
    :cond_3
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainMaxLoop(Lio/reactivex/internal/fuseable/SimpleQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V

    return-void
.end method

.method protected final fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 98
    iget-object v1, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 100
    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_2

    .line 103
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    .line 106
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->produced(J)J

    :cond_0
    const/4 p1, -0x1

    .line 109
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->leave(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 113
    :cond_1
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v4, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->cancelled:Z

    .line 117
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 118
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 122
    :cond_3
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->enter()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 127
    :cond_4
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainMaxLoop(Lio/reactivex/internal/fuseable/SimpleQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V

    return-void
.end method

.method public final leave(I)I
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final produced(J)J
    .locals 1

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final requested()J
    .locals 2

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final requested(J)V
    .locals 1

    .line 156
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
