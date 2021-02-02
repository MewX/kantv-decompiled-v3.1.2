.class public Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;
.super Ljava/lang/Object;
.source "FileUrlDownloader.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canDownloadUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "file:/"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 12
    new-instance p1, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;

    invoke-direct {p1, p0, p4, p2, p5}, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader$1;-><init>(Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 31
    invoke-static {p1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTask(Landroid/os/AsyncTask;)V

    return-void
.end method
