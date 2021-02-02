.class public abstract Lcom/kantv/lib/gallery/GalleryAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GalleryAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public abstract getGallerSize()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public abstract getItemView(I)Landroid/view/View;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/kantv/lib/gallery/GalleryAdapter;->getGallerSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/gallery/GalleryAdapter;->getGallerSize()I

    move-result v0

    rem-int/2addr p2, v0

    if-gtz p2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/kantv/lib/gallery/GalleryAdapter;->getGallerSize()I

    move-result v0

    add-int/2addr p2, v0

    .line 35
    :cond_1
    invoke-virtual {p0, p2}, Lcom/kantv/lib/gallery/GalleryAdapter;->getItemView(I)Landroid/view/View;

    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
