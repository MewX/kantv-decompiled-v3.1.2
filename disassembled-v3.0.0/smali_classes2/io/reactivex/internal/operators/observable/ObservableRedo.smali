.class public final Lio/reactivex/internal/operators/observable/ObservableRedo;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableRedo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;
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
.field final manager:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Notification<",
            "Ljava/lang/Object;",
            ">;>;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Notification<",
            "Ljava/lang/Object;",
            ">;>;+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRedo;->manager:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    .line 41
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRedo;->source:Lio/reactivex/ObservableSource;

    invoke-direct {v1, p1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/Subject;Lio/reactivex/ObservableSource;)V

    .line 43
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;->arbiter:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 48
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRedo;->manager:Lio/reactivex/functions/Function;

    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The function returned a null ObservableSource"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    new-instance p1, Lio/reactivex/internal/observers/ToNotificationObserver;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableRedo$1;

    invoke-direct {v2, p0, v1}, Lio/reactivex/internal/operators/observable/ObservableRedo$1;-><init>(Lio/reactivex/internal/operators/observable/ObservableRedo;Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;)V

    invoke-direct {p1, v2}, Lio/reactivex/internal/observers/ToNotificationObserver;-><init>(Lio/reactivex/functions/Consumer;)V

    invoke-interface {v0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    const/4 p1, 0x0

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Notification;->createOnNext(Ljava/lang/Object;)Lio/reactivex/Notification;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/internal/operators/observable/ObservableRedo$RedoObserver;->handle(Lio/reactivex/Notification;)V

    return-void

    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
