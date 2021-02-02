.class public Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;
.super Lcom/koushikdutta/urlimageviewhelper/LruCache;
.source "LruBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/urlimageviewhelper/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    return p1
.end method
