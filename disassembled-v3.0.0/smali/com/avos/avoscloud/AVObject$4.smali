.class Lcom/avos/avoscloud/AVObject$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/DeleteCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$4;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$4;->val$internalCallback:Lcom/avos/avoscloud/DeleteCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$4;->val$internalCallback:Lcom/avos/avoscloud/DeleteCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 739
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 731
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$4;->val$internalCallback:Lcom/avos/avoscloud/DeleteCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 732
    invoke-virtual {p1, p2, p2}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
