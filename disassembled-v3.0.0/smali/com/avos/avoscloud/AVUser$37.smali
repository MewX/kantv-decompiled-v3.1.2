.class final Lcom/avos/avoscloud/AVUser$37;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/LogInCallback;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$userInfo:Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V
    .locals 0

    .line 2407
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$37;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$37;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/AVUser$37;->val$userInfo:Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 2426
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$37;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2427
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    if-nez p2, :cond_1

    .line 2411
    iget-object p2, p0, Lcom/avos/avoscloud/AVUser$37;->val$clazz:Ljava/lang/Class;

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$37;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2415
    :cond_0
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2416
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$37;->val$userInfo:Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    const/4 p1, 0x1

    .line 2417
    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 2418
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$37;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2419
    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method
