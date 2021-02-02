.class public final Lio/reactivex/internal/operators/observable/ObservableElementAt;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableElementAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;
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
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final index:J


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JTT;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 26
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->index:J

    .line 27
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->index:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAt;->defaultValue:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver;-><init>(Lio/reactivex/Observer;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
