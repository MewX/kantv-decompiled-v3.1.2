.class public Lcom/avos/avoscloud/AVCaptchaOption;
.super Ljava/lang/Object;
.source "AVCaptchaOption.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/avos/avoscloud/AVCaptchaOption;->width:I

    .line 16
    iput v0, p0, Lcom/avos/avoscloud/AVCaptchaOption;->height:I

    return-void
.end method


# virtual methods
.method getHeight()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/avos/avoscloud/AVCaptchaOption;->height:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/avos/avoscloud/AVCaptchaOption;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/avos/avoscloud/AVCaptchaOption;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/avos/avoscloud/AVCaptchaOption;->width:I

    return-void
.end method