.class final Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;-><init>([Ljava/lang/Object;)V

    .line 198
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 5

    .line 203
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    .line 204
    array-length v1, v0

    .line 205
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 207
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    :goto_0
    if-eq v3, v1, :cond_2

    .line 208
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v4, :cond_0

    return-void

    .line 211
    :cond_0
    aget-object v4, v0, v3

    if-nez v4, :cond_1

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array element is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 216
    :cond_1
    invoke-interface {v2, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v0, :cond_3

    return-void

    .line 222
    :cond_3
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    return-void
.end method

.method slowPath(J)V
    .locals 10

    .line 228
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    .line 229
    array-length v1, v0

    .line 230
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    .line 231
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const-wide/16 v4, 0x0

    move-wide v6, p1

    :cond_0
    move-wide p1, v4

    :cond_1
    :goto_0
    cmp-long v8, p1, v6

    if-eqz v8, :cond_5

    if-eq v2, v1, :cond_5

    .line 236
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v8, :cond_2

    return-void

    .line 240
    :cond_2
    aget-object v8, v0, v2

    if-nez v8, :cond_3

    .line 243
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "array element is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 246
    :cond_3
    invoke-interface {v3, v8}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x1

    add-long/2addr p1, v8

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-ne v2, v1, :cond_7

    .line 255
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-nez p1, :cond_6

    .line 256
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    :cond_6
    return-void

    .line 261
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->get()J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-nez v8, :cond_1

    .line 263
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    neg-long p1, p1

    .line 264
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->addAndGet(J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_0

    return-void
.end method
