.class public final Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TK;-TK;>;"
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
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->keySelector:Lio/reactivex/functions/Function;

    .line 31
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->comparer:Lio/reactivex/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->keySelector:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->comparer:Lio/reactivex/functions/BiPredicate;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiPredicate;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->keySelector:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged;->comparer:Lio/reactivex/functions/BiPredicate;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiPredicate;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :goto_0
    return-void
.end method
