.class public Lcom/avos/avoscloud/AVErrorUtils;
.super Ljava/lang/Object;
.source "AVErrorUtils.java"


# static fields
.field public static final CIRCLE_REFERENCE:I = 0x186a1

.field public static final MISSING_OBJECTID:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static circleException()Lcom/avos/avoscloud/AVException;
    .locals 3

    .line 77
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const v1, 0x186a1

    const-string v2, "Found a circular dependency when saving."

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1

    .line 50
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createException(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 3

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    .line 18
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 19
    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 21
    :catch_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1

    if-eqz p1, :cond_0

    .line 27
    invoke-static {p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    .line 29
    instance-of p1, p0, Lcom/avos/avoscloud/AVException;

    if-eqz p1, :cond_1

    .line 30
    check-cast p0, Lcom/avos/avoscloud/AVException;

    return-object p0

    .line 32
    :cond_1
    new-instance p1, Lcom/avos/avoscloud/AVException;

    invoke-direct {p1, p0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    .line 34
    :cond_2
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x3e7

    const-string v0, "unknown reason"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method static errorCode(Ljava/lang/String;)I
    .locals 1

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 43
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static fileDownloadInConsistentFailureException()Lcom/avos/avoscloud/AVException;
    .locals 2

    const/16 v0, 0xfd

    const-string v1, "Downloaded file is inconsistent with original file"

    .line 67
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static invalidObjectIdException()Lcom/avos/avoscloud/AVException;
    .locals 2

    const/16 v0, 0x68

    const-string v1, "Invalid object id."

    .line 54
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static invalidQueryException()Lcom/avos/avoscloud/AVException;
    .locals 2

    const/16 v0, 0x66

    const-string v1, "Invalid query."

    .line 58
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static sessionMissingException()Lcom/avos/avoscloud/AVException;
    .locals 2

    const/16 v0, 0xce

    const-string v1, "No valid session token, make sure signUp or login has been called."

    .line 62
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method
