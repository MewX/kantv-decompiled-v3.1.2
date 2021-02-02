.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;
.super Ljava/lang/Object;
.source "FlowableTimeout.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutOtherSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;"
    }
.end annotation


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscriptions/FullArbiter<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field done:Z

.field final firstTimeoutIndicator:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile index:J

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final other:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;

.field final timeout:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;Lorg/reactivestreams/Publisher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TV;>;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 237
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 238
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->firstTimeoutIndicator:Lorg/reactivestreams/Publisher;

    .line 239
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    .line 240
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->other:Lorg/reactivestreams/Publisher;

    .line 241
    new-instance p2, Lio/reactivex/internal/subscriptions/FullArbiter;

    const/16 p3, 0x8

    invoke-direct {p2, p1, p0, p3}, Lio/reactivex/internal/subscriptions/FullArbiter;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/disposables/Disposable;I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->cancelled:Z

    .line 328
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 329
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 317
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->done:Z

    .line 321
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->dispose()V

    .line 322
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/FullArbiter;->onComplete(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 306
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->done:Z

    .line 311
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->dispose()V

    .line 312
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/subscriptions/FullArbiter;->onError(Ljava/lang/Throwable;Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 276
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->index:J

    .line 278
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v2, p1, v3}, Lio/reactivex/internal/subscriptions/FullArbiter;->onNext(Ljava/lang/Object;Lorg/reactivestreams/Subscription;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_2

    .line 284
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 290
    :cond_2
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "The publisher returned is null"

    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    new-instance v3, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;

    invoke-direct {v3, p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;J)V

    .line 299
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    invoke-interface {p1, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 292
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 293
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4

    .line 246
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/FullArbiter;->setSubscription(Lorg/reactivestreams/Subscription;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 254
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 256
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->firstTimeoutIndicator:Lorg/reactivestreams/Publisher;

    if-eqz v0, :cond_2

    .line 259
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;J)V

    .line 261
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->timeout:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-interface {p1, v2}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 263
    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public timeout(J)V
    .locals 3

    .line 339
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->index:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 340
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->dispose()V

    .line 341
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->other:Lorg/reactivestreams/Publisher;

    new-instance p2, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-direct {p2, v0}, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;-><init>(Lio/reactivex/internal/subscriptions/FullArbiter;)V

    invoke-interface {p1, p2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :cond_0
    return-void
.end method
