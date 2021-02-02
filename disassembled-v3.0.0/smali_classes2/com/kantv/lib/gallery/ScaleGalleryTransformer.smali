.class public Lcom/kantv/lib/gallery/ScaleGalleryTransformer;
.super Ljava/lang/Object;
.source "ScaleGalleryTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static final MIN_ALPHA:F = 0.5f

.field private static final MIN_SCALE:F = 0.85f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-gez v1, :cond_0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v0, v3

    mul-float v4, v1, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    mul-float v0, v0, v2

    div-float/2addr v0, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v1, v1, v6

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    mul-float v2, v2, v6

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    const/4 v1, 0x0

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    neg-float p2, v0

    div-float/2addr v4, v5

    add-float/2addr p2, v4

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 31
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    return-void
.end method
