.class public final Lio/reactivex/internal/operators/flowable/FlowableMapNotification;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final onCompleteSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final onErrorMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final onNextMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Ljava/util/concurrent/Callable<",
            "+TR;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 37
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->onNextMapper:Lio/reactivex/functions/Function;

    .line 38
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->onErrorMapper:Lio/reactivex/functions/Function;

    .line 39
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->onNextMapper:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->onErrorMapper:Lio/reactivex/functions/Function;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableMapNotification;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
