.class Lcom/avos/avoscloud/AVUser$31;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/FollowCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 0

    .line 1891
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$31;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$31;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1904
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1907
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$31;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1908
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/FollowCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 1894
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 1897
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$31;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    if-eqz p1, :cond_0

    .line 1898
    iget-object p2, p0, Lcom/avos/avoscloud/AVUser$31;->this$0:Lcom/avos/avoscloud/AVUser;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/FollowCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
