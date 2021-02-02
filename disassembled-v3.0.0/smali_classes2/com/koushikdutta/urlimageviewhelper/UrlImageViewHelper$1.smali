.class final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;
.super Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$targetHeight:I

.field final synthetic val$targetWidth:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 565
    const-class v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetWidth:I

    iput p5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetHeight:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;)V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    .line 592
    invoke-interface {p1}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;->allowCache()Z

    move-result p1

    if-nez p1, :cond_0

    .line 593
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void

    .line 572
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 574
    new-instance p3, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {p3, p2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 575
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 576
    invoke-static {p3, p2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 577
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    move-object p3, v0

    .line 582
    :cond_2
    iget-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    iget v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetWidth:I

    iget v2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetHeight:I

    invoke-static {p2, v0, p3, v1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->result:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 592
    invoke-interface {p1}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;->allowCache()Z

    move-result p1

    if-nez p1, :cond_3

    .line 593
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :catch_0
    :try_start_1
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 592
    invoke-interface {p1}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;->allowCache()Z

    move-result p1

    if-nez p1, :cond_3

    .line 593
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    .line 592
    invoke-interface {p1}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;->allowCache()Z

    move-result p1

    if-nez p1, :cond_4

    .line 593
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    throw p2
.end method
