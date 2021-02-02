.class public Lcom/avos/avoscloud/AVSMS;
.super Ljava/lang/Object;
.source "AVSMS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestSMSCode(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/avos/avoscloud/AVSMS$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMS$1;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVSMS;->requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 33
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVSMS;->requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method private static requestSMSCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 9

    .line 50
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Phone Number"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    if-nez p1, :cond_2

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSMSOption;->getOptionMaps()Ljava/util/Map;

    move-result-object p1

    :goto_0
    const-string v0, "mobilePhoneNumber"

    .line 61
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVSMS$2;

    invoke-direct {v6, p3}, Lcom/avos/avoscloud/AVSMS$2;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "requestSmsCode"

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verifySMSCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/avos/avoscloud/AVSMS$3;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVSMS$3;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVSMS;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 102
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVSMS;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    return-void
.end method

.method private static verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 9

    .line 124
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v2, "Invalid Verify Code"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 126
    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    const/4 v0, 0x1

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "verifySmsCode/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mobilePhoneNumber"

    .line 130
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVSMS$4;

    invoke-direct {v6, p3}, Lcom/avos/avoscloud/AVSMS$4;-><init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
