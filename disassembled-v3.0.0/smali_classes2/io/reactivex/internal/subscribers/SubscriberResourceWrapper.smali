.class public final Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SubscriberResourceWrapper.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;
.implements Lio/reactivex/disposables/Disposable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77840c661fe71fc2L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final subscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->dispose()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 84
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->dispose()V

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->dispose()V

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 39
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 40
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_1

    .line 41
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 45
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 46
    invoke-static {}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->reportSubscriptionSet()V

    return-void

    .line 49
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object p1, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 75
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public setResource(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
