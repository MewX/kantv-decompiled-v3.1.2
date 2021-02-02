.class final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;
.super Landroid/os/AsyncTask;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 645
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 648
    iget-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->val$filename:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->onDownloadComplete(Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 645
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 653
    iget-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;->val$completion:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
