.class final Lcom/avos/avoscloud/AVAnonymousUtils$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVAnonymousUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVAnonymousUtils;->logIn(Lcom/avos/avoscloud/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/LogInCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/LogInCallback;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/avos/avoscloud/AVAnonymousUtils$1;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/AVAnonymousUtils$1;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/AVUser;->setAnonymous(Z)V

    .line 64
    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 65
    iget-object p1, p0, Lcom/avos/avoscloud/AVAnonymousUtils$1;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
