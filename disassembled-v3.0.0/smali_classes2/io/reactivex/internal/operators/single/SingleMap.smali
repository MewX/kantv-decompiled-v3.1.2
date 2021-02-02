.class public final Lio/reactivex/internal/operators/single/SingleMap;
.super Lio/reactivex/Single;
.source "SingleMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 27
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleMap;->source:Lio/reactivex/SingleSource;

    .line 28
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleMap;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleMap$1;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/single/SingleMap$1;-><init>(Lio/reactivex/internal/operators/single/SingleMap;Lio/reactivex/SingleObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
