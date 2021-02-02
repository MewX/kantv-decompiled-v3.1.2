.class public Lcom/transitionseverywhere/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static MAX_IMAGE_SIZE:I = 0x100000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 6

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 93
    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 94
    invoke-static {p0, v0}, Lcom/transitionseverywhere/utils/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 95
    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 96
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 97
    iget p2, p0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 98
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 99
    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 100
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 102
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    invoke-static {p1, v0, p0}, Lcom/transitionseverywhere/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    sub-int p0, v2, p2

    const/high16 p1, 0x40000000    # 2.0f

    .line 108
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    sub-int v0, v3, v1

    .line 109
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 110
    invoke-virtual {v4, p0, p1}, Landroid/widget/ImageView;->measure(II)V

    .line 111
    invoke-virtual {v4, p2, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    return-object v4
.end method

.method public static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    .line 119
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    sget v2, Lcom/transitionseverywhere/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v2, v2

    mul-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 125
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 127
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 131
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 132
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 134
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 135
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 136
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 137
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x0

    .line 138
    invoke-virtual {p0, v8, v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6

    .line 159
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 160
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 162
    sget v4, Lcom/transitionseverywhere/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v4, v4

    mul-int v5, v0, v1

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 165
    iget v4, p2, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget p2, p2, Landroid/graphics/RectF;->top:F

    neg-float p2, p2

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 166
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 168
    :try_start_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 171
    invoke-virtual {p0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v2
.end method

.method public static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 3

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 49
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 50
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static varargs mergeTransitions([Lcom/transitionseverywhere/Transition;)Lcom/transitionseverywhere/Transition;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 58
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 59
    aget-object v4, p0, v1

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-ne v2, v1, :cond_3

    .line 70
    aget-object p0, p0, v3

    return-object p0

    .line 73
    :cond_3
    new-instance v1, Lcom/transitionseverywhere/TransitionSet;

    invoke-direct {v1}, Lcom/transitionseverywhere/TransitionSet;-><init>()V

    .line 74
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 75
    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    .line 76
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/TransitionSet;->addTransition(Lcom/transitionseverywhere/Transition;)Lcom/transitionseverywhere/TransitionSet;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method
