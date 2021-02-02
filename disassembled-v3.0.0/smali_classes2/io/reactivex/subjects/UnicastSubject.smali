.class public final Lio/reactivex/subjects/UnicastSubject;
.super Lio/reactivex/subjects/Subject;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/Observer<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field volatile disposed:Z

.field volatile done:Z

.field enableOperatorFusion:Z

.field error:Ljava/lang/Throwable;

.field final onTerminate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 111
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 112
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 113
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance p1, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {p1, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 127
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 128
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "onTerminate"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 129
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance p1, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {p1, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method public static create()Lio/reactivex/subjects/UnicastSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-static {}, Lio/reactivex/subjects/UnicastSubject;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/subjects/UnicastSubject;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/subjects/UnicastSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/UnicastSubject;-><init>(I)V

    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;)Lio/reactivex/subjects/UnicastSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-direct {v0, p0, p1}, Lio/reactivex/subjects/UnicastSubject;-><init>(ILjava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method doTerminate()V
    .locals 3

    .line 150
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 2

    .line 283
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observer;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 293
    iget-boolean v1, p0, Lio/reactivex/subjects/UnicastSubject;->enableOperatorFusion:Z

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->drainFused(Lio/reactivex/Observer;)V

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->drainNormal(Lio/reactivex/Observer;)V

    :goto_1
    return-void

    .line 301
    :cond_2
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 306
    :cond_3
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observer;

    goto :goto_0
.end method

.method drainFused(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v1, 0x1

    .line 253
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 254
    iget-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void

    .line 259
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    .line 261
    invoke-interface {p1, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 264
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 268
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    :goto_0
    return-void

    .line 275
    :cond_3
    iget-object v2, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method drainNormal(Lio/reactivex/Observer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 211
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 212
    iget-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 213
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    .line 217
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    .line 218
    iget-object v5, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 222
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 225
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 227
    :cond_3
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    :goto_2
    return-void

    :cond_4
    if-eqz v6, :cond_5

    .line 239
    iget-object v3, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 236
    :cond_5
    invoke-interface {p1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 317
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

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

    .line 325
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    .line 200
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->doTerminate()V

    .line 202
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 178
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 183
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 185
    :cond_1
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    .line 188
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->doTerminate()V

    .line 190
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    return-void

    .line 179
    :cond_2
    :goto_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 169
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 138
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 139
    iget-boolean p1, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
