.class public final Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final delayError:Z

.field final prefetch:I

.field final scheduler:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/Scheduler;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lio/reactivex/Scheduler;",
            "ZI)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->scheduler:Lio/reactivex/Scheduler;

    .line 43
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->delayError:Z

    .line 44
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->prefetch:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    .line 51
    instance-of v1, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->source:Lorg/reactivestreams/Publisher;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;

    check-cast p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->delayError:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->prefetch:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/Scheduler$Worker;ZI)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->source:Lorg/reactivestreams/Publisher;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->delayError:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->prefetch:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/Scheduler$Worker;ZI)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :goto_0
    return-void
.end method
