.class final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;
.super Ljava/lang/Object;
.source "UrlImageViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.field final synthetic val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

.field final synthetic val$defaultDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$downloads:Ljava/util/ArrayList;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;Landroid/widget/ImageView;Ljava/util/ArrayList;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    iput-object p5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$downloads:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 602
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 605
    new-instance v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    sget-object v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v4, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No usable result, defaulting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    iget-object v2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 610
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$200()Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_1
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$300()Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    if-nez v4, :cond_2

    .line 615
    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v4, v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-interface {v3, v1, v4, v5, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$downloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 619
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$400()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 620
    iget-object v6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring out of date request to update view for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 625
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$400()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 628
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    :cond_5
    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$imageView:Landroid/widget/ImageView;

    if-ne v4, v6, :cond_3

    .line 633
    iget-object v6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v6, v6, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-interface {v5, v4, v6, v7, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    goto :goto_1

    .line 635
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Populated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
