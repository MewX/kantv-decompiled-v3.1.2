.class final Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
.super Lio/reactivex/internal/util/LinkedArrayList;
.source "FlowableCache.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/util/LinkedArrayList;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;


# instance fields
.field final connection:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field volatile isConnected:Z

.field final source:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field sourceDone:Z

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 103
    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 106
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p2}, Lio/reactivex/internal/util/LinkedArrayList;-><init>(I)V

    .line 98
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->source:Lio/reactivex/Flowable;

    .line 120
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public addChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 131
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    if-ne v0, v1, :cond_1

    return-void

    .line 134
    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 136
    new-array v2, v2, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    const/4 v3, 0x0

    .line 137
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    aput-object p1, v2, v1

    .line 139
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public connect()V
    .locals 1

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->source:Lio/reactivex/Flowable;

    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->isConnected:Z

    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 225
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    .line 227
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 230
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 231
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 210
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    .line 212
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 214
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 215
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 216
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    .line 200
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 203
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 185
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public removeChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 152
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 158
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 169
    sget-object p1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    return-void

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 172
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 173
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 174
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
