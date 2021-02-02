.class public final Lio/reactivex/internal/operators/observable/ObservableSampleTimed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableSampleTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 31
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed;->period:J

    .line 32
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 33
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    new-instance v1, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v1, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    .line 40
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed;->period:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed;->scheduler:Lio/reactivex/Scheduler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-interface {p1, v6}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
