.class final Lcom/avos/avoscloud/AVCaptcha$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVCaptcha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVCaptcha;->requestCaptchaInBackground(Lcom/avos/avoscloud/AVCaptchaOption;Lcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/avos/avoscloud/AVCaptcha$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/AVCaptcha$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 32
    new-instance p2, Lcom/avos/avoscloud/AVCaptchaDigest;

    invoke-direct {p2}, Lcom/avos/avoscloud/AVCaptchaDigest;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    const-string v0, "captcha_token"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVCaptchaDigest;->setNonce(Ljava/lang/String;)V

    :cond_0
    const-string v0, "captcha_url"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/AVCaptchaDigest;->setUrl(Ljava/lang/String;)V

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/AVCaptcha$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
