.class final Lcom/avos/avoscloud/AVSMS$1;
.super Lcom/avos/avoscloud/RequestMobileCodeCallback;
.source "AVSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSMS;->requestSMSCode(Ljava/lang/String;Lcom/avos/avoscloud/AVSMSOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
