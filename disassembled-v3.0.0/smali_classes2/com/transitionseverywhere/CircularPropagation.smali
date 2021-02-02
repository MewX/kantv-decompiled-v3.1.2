.class public Lcom/transitionseverywhere/CircularPropagation;
.super Lcom/transitionseverywhere/VisibilityPropagation;
.source "CircularPropagation.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/transitionseverywhere/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 38
    iput v0, p0, Lcom/transitionseverywhere/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)D
    .locals 2

    sub-float/2addr p2, p0

    float-to-double v0, p2

    sub-float/2addr p3, p1

    float-to-double p0, p3

    .line 106
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    if-eqz p4, :cond_2

    .line 67
    invoke-virtual {p0, p3}, Lcom/transitionseverywhere/CircularPropagation;->getViewVisibility(Lcom/transitionseverywhere/TransitionValues;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p4

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, -0x1

    .line 74
    :goto_1
    invoke-virtual {p0, p3}, Lcom/transitionseverywhere/CircularPropagation;->getViewX(Lcom/transitionseverywhere/TransitionValues;)I

    move-result v3

    .line 75
    invoke-virtual {p0, p3}, Lcom/transitionseverywhere/CircularPropagation;->getViewY(Lcom/transitionseverywhere/TransitionValues;)I

    move-result p3

    .line 77
    invoke-virtual {p2}, Lcom/transitionseverywhere/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 82
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    .line 84
    new-array v5, v4, [I

    .line 85
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 86
    aget v6, v5, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    add-float/2addr v6, v7

    .line 86
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 88
    aget v2, v5, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    int-to-float v2, v2

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    add-float/2addr v2, v4

    .line 88
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, v6

    :goto_2
    int-to-float v3, v3

    int-to-float p3, p3

    int-to-float v2, v2

    int-to-float v4, v4

    .line 91
    invoke-static {v3, p3, v2, v4}, Lcom/transitionseverywhere/CircularPropagation;->distance(FFFF)D

    move-result-wide v2

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-static {v4, v4, p3, p1}, Lcom/transitionseverywhere/CircularPropagation;->distance(FFFF)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 95
    invoke-virtual {p2}, Lcom/transitionseverywhere/Transition;->getDuration()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-gez p3, :cond_4

    const-wide/16 p1, 0x12c

    :cond_4
    int-to-long p3, p4

    mul-long p1, p1, p3

    long-to-float p1, p1

    .line 100
    iget p2, p0, Lcom/transitionseverywhere/CircularPropagation;->mPropagationSpeed:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public setPropagationSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 56
    iput p1, p0, Lcom/transitionseverywhere/CircularPropagation;->mPropagationSpeed:F

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "propagationSpeed may not be 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
