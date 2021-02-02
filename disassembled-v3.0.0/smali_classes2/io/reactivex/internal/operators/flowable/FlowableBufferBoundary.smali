.class public final Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferCloseSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferOpenSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final bufferClose:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TOpen;+",
            "Lorg/reactivestreams/Publisher<",
            "+TClose;>;>;"
        }
    .end annotation
.end field

.field final bufferOpen:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TOpen;>;",
            "Lio/reactivex/functions/Function<",
            "-TOpen;+",
            "Lorg/reactivestreams/Publisher<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 43
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;->bufferOpen:Lorg/reactivestreams/Publisher;

    .line 44
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;->bufferClose:Lio/reactivex/functions/Function;

    .line 45
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;->bufferSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;

    new-instance v2, Lio/reactivex/subscribers/SerializedSubscriber;

    invoke-direct {v2, p1}, Lio/reactivex/subscribers/SerializedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;->bufferOpen:Lorg/reactivestreams/Publisher;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;->bufferClose:Lio/reactivex/functions/Function;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
