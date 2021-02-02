.class Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;
.super Landroid/os/AsyncTask;
.source "FileUrlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;

.field final synthetic val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 p1, 0x0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->val$url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;->onDownloadComplete(Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;->val$completion:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
