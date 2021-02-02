.class final Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableWindowTimed.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainObserver<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observable<",
        "TT;>;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field s:Lio/reactivex/disposables/Disposable;

.field volatile terminated:Z

.field final timeskip:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "I)V"
        }
    .end annotation

    .line 529
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimpleQueue;)V

    .line 530
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    .line 531
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timeskip:J

    .line 532
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 533
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 534
    iput p8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    .line 535
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method complete(Lio/reactivex/subjects/UnicastSubject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    return-void
.end method

.method disposeWorker()V
    .locals 1

    .line 617
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method drainLoop()V
    .locals 10

    .line 629
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 630
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->actual:Lio/reactivex/Observer;

    .line 631
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 638
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->terminated:Z

    if-eqz v5, :cond_1

    .line 639
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 640
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 641
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 642
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    .line 646
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->done:Z

    .line 648
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 651
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    .line 654
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 655
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 656
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 658
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/UnicastSubject;

    .line 659
    invoke-virtual {v3, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 662
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 663
    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_3

    .line 666
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    .line 707
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    if-eqz v8, :cond_a

    .line 675
    check-cast v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    .line 677
    iget-boolean v5, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->open:Z

    if-eqz v5, :cond_9

    .line 678
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-eqz v5, :cond_8

    goto :goto_0

    .line 682
    :cond_8
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {v5}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v5

    .line 683
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-interface {v1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 686
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$2;

    invoke-direct {v7, p0, v5}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$2;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v5}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_0

    .line 693
    :cond_9
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->w:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 694
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->w:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v5}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 695
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-eqz v5, :cond_0

    .line 696
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->terminated:Z

    goto/16 :goto_0

    .line 701
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/subjects/UnicastSubject;

    .line 702
    invoke-virtual {v7, v6}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public isDisposed()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->done:Z

    .line 598
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 602
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 603
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 585
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 586
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->done:Z

    .line 587
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 591
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 592
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 569
    invoke-virtual {v1, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 571
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->leave(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 580
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 11

    .line 540
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 543
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 545
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 549
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {p1}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object p1

    .line 550
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$1;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$1;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 560
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timeskip:J

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 3

    .line 717
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    .line 719
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    .line 720
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 723
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    :cond_1
    return-void
.end method
