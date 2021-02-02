.class public final Lio/reactivex/internal/operators/flowable/FlowableWindow;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;",
        "Lio/reactivex/Flowable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final size:J

.field final skip:J


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 37
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->size:J

    .line 38
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->skip:J

    .line 39
    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->bufferSize:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 44
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->skip:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->size:J

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->bufferSize:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowExactSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JI)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->source:Lorg/reactivestreams/Publisher;

    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->size:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->skip:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->bufferSize:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JJI)V

    invoke-interface {v0, v8}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->source:Lorg/reactivestreams/Publisher;

    new-instance v8, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->size:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->skip:J

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow;->bufferSize:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JJI)V

    invoke-interface {v0, v8}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    :goto_0
    return-void
.end method
