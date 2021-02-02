.class public final Lio/reactivex/internal/operators/flowable/FlowableTakeLast;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableTakeLast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;
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
.field final count:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 29
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast;->count:I

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

    .line 34
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast;->count:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;-><init>(Lorg/reactivestreams/Subscriber;I)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
