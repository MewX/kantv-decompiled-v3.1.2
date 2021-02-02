.class public abstract Lcom/avos/avoscloud/GenericObjectCallback;
.super Ljava/lang/Object;
.source "GenericObjectCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRetryNeeded(ILjava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->isRetryNeeded(ILjava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "retry this request"

    .line 10
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/avos/avoscloud/GenericObjectCallback;->retry(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    return-void
.end method

.method public retry(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
