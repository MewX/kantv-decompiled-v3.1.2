.class final Lcom/avos/avoscloud/AVOSCloud$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud;->getServerDateInBackground(ZLcom/avos/avoscloud/callback/AVServerDateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/callback/AVServerDateCallback;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$4;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$4;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 434
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    const/4 p2, 0x0

    .line 420
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object p1

    .line 421
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$4;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$4;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 425
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$4;->val$callback:Lcom/avos/avoscloud/callback/AVServerDateCallback;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    :goto_0
    return-void
.end method
