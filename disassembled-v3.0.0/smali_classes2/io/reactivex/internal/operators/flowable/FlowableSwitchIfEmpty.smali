.class public final Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;
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
.field final other:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
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
            "+TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 24
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->other:Lorg/reactivestreams/Publisher;

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

    .line 29
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->other:Lorg/reactivestreams/Publisher;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;)V

    .line 30
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;->arbiter:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 31
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->source:Lorg/reactivestreams/Publisher;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
