.class final Lcom/avos/avoscloud/AVStatus$6;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusWithIdInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/StatusCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/StatusCallback;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 734
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/StatusCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 724
    new-instance p2, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {p2}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 725
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVStatus;->processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V

    .line 726
    iget-object p1, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 727
    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/StatusCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
