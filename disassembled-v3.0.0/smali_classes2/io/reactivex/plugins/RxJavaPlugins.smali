.class public final Lio/reactivex/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static volatile errorHandler:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile lockdown:Z

.field static volatile onCompletableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Completable;",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Completable;",
            "Lio/reactivex/CompletableObserver;",
            "Lio/reactivex/CompletableObserver;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onConnectableFlowableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onConnectableObservableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/observables/ConnectableObservable;",
            "Lio/reactivex/observables/ConnectableObservable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onFlowableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Flowable;",
            "Lio/reactivex/Flowable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onFlowableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Flowable;",
            "Lorg/reactivestreams/Subscriber;",
            "Lorg/reactivestreams/Subscriber;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitIoHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitNewThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitSingleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onIoHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onMaybeAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Maybe;",
            "Lio/reactivex/Maybe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onMaybeSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Maybe;",
            "Lio/reactivex/MaybeObserver;",
            "Lio/reactivex/MaybeObserver;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onNewThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Observable;",
            "Lio/reactivex/Observable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Observable;",
            "Lio/reactivex/Observer;",
            "Lio/reactivex/Observer;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Single;",
            "Lio/reactivex/Single;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Single;",
            "Lio/reactivex/SingleObserver;",
            "Lio/reactivex/SingleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .line 959
    :try_start_0
    invoke-interface {p0, p1, p2}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 961
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 940
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 942
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 989
    invoke-static {p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Scheduler Callable result can\'t be null"

    invoke-static {p0, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 974
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Callable result can\'t be null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 976
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getComputationSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getErrorHandler()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 119
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public static getInitComputationSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 127
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getInitIoSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getInitNewThreadSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 143
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getInitSingleSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getIoSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getNewThreadSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 167
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnCompletableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Completable;",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation

    .line 503
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnCompletableSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Completable;",
            "Lio/reactivex/CompletableObserver;",
            "Lio/reactivex/CompletableObserver;",
            ">;"
        }
    .end annotation

    .line 511
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnConnectableFlowableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            ">;"
        }
    .end annotation

    .line 529
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableFlowableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnConnectableObservableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/observables/ConnectableObservable;",
            "Lio/reactivex/observables/ConnectableObservable;",
            ">;"
        }
    .end annotation

    .line 592
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableObservableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnFlowableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Flowable;",
            "Lio/reactivex/Flowable;",
            ">;"
        }
    .end annotation

    .line 520
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnFlowableSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Flowable;",
            "Lorg/reactivestreams/Subscriber;",
            "Lorg/reactivestreams/Subscriber;",
            ">;"
        }
    .end annotation

    .line 538
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnMaybeAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Maybe;",
            "Lio/reactivex/Maybe;",
            ">;"
        }
    .end annotation

    .line 556
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnMaybeSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Maybe;",
            "Lio/reactivex/MaybeObserver;",
            "Lio/reactivex/MaybeObserver;",
            ">;"
        }
    .end annotation

    .line 547
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnObservableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Observable;",
            "Lio/reactivex/Observable;",
            ">;"
        }
    .end annotation

    .line 583
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnObservableSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Observable;",
            "Lio/reactivex/Observer;",
            "Lio/reactivex/Observer;",
            ">;"
        }
    .end annotation

    .line 601
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnSingleAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Single;",
            "Lio/reactivex/Single;",
            ">;"
        }
    .end annotation

    .line 565
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnSingleSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Single;",
            "Lio/reactivex/SingleObserver;",
            "Lio/reactivex/SingleObserver;",
            ">;"
        }
    .end annotation

    .line 574
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getScheduleHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getSingleSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 193
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 196
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    .line 198
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 208
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 211
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    .line 213
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 223
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 226
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    .line 228
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 238
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 241
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    .line 243
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static isLockdown()Z
    .locals 1

    .line 103
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    return v0
.end method

.method public static lockdown()V
    .locals 1

    const/4 v0, 0x1

    .line 95
    sput-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    return-void
.end method

.method public static onAssembly(Lio/reactivex/Completable;)Lio/reactivex/Completable;
    .locals 1

    .line 922
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 924
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Completable;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 849
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 851
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Flowable;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Maybe<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .line 834
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeAssembly:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 836
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Maybe;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 879
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 881
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observable;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Single<",
            "TT;>;)",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 909
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 911
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Single;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/flowables/ConnectableFlowable;)Lio/reactivex/flowables/ConnectableFlowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;)",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;"
        }
    .end annotation

    .line 864
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableFlowableAssembly:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 866
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/flowables/ConnectableFlowable;

    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/observables/ConnectableObservable;)Lio/reactivex/observables/ConnectableObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;)",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    .line 894
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableObservableAssembly:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 896
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/observables/ConnectableObservable;

    :cond_0
    return-object p0
.end method

