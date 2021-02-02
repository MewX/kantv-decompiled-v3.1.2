.class Lcom/avos/avoscloud/AVObject$20;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .line 1901
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVObject;->requestStatistic:Z

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1922
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$302(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1923
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$400(Lcom/avos/avoscloud/AVObject;)V

    .line 1924
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1928
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1931
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 1910
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$302(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1911
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    .line 1912
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 1914
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz p1, :cond_0

    .line 1915
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
