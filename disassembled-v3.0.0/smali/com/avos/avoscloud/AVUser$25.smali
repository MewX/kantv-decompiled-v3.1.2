.class final Lcom/avos/avoscloud/AVUser$25;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 0

    .line 1572
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$25;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1582
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$25;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1583
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 1575
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$25;->val$internalCallback:Lcom/avos/avoscloud/RequestMobileCodeCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1576
    invoke-virtual {p1, p2, p2}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
