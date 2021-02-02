.class public final Lio/reactivex/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/Schedulers$NewThreadHolder;,
        Lio/reactivex/schedulers/Schedulers$IoHolder;,
        Lio/reactivex/schedulers/Schedulers$ComputationHolder;,
        Lio/reactivex/schedulers/Schedulers$SingleHolder;
    }
.end annotation


# static fields
.field static final COMPUTATION:Lio/reactivex/Scheduler;

.field static final IO:Lio/reactivex/Scheduler;

.field static final NEW_THREAD:Lio/reactivex/Scheduler;

.field static final SINGLE:Lio/reactivex/Scheduler;

.field static final TRAMPOLINE:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lio/reactivex/schedulers/Schedulers$1;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$1;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->SINGLE:Lio/reactivex/Scheduler;

    .line 72
    new-instance v0, Lio/reactivex/schedulers/Schedulers$2;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$2;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    .line 79
    new-instance v0, Lio/reactivex/schedulers/Schedulers$3;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$3;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    .line 86
    invoke-static {}, Lio/reactivex/internal/schedulers/TrampolineScheduler;->instance()Lio/reactivex/internal/schedulers/TrampolineScheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->TRAMPOLINE:Lio/reactivex/Scheduler;

    .line 88
    new-instance v0, Lio/reactivex/schedulers/Schedulers$4;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$4;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->NEW_THREAD:Lio/reactivex/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computation()Lio/reactivex/Scheduler;
    .locals 1

    .line 113
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onComputationScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;
    .locals 1

    .line 179
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static io()Lio/reactivex/Scheduler;
    .locals 1

    .line 130
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onIoScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static newThread()Lio/reactivex/Scheduler;
    .locals 1

    .line 151
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->NEW_THREAD:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static shutdown()V
    .locals 1

    .line 187
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    .line 188
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    .line 189
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    .line 190
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    .line 191
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    .line 192
    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->shutdown()V

    return-void
.end method

.method public static single()Lio/reactivex/Scheduler;
    .locals 1

    .line 168
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->SINGLE:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onSingleScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static start()V
    .locals 1

    .line 200
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    .line 201
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    .line 202
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    .line 203
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    .line 204
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->start()V

    .line 205
    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->start()V

    return-void
.end method

.method public static trampoline()Lio/reactivex/Scheduler;
    .locals 1

    .line 140
    sget-object v0, Lio/reactivex/schedulers/Schedulers;->TRAMPOLINE:Lio/reactivex/Scheduler;

    return-object v0
.end method
