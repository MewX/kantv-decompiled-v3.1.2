.class public Lcom/samsung/multiscreen/util/RunUtil;
.super Ljava/lang/Object;
.source "RunUtil.java"


# static fields
.field private static executor:Ljava/util/concurrent/Executor;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 43
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/multiscreen/util/RunUtil;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMain()Z
    .locals 2

    .line 89
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static runInBackground(Ljava/lang/Runnable;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/samsung/multiscreen/util/RunUtil;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/samsung/multiscreen/util/RunUtil;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static runOnUI(Ljava/lang/Runnable;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/samsung/multiscreen/util/RunUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/multiscreen/util/RunUtil;->handler:Landroid/os/Handler;

    .line 54
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/util/RunUtil;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runOnUiDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 64
    sget-object v0, Lcom/samsung/multiscreen/util/RunUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/multiscreen/util/RunUtil;->handler:Landroid/os/Handler;

    .line 67
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/util/RunUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/multiscreen/util/RunUtil$1;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/util/RunUtil$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
