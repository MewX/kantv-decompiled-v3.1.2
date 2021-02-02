.class final Lcom/avos/avoscloud/AVObject$17;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .line 1670
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 1686
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    const/4 v2, 0x0

    .line 1687
    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVObject;->access$302(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1688
    invoke-static {v1}, Lcom/avos/avoscloud/AVObject;->access$400(Lcom/avos/avoscloud/AVObject;)V

    .line 1689
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    goto :goto_0

    .line 1691
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1693
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 1673
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1674
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1675
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$302(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1676
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    goto :goto_0

    .line 1678
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$17;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1679
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method
