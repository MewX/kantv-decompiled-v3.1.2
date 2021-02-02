.class public Lcom/avos/avoscloud/AVCaptcha;
.super Ljava/lang/Object;
.source "AVCaptcha.java"


# static fields
.field private static final CAPTCHA_CODE:Ljava/lang/String; = "captcha_code"

.field private static final CAPTCHA_TOKEN:Ljava/lang/String; = "captcha_token"

.field private static final CAPTCHA_URL:Ljava/lang/String; = "captcha_url"

.field private static final VALIDATE_TOKEN:Ljava/lang/String; = "validate_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOptionParams(Lcom/avos/avoscloud/AVCaptchaOption;)Lcom/avos/avoscloud/AVRequestParams;
    .locals 3

    .line 101
    new-instance v0, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>()V

    if-eqz p0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVCaptchaOption;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVCaptchaOption;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVCaptchaOption;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVCaptchaOption;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "width"

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static requestCaptchaInBackground(Lcom/avos/avoscloud/AVCaptchaOption;Lcom/avos/avoscloud/AVCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVCaptchaOption;",
            "Lcom/avos/avoscloud/AVCallback<",
            "Lcom/avos/avoscloud/AVCaptchaDigest;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVCaptcha;->getOptionParams(Lcom/avos/avoscloud/AVCaptchaOption;)Lcom/avos/avoscloud/AVRequestParams;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVCaptcha$1;

    invoke-direct {v5, p1}, Lcom/avos/avoscloud/AVCaptcha$1;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    const-string v1, "requestCaptcha"

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static verifyCaptchaCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVCaptchaDigest;Lcom/avos/avoscloud/AVCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVCaptchaDigest;",
            "Lcom/avos/avoscloud/AVCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVCaptchaDigest;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "captcha_code"

    .line 77
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVCaptchaDigest;->getNonce()Ljava/lang/String;

    move-result-object p0

    const-string p1, "captcha_token"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/avos/avoscloud/AVCaptcha$2;

    invoke-direct {v1, p2}, Lcom/avos/avoscloud/AVCaptcha$2;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    const-string p2, "verifyCaptcha"

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nonce in digest cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "digest cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "captchaCode cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
