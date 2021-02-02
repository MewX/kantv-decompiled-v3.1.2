.class final Lcom/avos/avoscloud/AVSMS$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSMS;->verifySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMS$4;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/avos/avoscloud/AVSMS$4;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/avos/avoscloud/AVSMS$4;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 136
    invoke-virtual {p1, p2, p2}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
