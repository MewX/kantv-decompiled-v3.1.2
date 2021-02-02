.class final Lcom/avos/avoscloud/AVStatus$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/StatusListCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 599
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/StatusListCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 590
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->processStatusResultList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 591
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus$4;->val$callback:Lcom/avos/avoscloud/StatusListCallback;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/StatusListCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
