.class Lio/reactivex/internal/operators/single/SingleMap$1;
.super Ljava/lang/Object;
.source "SingleMap.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleMap;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleMap;

.field final synthetic val$t:Lio/reactivex/SingleObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleMap;Lio/reactivex/SingleObserver;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleMap$1;->this$0:Lio/reactivex/internal/operators/single/SingleMap;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleMap$1;->val$t:Lio/reactivex/SingleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$1;->val$t:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$1;->val$t:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$1;->this$0:Lio/reactivex/internal/operators/single/SingleMap;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleMap;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap$1;->val$t:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleMap$1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
