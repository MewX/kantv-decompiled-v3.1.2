.class public final Lio/reactivex/processors/BehaviorProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "BehaviorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
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
.field static final EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

.field static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;


# instance fields
.field done:Z

.field index:J

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 75
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 78
    new-array v1, v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    sput-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 81
    new-array v0, v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    sput-object v0, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 128
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 129
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lio/reactivex/processors/BehaviorProcessor;-><init>()V

    .line 141
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "defaultValue is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public static create()Lio/reactivex/processors/BehaviorProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/BehaviorProcessor<",
            "TT;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/BehaviorProcessor;-><init>()V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lio/reactivex/processors/BehaviorProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/processors/BehaviorProcessor<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    .line 116
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor;

    invoke-direct {v0, p0}, Lio/reactivex/processors/BehaviorProcessor;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 320
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 321
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 324
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 326
    new-array v3, v3, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 327
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    aput-object p1, v3, v1

    .line 329
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 229
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2

    .line 256
    sget-object v0, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 257
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 258
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 259
    new-array v0, v0, [Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 276
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    array-length v3, p1

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 284
    aput-object v0, p1, v2

    .line 285
    array-length v0, p1

    if-eq v0, v4, :cond_2

    .line 286
    aput-object v1, p1, v4

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 290
    aput-object v0, p1, v2

    :cond_2
    :goto_0
    return-object p1

    .line 277
    :cond_3
    :goto_1
    array-length v0, p1

    if-eqz v0, :cond_4

    .line 278
    aput-object v1, p1, v2

    :cond_4
    return-object p1
.end method

.method public hasComplete()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

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
    .locals 1

    .line 303
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 313
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 7

    .line 207
    iget-boolean v0, p0, Lio/reactivex/processors/BehaviorProcessor;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lio/reactivex/processors/BehaviorProcessor;->done:Z

    .line 211
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 213
    iget-wide v5, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v4, v0, v5, v6}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    if-nez p1, :cond_0

    .line 192
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/processors/BehaviorProcessor;->done:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lio/reactivex/processors/BehaviorProcessor;->done:Z

    .line 199
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 201
    iget-wide v4, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 179
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/processors/BehaviorProcessor;->done:Z

    if-eqz v0, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 185
    iget-wide v4, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v3, p1, v4, v5}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lio/reactivex/processors/BehaviorProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 170
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method remove(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 338
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 339
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 342
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 345
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

    .line 356
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 358
    new-array v5, v5, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 359
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 360
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 362
    :goto_2
    iget-object v2, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method setCurrent(Ljava/lang/Object;)V
    .locals 5

    .line 384
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 385
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 386
    iget-wide v1, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    .line 387
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 388
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/BehaviorProcessor;)V

    .line 147
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 148
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->add(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-boolean p1, v0, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->remove(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitFirst()V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    array-length v0, v0

    return v0
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<",
            "TT;>;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 372
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 374
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
