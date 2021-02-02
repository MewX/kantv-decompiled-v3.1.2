.class Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;
.super Landroid/os/AsyncTask;
.source "ContentUrlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;

.field final synthetic val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

    iput-object p5, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 p1, 0x0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;

    iget-object v2, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;

    invoke-interface {v1, v2, v0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;->onDownloadComplete(Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader$1;->val$completion:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
