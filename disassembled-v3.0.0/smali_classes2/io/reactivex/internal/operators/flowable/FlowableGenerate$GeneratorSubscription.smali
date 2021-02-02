.class final Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableGenerate.java"

# interfaces
.implements Lio/reactivex/Emitter;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/Emitter<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x68ffc50b57428478L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final disposeState:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;"
        }
    .end annotation
.end field

.field final generator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field terminate:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;TS;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 75
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->generator:Lio/reactivex/functions/BiFunction;

    .line 76
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->disposeState:Lio/reactivex/functions/Consumer;

    .line 77
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    return-void
.end method

.method private dispose(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->disposeState:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 138
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 144
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    const-wide/16 v0, 0x1

    .line 148
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 166
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

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

    if-nez p1, :cond_0

    .line 157
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public request(J)V
    .locals 8

    .line 82
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->generator:Lio/reactivex/functions/BiFunction;

    move-wide v4, p1

    :cond_2
    move-wide p1, v2

    :cond_3
    :goto_0
    cmp-long v6, p1, v4

    if-eqz v6, :cond_6

    .line 98
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    if-eqz v6, :cond_4

    .line 99
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v6, 0x1

    .line 104
    :try_start_0
    invoke-interface {v1, v0, p0}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-boolean v7, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-eqz v7, :cond_5

    .line 113
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    .line 114
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr p1, v6

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 107
    iput-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    .line 108
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 121
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->get()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_3

    .line 123
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    neg-long p1, p1

    .line 124
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->addAndGet(J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    return-void
.end method