.method public static onComputationScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    .line 252
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 256
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 264
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    if-nez p0, :cond_0

    .line 267
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    invoke-interface {v0, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onIoScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    .line 297
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 301
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static onNewThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    .line 310
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 314
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 323
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 327
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public static onSingleScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    .line 336
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 340
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static onSubscribe(Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 1

    .line 803
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 805
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/CompletableObserver;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Maybe<",
            "TT;>;",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation

    .line 819
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeSubscribe:Lio/reactivex/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 821
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/MaybeObserver;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lio/reactivex/Observer<",
            "-TT;>;)",
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation

    .line 773
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 775
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observer;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Single<",
            "TT;>;",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation

    .line 789
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 791
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/SingleObserver;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 757
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 759
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/reactivestreams/Subscriber;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    .line 348
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setScheduleHandler(Lio/reactivex/functions/Function;)V

    .line 350
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setComputationSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 351
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitComputationSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 353
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setIoSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 354
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitIoSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 356
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setSingleSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 357
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitSingleSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 359
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 360
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 362
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnFlowableAssembly(Lio/reactivex/functions/Function;)V

    .line 363
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnFlowableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 365
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnObservableAssembly(Lio/reactivex/functions/Function;)V

    .line 366
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnObservableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 368
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnSingleAssembly(Lio/reactivex/functions/Function;)V

    .line 369
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnSingleSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 371
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnCompletableAssembly(Lio/reactivex/functions/Function;)V

    .line 372
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnCompletableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 374
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnConnectableFlowableAssembly(Lio/reactivex/functions/Function;)V

    .line 375
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnConnectableObservableAssembly(Lio/reactivex/functions/Function;)V

    .line 377
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnMaybeAssembly(Lio/reactivex/functions/Function;)V

    .line 378
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnMaybeSubscribe(Lio/reactivex/functions/BiFunction;)V

    return-void
.end method

.method public static setComputationSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 386
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 389
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    return-void

    .line 387
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setErrorHandler(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 397
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 400
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    return-void

    .line 398
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setInitComputationSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 408
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 411
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    return-void

    .line 409
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setInitIoSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 419
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 422
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    return-void

    .line 420
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setInitNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 430
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 433
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    return-void

    .line 431
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setInitSingleSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 441
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 444
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    return-void

    .line 442
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setIoSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 452
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 455
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/functions/Function;

    return-void

    .line 453
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 463
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 466
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadHandler:Lio/reactivex/functions/Function;

    return-void

    .line 464
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnCompletableAssembly(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Completable;",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 609
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 612
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/functions/Function;

    return-void

    .line 610
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnCompletableSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Completable;",
            "Lio/reactivex/CompletableObserver;",
            "Lio/reactivex/CompletableObserver;",
            ">;)V"
        }
    .end annotation

    .line 621
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 624
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/functions/BiFunction;

    return-void

    .line 622
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnConnectableFlowableAssembly(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            ">;)V"
        }
    .end annotation

    .line 657
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 660
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableFlowableAssembly:Lio/reactivex/functions/Function;

    return-void

    .line 658
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnConnectableObservableAssembly(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/observables/ConnectableObservable;",
            "Lio/reactivex/observables/ConnectableObservable;",
            ">;)V"
        }
    .end annotation

    .line 705
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 708
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableObservableAssembly:Lio/reactivex/functions/Function;

    return-void

    .line 706
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnFlowableAssembly(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Flowable;",
            "Lio/reactivex/Flowable;",
            ">;)V"
        }
    .end annotation

    .line 633
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 636
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/functions/Function;

    return-void

    .line 634
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnFlowableSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Flowable;",
            "Lorg/reactivestreams/Subscriber;",
            "Lorg/reactivestreams/Subscriber;",
            ">;)V"
        }
    .end annotation

    .line 669
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 672
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/functions/BiFunction;

    return-void

    .line 670
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnMaybeAssembly(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Maybe;",
            "Lio/reactivex/Maybe;",
            ">;)V"
        }
    .end annotation

    .line 645
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 648
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeAssembly:Lio/reactivex/functions/Function;

    return-void

    .line 646
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnMaybeSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Maybe;",
            "Lio/reactivex/MaybeObserver;",
            "Lio/reactivex/MaybeObserver;",
            ">;)V"
        }
    .end annotation

    .line 681
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 684
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeSubscribe:Lio/reactivex/functions/BiFunction;

    return-void

    .line 682
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnObservableAssembly(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Observable;",
            "Lio/reactivex/Observable;",
            ">;)V"
        }
    .end annotation

    .line 693
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 696
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    return-void

    .line 694
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnObservableSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Observable;",
            "Lio/reactivex/Observer;",
            "Lio/reactivex/Observer;",
            ">;)V"
        }
    .end annotation

    .line 718
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 721
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    return-void

    .line 719
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnSingleAssembly(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Single;",
            "Lio/reactivex/Single;",
            ">;)V"
        }
    .end annotation

    .line 730
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 733
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/functions/Function;

    return-void

    .line 731
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOnSingleSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "Lio/reactivex/Single;",
            "Lio/reactivex/SingleObserver;",
            "Lio/reactivex/SingleObserver;",
            ">;)V"
        }
    .end annotation

    .line 742
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 745
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/functions/BiFunction;

    return-void

    .line 743
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setScheduleHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 474
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 477
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    return-void

    .line 475
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSingleSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 485
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 488
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/functions/Function;

    return-void

    .line 486
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static uncaught(Ljava/lang/Throwable;)V
    .locals 2

    .line 286
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 288
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static unlock()V
    .locals 1

    const/4 v0, 0x0

    .line 495
    sput-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    return-void
.end method
