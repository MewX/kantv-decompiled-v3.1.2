.class public final Lio/reactivex/subjects/PublishSubject;
.super Lio/reactivex/subjects/Subject;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/PublishSubject$PublishDisposable;
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


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

.field static final TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/PublishSubject$PublishDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    new-array v1, v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    sput-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 53
    new-array v0, v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    sput-object v0, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lio/reactivex/subjects/PublishSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/PublishSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject$PublishDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 108
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 109
    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 113
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 115
    new-array v3, v3, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 116
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    aput-object p1, v3, v1

    .line 119
    iget-object v1, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 221
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

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

    .line 216
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

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

    .line 229
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

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

    .line 206
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 210
    invoke-virtual {v3}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 194
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 196
    :cond_1
    iput-object p1, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

    .line 198
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 199
    invoke-virtual {v3, p1}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->onError(Ljava/lang/Throwable;)V

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

    .line 174
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 178
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 182
    invoke-virtual {v3, p1}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 168
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject$PublishDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 132
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 133
    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 137
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 140
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

    .line 153
    sget-object v1, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 155
    new-array v5, v5, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 156
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 157
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 159
    :goto_2
    iget-object v2, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 82
    new-instance v0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/PublishSubject;)V

    .line 83
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 84
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->add(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->remove(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    :cond_2
    :goto_0
    return-void
.end method
