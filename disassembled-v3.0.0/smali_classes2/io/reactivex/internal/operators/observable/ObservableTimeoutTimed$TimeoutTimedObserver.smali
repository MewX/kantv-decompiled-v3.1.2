.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeoutTimed.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutTimedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74657117dae1667dL


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field volatile index:J

.field s:Lio/reactivex/disposables/Disposable;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    .line 203
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->timeout:J

    .line 204
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 205
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 282
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 283
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 284
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 271
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    .line 275
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->dispose()V

    .line 277
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    .line 264
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->dispose()V

    .line 266
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 224
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->index:J

    .line 226
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->scheduleTimeout(J)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 212
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide/16 v0, 0x0

    .line 213
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->scheduleTimeout(J)V

    :cond_0
    return-void
.end method

.method scheduleTimeout(J)V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 237
    :cond_0
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->NEW_TIMER:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$1;

    invoke-direct {v1, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$1;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;J)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->timeout:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 253
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    :cond_1
    return-void
.end method
