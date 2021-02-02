.class public Lcom/avos/avoscloud/AVCaptchaDigest;
.super Ljava/lang/Object;
.source "AVCaptchaDigest.java"


# instance fields
.field private nonce:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getNonce()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/avos/avoscloud/AVCaptchaDigest;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/AVCaptchaDigest;->url:Ljava/lang/String;

    return-object v0
.end method

.method setNonce(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/avos/avoscloud/AVCaptchaDigest;->nonce:Ljava/lang/String;

    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/avos/avoscloud/AVCaptchaDigest;->url:Ljava/lang/String;

    return-void
.end method
