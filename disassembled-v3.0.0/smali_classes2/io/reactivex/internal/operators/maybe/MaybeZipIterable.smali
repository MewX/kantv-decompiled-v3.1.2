.class public final Lio/reactivex/internal/operators/maybe/MaybeZipIterable;
.super Lio/reactivex/Maybe;
.source "MaybeZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    .line 38
    new-array v0, v0, [Lio/reactivex/MaybeSource;

    .line 42
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/MaybeSource;

    .line 43
    array-length v5, v3

    if-ne v0, v5, :cond_0

    shr-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v0

    .line 44
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/reactivex/MaybeSource;

    :cond_0
    add-int/lit8 v5, v0, 0x1

    .line 46
    aput-object v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 55
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/MaybeObserver;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 60
    aget-object v0, v3, v2

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;

    new-instance v2, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$1;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$1;-><init>(Lio/reactivex/internal/operators/maybe/MaybeZipIterable;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void

    .line 69
    :cond_3
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v0, v4}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;-><init>(Lio/reactivex/MaybeObserver;ILio/reactivex/functions/Function;)V

    .line 71
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :goto_1
    if-ge v2, v0, :cond_5

    .line 74
    invoke-virtual {v1}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 78
    :cond_4
    aget-object p1, v3, v2

    iget-object v4, v1, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 50
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    return-void
.end method
