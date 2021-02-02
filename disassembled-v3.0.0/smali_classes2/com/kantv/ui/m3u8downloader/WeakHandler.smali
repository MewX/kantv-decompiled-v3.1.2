.class public abstract Lcom/kantv/ui/m3u8downloader/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;,
        Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;,
        Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    .line 46
    iput-object v2, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 47
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    .line 61
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 62
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    .line 71
    iput-object v2, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 72
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    .line 83
    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 84
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 363
    new-instance v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 364
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;->insertAfter(Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;)V

    .line 365
    iget-object p1, v0, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;->wrapper:Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    return-object p1

    .line 361
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Runnable can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public final hasMessages(I)Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mRunnables:Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/kantv/ui/m3u8downloader/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/WeakHandler;->mExec:Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/ui/m3u8downloader/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
