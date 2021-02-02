.class final Lcom/avos/avoscloud/AVUser$3;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
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

    .line 478
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$3;->val$user:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$3;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$3;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 499
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$3;->val$user:Lcom/avos/avoscloud/AVUser;

    .line 483
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$3;->val$user:Lcom/avos/avoscloud/AVUser;

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 485
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$3;->val$user:Lcom/avos/avoscloud/AVUser;

    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 486
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$3;->val$user:Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    goto :goto_0

    .line 489
    :cond_0
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x65

    const-string v0, "User is not found."

    invoke-direct {p2, p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    .line 491
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$3;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz p1, :cond_1

    .line 492
    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method
