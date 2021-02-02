.class final Lcom/avos/avoscloud/AVCaptcha$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVCaptcha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVCaptcha;->verifyCaptchaCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVCaptchaDigest;Lcom/avos/avoscloud/AVCallback;)V
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

    .line 80
    iput-object p1, p0, Lcom/avos/avoscloud/AVCaptcha$2;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/AVCaptcha$2;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 83
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 84
    const-class p2, Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string p2, "validate_token"

    .line 85
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/avos/avoscloud/AVCaptcha$2;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVCaptcha$2;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {p1, v0, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
