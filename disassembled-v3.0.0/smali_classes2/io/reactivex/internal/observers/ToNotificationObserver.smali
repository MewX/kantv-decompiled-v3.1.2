.class public final Lio/reactivex/internal/observers/ToNotificationObserver;
.super Ljava/lang/Object;
.source "ToNotificationObserver.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final consumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/Notification<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/Notification<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->consumer:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->consumer:Lio/reactivex/functions/Consumer;

    invoke-static {}, Lio/reactivex/Notification;->createOnComplete()Lio/reactivex/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 71
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->consumer:Lio/reactivex/functions/Consumer;

    invoke-static {p1}, Lio/reactivex/Notification;->createOnError(Ljava/lang/Throwable;)Lio/reactivex/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 43
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/ToNotificationObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->consumer:Lio/reactivex/functions/Consumer;

    invoke-static {p1}, Lio/reactivex/Notification;->createOnNext(Ljava/lang/Object;)Lio/reactivex/Notification;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 50
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/ToNotificationObserver;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/observers/ToNotificationObserver;->s:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
