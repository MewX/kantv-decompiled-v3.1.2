.class public final Lio/reactivex/internal/operators/flowable/FlowableSkip;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableSkip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;
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
.field final n:J


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;J)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 24
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip;->n:J

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

    .line 29
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip;->n:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
