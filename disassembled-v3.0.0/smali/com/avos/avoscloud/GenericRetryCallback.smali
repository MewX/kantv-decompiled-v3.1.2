.class abstract Lcom/avos/avoscloud/GenericRetryCallback;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "GenericRetryCallback.java"


# instance fields
.field callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
