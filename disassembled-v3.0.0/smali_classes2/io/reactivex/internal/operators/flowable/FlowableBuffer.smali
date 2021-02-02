.class public final Lio/reactivex/internal/operators/flowable/FlowableBuffer;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field

.field final size:I

.field final skip:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 38
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->size:I

    .line 39
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->skip:I

    .line 40
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TC;>;)V"
        }
    .end annotation

    .line 45
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->size:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->skip:I

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->size:I

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;-><init>(Lorg/reactivestreams/Subscriber;ILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->size:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->skip:I

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->size:I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->skip:I

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :goto_0
    return-void
.end method
