.class public final Lio/reactivex/processors/PublishProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "PublishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    new-array v1, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    sput-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 64
    new-array v0, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    sput-object v0, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/processors/PublishProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/PublishProcessor<",
            "TT;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lio/reactivex/processors/PublishProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/PublishProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 119
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 120
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 124
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 126
    new-array v3, v3, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 127
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    aput-object p1, v3, v1

    .line 130
    iget-object v1, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 235
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 220
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 224
    invoke-virtual {v3}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 208
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 210
    :cond_1
    iput-object p1, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    .line 212
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 213
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 192
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/processors/PublishProcessor;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 196
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 179
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 183
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 144
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 148
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 151
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

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

    .line 164
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 166
    new-array v5, v5, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 167
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 168
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 170
    :goto_2
    iget-object v2, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/PublishProcessor;)V

    .line 94
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 95
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_2
    :goto_0
    return-void
.end method
