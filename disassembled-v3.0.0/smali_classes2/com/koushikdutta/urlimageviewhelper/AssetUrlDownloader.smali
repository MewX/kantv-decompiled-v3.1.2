.class public Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader;
.super Ljava/lang/Object;
.source "AssetUrlDownloader.java"

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

    const-string v0, "file:///android_asset/"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V
    .locals 6

    .line 13
    new-instance p3, Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader$1;-><init>(Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader;Ljava/lang/String;Landroid/content/Context;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V

    .line 34
    invoke-static {p3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTask(Landroid/os/AsyncTask;)V

    return-void
.end method
