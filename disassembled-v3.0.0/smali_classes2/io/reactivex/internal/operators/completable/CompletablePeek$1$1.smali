.class Lio/reactivex/internal/operators/completable/CompletablePeek$1$1;
.super Ljava/lang/Object;
.source "CompletablePeek.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/completable/CompletablePeek$1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/completable/CompletablePeek$1;

.field final synthetic val$d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletablePeek$1;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1$1;->this$1:Lio/reactivex/internal/operators/completable/CompletablePeek$1;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1$1;->val$d:Lio/reactivex/disposables/Disposable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 100
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1$1;->this$1:Lio/reactivex/internal/operators/completable/CompletablePeek$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek$1;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onDispose:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 103
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$1$1;->val$d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method
