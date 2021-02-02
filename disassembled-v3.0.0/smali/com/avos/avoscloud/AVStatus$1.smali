.class final Lcom/avos/avoscloud/AVStatus$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/DeleteCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$1;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$1;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    if-eqz v0, :cond_0

    .line 282
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 274
    iget-object p1, p0, Lcom/avos/avoscloud/AVStatus$1;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 275
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
