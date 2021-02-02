.class final Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;
.super Ljava/lang/Object;
.source "FlowableDetach.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 50
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 51
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Lorg/reactivestreams/Subscriber;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 52
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 80
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 81
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Lorg/reactivestreams/Subscriber;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 82
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 72
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 73
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Lorg/reactivestreams/Subscriber;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 74
    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 60
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
