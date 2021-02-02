.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "FlowableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field done:Z

.field final index:J

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;J)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 183
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    .line 184
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->timeout(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 199
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    .line 204
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 189
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    .line 193
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->cancel()V

    .line 194
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    invoke-interface {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->timeout(J)V

    return-void
.end method
