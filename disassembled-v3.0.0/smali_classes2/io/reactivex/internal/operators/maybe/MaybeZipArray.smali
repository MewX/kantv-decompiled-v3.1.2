.class public final Lio/reactivex/internal/operators/maybe/MaybeZipArray;
.super Lio/reactivex/Maybe;
.source "MaybeZipArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;,
        Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;
    }
.end annotation

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
.field final sources:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;"
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
.method public constructor <init>([Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray;->sources:[Lio/reactivex/MaybeSource;

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray;->zipper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray;->sources:[Lio/reactivex/MaybeSource;

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 44
    aget-object v0, v0, v2

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;

    new-instance v2, Lio/reactivex/internal/operators/maybe/MaybeZipArray$1;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$1;-><init>(Lio/reactivex/internal/operators/maybe/MaybeZipArray;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void

    .line 53
    :cond_0
    new-instance v3, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeZipArray;->zipper:Lio/reactivex/functions/Function;

    invoke-direct {v3, p1, v1, v4}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;-><init>(Lio/reactivex/MaybeObserver;ILio/reactivex/functions/Function;)V

    .line 55
    invoke-interface {p1, v3}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :goto_0
    if-ge v2, v1, :cond_2

    .line 58
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 62
    :cond_1
    aget-object p1, v0, v2

    iget-object v4, v3, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
