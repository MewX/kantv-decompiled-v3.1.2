.class public Lcom/avos/avoscloud/AVAnonymousUtils;
.super Ljava/lang/Object;
.source "AVAnonymousUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static anonymousAuthData()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "{\"authData\": {\"anonymous\" : {\"id\": \"%s\"}}}"

    .line 34
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLinked(Lcom/avos/avoscloud/AVUser;)Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAnonymous()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static logIn(Lcom/avos/avoscloud/LogInCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/LogInCallback<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/avos/avoscloud/AVAnonymousUtils;->anonymousAuthData()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVAnonymousUtils$1;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVAnonymousUtils$1;-><init>(Lcom/avos/avoscloud/LogInCallback;)V

    const-string p0, "users"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method
