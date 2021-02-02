.class public Lcom/avos/avoscloud/GetHttpResponseHandler;
.super Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.source "GetHttpResponseHandler.java"


# instance fields
.field private absoluteURLString:Ljava/lang/String;

.field private policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 9
    sget-object p1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 20
    iput-object p2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 21
    iput-object p3, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/GetHttpResponseHandler;)Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    return-object p0
.end method

.method private isNotModifiedStatus(I)Z
    .locals 1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isUnAuthorize(I)Z
    .locals 1

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private tryLastModifyCache(Ljava/lang/String;)V
    .locals 7

    .line 33
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "null last-modified value"

    .line 37
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/PaasClient;->updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    :cond_2
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    const-wide v3, 0x7fffffffffffffffL

    new-instance v6, Lcom/avos/avoscloud/GetHttpResponseHandler$1;

    invoke-direct {v6, p0}, Lcom/avos/avoscloud/GetHttpResponseHandler$1;-><init>(Lcom/avos/avoscloud/GetHttpResponseHandler;)V

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3

    .line 107
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p3

    .line 109
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->isUnAuthorize(I)Z

    move-result v0

    const-string v1, "\nerror:"

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for request:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    invoke-static {p1, p3, p2, v0}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    invoke-virtual {p2, p1, p4, p3}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2

    .line 60
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p3

    .line 61
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->isNotModifiedStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Last modify matched."

    .line 66
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    .line 68
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/GetHttpResponseHandler;->tryLastModifyCache(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_2
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v1

    invoke-static {p1, p3, v0, v1}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 76
    :cond_3
    invoke-static {p3}, Lcom/avos/avoscloud/AVErrorUtils;->errorCode(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 78
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 84
    :cond_5
    iget-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 85
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object p1

    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {p1, v0, p3, v1}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    :cond_6
    iget-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 90
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object p2

    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-virtual {p2, v0, p3, p1}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 92
    iget-object p2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler;->absoluteURLString:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/PaasClient;->updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 97
    invoke-virtual {p0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 100
    :cond_8
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    return-void
.end method
