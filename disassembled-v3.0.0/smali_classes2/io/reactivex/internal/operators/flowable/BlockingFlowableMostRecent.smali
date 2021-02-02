.class public final Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent;
.super Ljava/lang/Object;
.source "BlockingFlowableMostRecent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;TT;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent;->source:Lorg/reactivestreams/Publisher;

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent;->initialValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;-><init>(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent;->source:Lorg/reactivestreams/Publisher;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 52
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableMostRecent$MostRecentSubscriber;->getIterable()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
