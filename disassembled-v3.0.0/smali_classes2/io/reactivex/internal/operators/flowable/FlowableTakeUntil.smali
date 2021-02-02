.class public final Lio/reactivex/internal/operators/flowable/FlowableTakeUntil;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final other:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 27
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil;->other:Lorg/reactivestreams/Publisher;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 33
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 35
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil;->other:Lorg/reactivestreams/Publisher;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber;

    invoke-interface {p1, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 37
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeUntil;->source:Lorg/reactivestreams/Publisher;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
