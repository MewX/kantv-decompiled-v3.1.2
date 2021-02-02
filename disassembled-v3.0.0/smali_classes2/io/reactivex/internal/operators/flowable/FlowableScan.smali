.class public final Lio/reactivex/internal/operators/flowable/FlowableScan;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;
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
.field final accumulator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 27
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableScan;->accumulator:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScan;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableScan;->accumulator:Lio/reactivex/functions/BiFunction;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableScan$ScanSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
