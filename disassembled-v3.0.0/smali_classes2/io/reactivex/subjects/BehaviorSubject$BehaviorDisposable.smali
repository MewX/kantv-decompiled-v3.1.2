.class final Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
.super Ljava/lang/Object;
.source "BehaviorSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/BehaviorSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BehaviorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field emitting:Z

.field fastPath:Z

.field index:J

.field next:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final state:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/BehaviorSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->actual:Lio/reactivex/Observer;

    .line 405
    iput-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 410
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    .line 413
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;->remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V

    :cond_0
    return-void
.end method

.method emitFirst()V
    .locals 4

    .line 423
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 427
    :cond_0
    monitor-enter p0

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 429
    monitor-exit p0

    return-void

    .line 431
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    if-eqz v0, :cond_2

    .line 432
    monitor-exit p0

    return-void

    .line 435
    :cond_2
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->state:Lio/reactivex/subjects/BehaviorSubject;

    .line 436
    iget-object v1, v0, Lio/reactivex/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 438
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 439
    iget-wide v2, v0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    iput-wide v2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    .line 440
    iget-object v0, v0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 441
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 443
    :goto_0
    iput-boolean v2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    .line 444
    iput-boolean v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    .line 445
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 448
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 452
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitLoop()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 445
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 2

    .line 492
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 496
    :cond_0
    monitor-enter p0

    .line 497
    :try_start_0
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    .line 500
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 502
    iput-object v1, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 503
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 503
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method emitNext(Ljava/lang/Object;J)V
    .locals 3

    .line 457
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    if-nez v0, :cond_5

    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_1
    iget-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->index:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 466
    monitor-exit p0

    return-void

    .line 468
    :cond_2
    iget-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitting:Z

    if-eqz p2, :cond_4

    .line 469
    iget-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez p2, :cond_3

    .line 471
    new-instance p2, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 472
    iput-object p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 474
    :cond_3
    invoke-virtual {p2, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 475
    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 477
    iput-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->next:Z

    .line 478
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iput-boolean p2, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->fastPath:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 478
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 482
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    return v0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->actual:Lio/reactivex/Observer;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
