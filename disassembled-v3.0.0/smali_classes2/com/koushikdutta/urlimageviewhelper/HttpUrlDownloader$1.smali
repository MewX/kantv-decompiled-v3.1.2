.class Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;
.super Landroid/os/AsyncTask;
.source "HttpUrlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

.field final synthetic val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;Ljava/lang/String;Landroid/content/Context;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

    iput-object p5, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$url:Ljava/lang/String;

    .line 38
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 42
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

    invoke-static {v1}, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;->access$000(Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;)Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

    invoke-static {v1}, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;->access$000(Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;)Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;->getHeadersForRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 46
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_2

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

    iget-object v2, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

    invoke-interface {v1, v2, v0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;->onDownloadComplete(Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v1, "Location"

    .line 53
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader$1;->val$completion:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
