.class Lio/reactivex/internal/operators/completable/CompletablePeek$1;
.super Ljava/lang/Object;
.source "CompletablePeek.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/completable/CompletablePeek;->subscribeActual(Lio/reactivex/CompletableObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

.field final synthetic val$s:Lio/reactivex/CompletableObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletablePeek;Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doAfter()V
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 66
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->doAfter()V

    return-void

    :catch_0
    move-exception v0

    .line 59
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 72
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 76
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 79
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 81
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->doAfter()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 88
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onSubscribe:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->val$s:Lio/reactivex/CompletableObserver;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletablePeek$1$1;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/CompletablePeek$1$1;-><init>(Lio/reactivex/internal/operators/completable/CompletablePeek$1;Lio/reactivex/disposables/Disposable;)V

    invoke-static {v1}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void

    :catch_0
    move-exception v0

    .line 90
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 91
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 92
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    return-void
.end method
