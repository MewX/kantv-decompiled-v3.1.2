.class final Lcom/avos/avoscloud/AVObject$26;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$failureLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$lock:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/avos/avoscloud/SaveCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 2339
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$26;->val$failureLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$26;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$26;->val$lock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$26;->val$failureLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$26;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    return-void

    .line 2347
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$26;->val$lock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 2348
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$26;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    :cond_2
    :goto_0
    return-void
.end method
