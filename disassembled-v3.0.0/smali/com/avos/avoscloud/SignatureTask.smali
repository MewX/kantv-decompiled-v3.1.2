.class Lcom/avos/avoscloud/SignatureTask;
.super Landroid/os/AsyncTask;
.source "SignatureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/avos/avoscloud/Signature;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/avos/avoscloud/SignatureCallback;

.field signatureException:Lcom/avos/avoscloud/AVException;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/SignatureCallback;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/avos/avoscloud/SignatureTask;->signatureException:Lcom/avos/avoscloud/AVException;

    .line 14
    iput-object p1, p0, Lcom/avos/avoscloud/SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    return-void
.end method


# virtual methods
.method public varargs commit([Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/avos/avoscloud/Signature;",
            ">;"
        }
    .end annotation

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 53
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/SignatureTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .locals 2

    const/4 v0, 0x0

    .line 19
    aget-object p1, p1, v0

    .line 21
    iget-object v0, p0, Lcom/avos/avoscloud/SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-virtual {v0}, Lcom/avos/avoscloud/SignatureCallback;->useSignatureCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-static {p1}, Lcom/avos/avoscloud/AVSessionCacheHelper$SignatureCache;->getSessionSignature(Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/avos/avoscloud/Signature;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "get signature from cache"

    .line 25
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 29
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "signature expired"

    .line 30
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 35
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-virtual {v0}, Lcom/avos/avoscloud/SignatureCallback;->computeSignature()Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/avos/avoscloud/SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-virtual {v1}, Lcom/avos/avoscloud/SignatureCallback;->cacheSignature()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVSessionCacheHelper$SignatureCache;->addSessionSignature(Ljava/lang/String;Lcom/avos/avoscloud/Signature;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/avos/avoscloud/SignatureTask;->signatureException:Lcom/avos/avoscloud/AVException;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/SignatureTask;->doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/Signature;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/avos/avoscloud/SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/SignatureTask;->signatureException:Lcom/avos/avoscloud/AVException;

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/SignatureCallback;->onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/avos/avoscloud/Signature;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/SignatureTask;->onPostExecute(Lcom/avos/avoscloud/Signature;)V

    return-void
.end method
