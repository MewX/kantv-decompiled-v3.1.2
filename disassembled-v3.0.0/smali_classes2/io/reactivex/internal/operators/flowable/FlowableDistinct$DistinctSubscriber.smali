.class final Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;
.source "FlowableDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDistinct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "-TK;>;"
        }
    .end annotation
.end field

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Ljava/util/Collection<",
            "-TK;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 64
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    .line 65
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 138
    invoke-super {p0}, Lio/reactivex/internal/subscribers/BasicFuseableSubscriber;->clear()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    .line 110
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->sourceMode:I

    if-nez v0, :cond_2

    .line 78
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The keySelector returned a null key"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->fail(Ljava/lang/Throwable;)V

    return-void

    .line 91
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
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

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->collection:Ljava/util/Collection;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The keySelector returned a null key"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->sourceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method
