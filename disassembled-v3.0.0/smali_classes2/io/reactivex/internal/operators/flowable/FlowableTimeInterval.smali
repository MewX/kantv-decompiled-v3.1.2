.class public final Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableTimeInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTimeInterval$TimeIntervalSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;",
        "Lio/reactivex/schedulers/Timed<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Ljava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 30
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->scheduler:Lio/reactivex/Scheduler;

    .line 31
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/schedulers/Timed<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval$TimeIntervalSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->scheduler:Lio/reactivex/Scheduler;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval$TimeIntervalSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
