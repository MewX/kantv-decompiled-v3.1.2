.class public abstract Lcom/avos/avoscloud/AVCallback;
.super Ljava/lang/Object;
.source "AVCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public internalDone(Lcom/avos/avoscloud/AVException;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVCallback;->mustRunOnUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/avos/avoscloud/AVCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/avos/avoscloud/AVCallback$1;-><init>(Lcom/avos/avoscloud/AVCallback;Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Post runnable to handler failed."

    .line 15
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
