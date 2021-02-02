.class final Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;
.super Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.source "FlowableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8f22a8b85feb275L


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field consumed:J


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/Scheduler$Worker;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    .line 491
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;-><init>(Lio/reactivex/Scheduler$Worker;ZI)V

    .line 492
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 497
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 500
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 502
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x7

    .line 504
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 507
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->sourceMode:I

    .line 508
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 509
    iput-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    .line 511
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {p1, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 515
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->sourceMode:I

    .line 516
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 518
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 520
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 526
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->prefetch:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 528
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 530
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->prefetch:I

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

    .line 700
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 701
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->sourceMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 702
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 703
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->limit:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    .line 704
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    .line 705
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 707
    :cond_0
    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    :cond_1
    :goto_0
    return-object v0
.end method

.method runAsync()V
    .locals 13

    .line 600
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 601
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 603
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    .line 604
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 608
    :cond_0
    :goto_0
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :cond_1
    :goto_1
    cmp-long v10, v2, v8

    if-eqz v10, :cond_6

    .line 611
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    .line 614
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 627
    :goto_2
    invoke-virtual {p0, v10, v12, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v10

    if-eqz v10, :cond_3

    return-void

    :cond_3
    if-eqz v12, :cond_4

    goto :goto_3

    .line 635
    :cond_4
    invoke-interface {v0, v11}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_5

    add-long/2addr v2, v11

    :cond_5
    add-long/2addr v4, v11

    .line 641
    iget v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->limit:I

    int-to-long v10, v10

    cmp-long v12, v4, v10

    if-nez v12, :cond_1

    .line 642
    iget-object v10, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v10, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 616
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 618
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 619
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 621
    invoke-interface {v0, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 622
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_6
    :goto_3
    cmp-long v10, v2, v8

    if-nez v10, :cond_7

    .line 647
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;)Z

    move-result v8

    if-eqz v8, :cond_7

    return-void

    .line 651
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->get()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 653
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    .line 654
    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    neg-int v7, v7

    .line 655
    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_8
    move v7, v8

    goto :goto_0
.end method

.method runBackfused()V
    .locals 4

    const/4 v0, 0x1

    .line 672
    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    if-eqz v1, :cond_1

    return-void

    .line 676
    :cond_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->done:Z

    .line 678
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onNext(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 681
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 683
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 685
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 687
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_3
    neg-int v0, v0

    .line 691
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method runSync()V
    .locals 9

    .line 538
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 539
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 541
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    const/4 v4, 0x1

    .line 545
    :cond_0
    :goto_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    :cond_1
    :goto_1
    cmp-long v7, v2, v5

    if-eqz v7, :cond_4

    .line 550
    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    if-eqz v8, :cond_2

    return-void

    :cond_2
    if-nez v7, :cond_3

    .line 563
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 564
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 568
    :cond_3
    invoke-interface {v0, v7}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_1

    :catch_0
    move-exception v1

    .line 552
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 553
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 554
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 555
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 573
    :cond_4
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->cancelled:Z

    if-eqz v5, :cond_5

    return-void

    .line 577
    :cond_5
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 578
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 579
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 583
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->get()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 585
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->produced:J

    neg-int v4, v4

    .line 586
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    move v4, v5

    goto :goto_0
.end method
