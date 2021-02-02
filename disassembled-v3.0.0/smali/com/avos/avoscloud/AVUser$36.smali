.class final Lcom/avos/avoscloud/AVUser$36;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$callback:Lcom/avos/avoscloud/LogInCallback;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$platform:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 2353
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$36;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$36;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/AVUser$36;->val$platform:Ljava/lang/String;

    iput-object p4, p0, Lcom/avos/avoscloud/AVUser$36;->val$authData:Ljava/util/Map;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 2377
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$36;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2378
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3

    if-nez p2, :cond_3

    .line 2357
    iget-object p2, p0, Lcom/avos/avoscloud/AVUser$36;->val$clazz:Ljava/lang/Class;

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$36;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2361
    :cond_0
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    const/4 p1, 0x0

    .line 2362
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 2363
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$36;->val$platform:Ljava/lang/String;

    const-string v1, "weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "access_token"

    if-eqz v0, :cond_1

    .line 2364
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$36;->val$authData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVUser;->access$402(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2365
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$36;->val$platform:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2366
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$36;->val$authData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVUser;->access$502(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2368
    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 2369
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$36;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_3

    .line 2370
    invoke-virtual {v0, p2, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_3
    return-void
.end method
