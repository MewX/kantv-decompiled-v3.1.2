.class public abstract Lcom/avos/avoscloud/AVIMEventHandler;
.super Ljava/lang/Object;
.source "AVIMEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 9
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/avos/avoscloud/AVIMEventHandler$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/avos/avoscloud/AVIMEventHandler$1;-><init>(Lcom/avos/avoscloud/AVIMEventHandler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Post runnable to handler failed."

    .line 16
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVIMEventHandler;->processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method
