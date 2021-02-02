.class final Lcom/avos/avoscloud/AVUser$7;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

.field final synthetic val$user:Lcom/avos/avoscloud/AVUser;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$7;->val$user:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$7;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$7;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 691
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$7;->val$user:Lcom/avos/avoscloud/AVUser;

    .line 676
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$7;->val$user:Lcom/avos/avoscloud/AVUser;

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 678
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$7;->val$user:Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 681
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x65

    const-string v1, "User is not found."

    invoke-direct {p2, p1, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 683
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$7;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz p1, :cond_1

    .line 684
    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method
