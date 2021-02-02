.class final Lcom/avos/avoscloud/AVStatus$9;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->resetUnreadStatusesCount(Ljava/lang/String;Lcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 1547
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$9;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$9;->val$callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v0, :cond_0

    .line 1558
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 1550
    iget-object p1, p0, Lcom/avos/avoscloud/AVStatus$9;->val$callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1551
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
