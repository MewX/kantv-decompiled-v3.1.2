.class final Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;
.super Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;
.source "FlowableScanSeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableScanSeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScanSeedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18a87226297dfae5L


# instance fields
.field final accumulator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 57
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->accumulator:Lio/reactivex/functions/BiFunction;

    .line 58
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    .line 68
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->accumulator:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The accumulator returned a null value"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    .line 77
    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->produced:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->produced:J

    .line 78
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 70
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 72
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
