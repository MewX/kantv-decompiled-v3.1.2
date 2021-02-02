.class Lcom/avos/avoscloud/PostHttpResponseHandler;
.super Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.source "PostHttpResponseHandler.java"


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2

    .line 38
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nerror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    invoke-virtual {p2, p1, p4, p3}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    .line 15
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 22
    :cond_1
    invoke-static {p3}, Lcom/avos/avoscloud/AVErrorUtils;->errorCode(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 33
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    return-void
.end method
