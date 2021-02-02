.class final Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;
.super Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.source "FlowableObserveOn.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f1a97e8f84a341aL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/Scheduler$Worker;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;-><init>(Lio/reactivex/Scheduler$Worker;ZI)V

    .line 254
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 262
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 264
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x7

    .line 266
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 269
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    .line 270
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 271
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    .line 273
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 277
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    .line 278
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 280
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 282
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 288
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 290
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 292
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 463
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->sourceMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 464
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 465
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->limit:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    .line 466
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    .line 467
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 469
    :cond_0
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    :cond_1
    :goto_0
    return-object v0
.end method

.method runAsync()V
    .locals 11

    .line 363
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 364
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 366
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 370
    :cond_0
    :goto_0
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :cond_1
    :goto_1
    cmp-long v8, v2, v6

    if-eqz v8, :cond_6

    .line 373
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    .line 377
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 391
    :goto_2
    invoke-virtual {p0, v8, v10, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_4

    goto :goto_3

    .line 399
    :cond_4
    invoke-interface {v0, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 402
    iget v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->limit:I

    int-to-long v8, v8

    cmp-long v10, v2, v8

    if-nez v10, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5

    .line 404
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 406
    :cond_5
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v8, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    const-wide/16 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 379
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 381
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 382
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 384
    invoke-interface {v0, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 385
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_6
    :goto_3
    cmp-long v8, v2, v6

    if-nez v8, :cond_7

    .line 411
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v7

    invoke-virtual {p0, v6, v7, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v6

    if-eqz v6, :cond_7

    return-void

    .line 415
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->get()I

    move-result v6

    if-ne v5, v6, :cond_8

    .line 417
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    neg-int v5, v5

    .line 418
    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_8
    move v5, v6

    goto :goto_0
.end method

.method runBackfused()V
    .locals 4

    const/4 v0, 0x1

    .line 434
    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    if-eqz v1, :cond_1

    return-void

    .line 438
    :cond_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->done:Z

    .line 440
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 443
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 445
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 449
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_3
    neg-int v0, v0

    .line 453
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method runSync()V
    .locals 9

    .line 300
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 301
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 303
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    const/4 v4, 0x1

    .line 307
    :cond_0
    :goto_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    :goto_1
    cmp-long v7, v2, v5

    if-eqz v7, :cond_3

    .line 313
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    if-eqz v8, :cond_1

    return-void

    :cond_1
    if-nez v7, :cond_2

    .line 326
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 327
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 331
    :cond_2
    invoke-interface {v0, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_1

    :catch_0
    move-exception v1

    .line 315
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 316
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 317
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 318
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 336
    :cond_3
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->cancelled:Z

    if-eqz v5, :cond_4

    return-void

    .line 340
    :cond_4
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 341
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 342
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 346
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->get()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 348
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->produced:J

    neg-int v4, v4

    .line 349
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_6
    move v4, v5

    goto :goto_0
.end method
