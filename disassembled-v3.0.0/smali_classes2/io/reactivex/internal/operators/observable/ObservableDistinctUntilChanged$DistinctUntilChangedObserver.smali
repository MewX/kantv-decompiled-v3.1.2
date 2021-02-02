.class final Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;
.super Lio/reactivex/internal/observers/BasicFuseableObserver;
.source "ObservableDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctUntilChangedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicFuseableObserver<",
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

.field hasValue:Z

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/Observer;)V

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/functions/Function;

    .line 52
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->sourceMode:I

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 71
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    if-eqz v1, :cond_3

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    .line 77
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 102
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    .line 103
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    return-object v0

    .line 107
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    return-object v0

    .line 111
    :cond_2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestFusion(I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->transitiveBoundaryFusion(I)I

    move-result p1

    return p1
.end method
