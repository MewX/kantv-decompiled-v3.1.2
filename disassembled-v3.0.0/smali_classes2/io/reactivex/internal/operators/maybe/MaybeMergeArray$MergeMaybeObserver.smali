.class final Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "MaybeMergeArray.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeMergeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x92a32049d0458bbL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field consumed:J

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field outputFused:Z

.field final queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field final sourceCount:I


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I",
            "Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 93
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->actual:Lorg/reactivestreams/Subscriber;

    .line 94
    iput p2, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->sourceCount:I

    .line 95
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 96
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 97
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 98
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->cancelled:Z

    .line 143
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 144
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->clear()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->clear()V

    return-void
.end method

.method drain()V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->outputFused:Z

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->drainFused()V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->drainNormal()V

    :goto_0
    return-void
.end method

.method drainFused()V
    .locals 6

    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->actual:Lorg/reactivestreams/Subscriber;

    .line 254
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 257
    :cond_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->cancelled:Z

    if-eqz v4, :cond_1

    .line 258
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->clear()V

    return-void

    .line 261
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v4}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 263
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->clear()V

    .line 264
    invoke-interface {v0, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 268
    :cond_2
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->producerIndex()I

    move-result v4

    iget v5, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->sourceCount:I

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 270
    :goto_0
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    .line 271
    invoke-interface {v0, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 275
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_5
    neg-int v3, v3

    .line 279
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method

.method drainNormal()V
    .locals 9

    .line 185
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->actual:Lorg/reactivestreams/Subscriber;

    .line 186
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    .line 187
    iget-wide v2, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->consumed:J

    const/4 v4, 0x1

    .line 191
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    :cond_1
    :goto_0
    cmp-long v7, v2, v5

    if-eqz v7, :cond_6

    .line 194
    iget-boolean v7, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->cancelled:Z

    if-eqz v7, :cond_2

    .line 195
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->clear()V

    return-void

    .line 199
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v7}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 201
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->clear()V

    .line 202
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 206
    :cond_3
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->consumerIndex()I

    move-result v7

    iget v8, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->sourceCount:I

    if-ne v7, v8, :cond_4

    .line 207
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    .line 211
    :cond_4
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 217
    :cond_5
    sget-object v8, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-eq v7, v8, :cond_1

    .line 218
    invoke-interface {v0, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    goto :goto_0

    :cond_6
    :goto_1
    cmp-long v7, v2, v5

    if-nez v7, :cond_9

    .line 225
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    .line 227
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->clear()V

    .line 228
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 232
    :cond_7
    :goto_2
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->peek()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-ne v5, v6, :cond_8

    .line 233
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->drop()V

    goto :goto_2

    .line 236
    :cond_8
    invoke-interface {v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->consumerIndex()I

    move-result v5

    iget v6, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->sourceCount:I

    if-ne v5, v6, :cond_9

    .line 237
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    .line 242
    :cond_9
    iput-wide v2, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->consumed:J

    neg-int v4, v4

    .line 243
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method isCancelled()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->cancelled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-interface {v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->offer(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 165
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-interface {p1, v0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->offer(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->drain()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->offer(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->drain()V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
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

    .line 114
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->queue:Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;

    invoke-interface {v0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 115
    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public request(J)V
    .locals 1

    .line 133
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 135
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->drain()V

    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver;->outputFused:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
