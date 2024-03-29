.class public Lcom/transitionseverywhere/Explode;
.super Lcom/transitionseverywhere/Visibility;
.source "Explode.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final TAG:Ljava/lang/String; = "Explode"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 44
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/transitionseverywhere/Visibility;-><init>()V

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    .line 51
    new-instance v0, Lcom/transitionseverywhere/CircularPropagation;

    invoke-direct {v0}, Lcom/transitionseverywhere/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/Explode;->setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/Transition;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 48
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    .line 56
    new-instance p1, Lcom/transitionseverywhere/CircularPropagation;

    invoke-direct {p1}, Lcom/transitionseverywhere/CircularPropagation;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Explode;->setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/Transition;

    return-void
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)D
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p1, p1

    int-to-double v0, p0

    .line 169
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    iget-object v2, v0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    iget-object v2, v0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 130
    aget v2, v2, v5

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 142
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    .line 145
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v8, v6

    int-to-double v10, v8

    sub-int/2addr v9, v7

    int-to-double v8, v9

    const-wide/16 v12, 0x0

    cmpl-double v14, v10, v12

    if-nez v14, :cond_1

    cmpl-double v14, v8, v12

    if-nez v14, :cond_1

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v12

    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    mul-double v14, v14, v10

    sub-double v10, v14, v12

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v8

    move-wide v8, v10

    move-wide/from16 v10, v16

    .line 155
    :goto_1
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    div-double/2addr v10, v12

    sub-int/2addr v6, v4

    sub-int/2addr v7, v2

    .line 160
    invoke-static {v1, v6, v7}, Lcom/transitionseverywhere/Explode;->calculateMaxDistance(Landroid/view/View;II)D

    move-result-wide v1

    mul-double v8, v8, v1

    .line 162
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v4, v6

    aput v4, p3, v3

    mul-double v1, v1, v10

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    aput v2, p3, v5

    return-void
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 5

    .line 60
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    iget-object v1, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 63
    aget v1, v1, v3

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 66
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Visibility;->captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Explode;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Visibility;->captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Explode;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    iget-object p3, p4, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 90
    iget-object v0, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, p3, v0}, Lcom/transitionseverywhere/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 91
    iget-object p1, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-float v0, v0

    add-float v4, v6, v0

    const/4 v0, 0x1

    .line 92
    aget p1, p1, v0

    int-to-float p1, p1

    add-float v5, v7, p1

    .line 94
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sget-object v8, Lcom/transitionseverywhere/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcom/transitionseverywhere/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Lcom/transitionseverywhere/Transition;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_0
    iget-object p4, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 105
    iget v2, p4, Landroid/graphics/Rect;->left:I

    .line 106
    iget v3, p4, Landroid/graphics/Rect;->top:I

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 111
    iget-object v0, p3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    sget v1, Lcom/transitionseverywhere/R$id;->transitionPosition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 115
    aget v7, v0, v6

    iget v8, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 116
    aget v8, v0, v1

    iget v9, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v8, v5

    .line 117
    aget v9, v0, v6

    aget v0, v0, v1

    invoke-virtual {p4, v9, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    move v7, v4

    move v8, v5

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, p4, v0}, Lcom/transitionseverywhere/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 120
    iget-object p1, p0, Lcom/transitionseverywhere/Explode;->mTempLoc:[I

    aget p4, p1, v6

    int-to-float p4, p4

    add-float v6, v7, p4

    .line 121
    aget p1, p1, v1

    int-to-float p1, p1

    add-float v7, v8, p1

    .line 123
    sget-object v8, Lcom/transitionseverywhere/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcom/transitionseverywhere/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Lcom/transitionseverywhere/Transition;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
