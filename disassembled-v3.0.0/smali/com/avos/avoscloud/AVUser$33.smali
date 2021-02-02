.class Lcom/avos/avoscloud/AVUser$33;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->getFollowersInBackground(Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/FindCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0

    .line 2120
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$33;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$33;->val$callback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 2132
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2133
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$33;->val$callback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2134
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 2123
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 2124
    iget-object p2, p0, Lcom/avos/avoscloud/AVUser$33;->this$0:Lcom/avos/avoscloud/AVUser;

    const-string v0, "follower"

    invoke-static {p2, p1, v0}, Lcom/avos/avoscloud/AVUser;->access$200(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2125
    iget-object p2, p0, Lcom/avos/avoscloud/AVUser$33;->val$callback:Lcom/avos/avoscloud/FindCallback;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 2126
    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
