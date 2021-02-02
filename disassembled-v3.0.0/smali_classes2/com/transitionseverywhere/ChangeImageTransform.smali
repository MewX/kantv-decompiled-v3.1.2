.class public Lcom/transitionseverywhere/ChangeImageTransform;
.super Lcom/transitionseverywhere/Transition;
.source "ChangeImageTransform.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeImageTransform:bounds"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeImageTransform:matrix"

.field private static final TAG:Ljava/lang/String; = "ChangeImageTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeImageTransform:matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeImageTransform:bounds"

    aput-object v2, v0, v1

    sput-object v0, Lcom/transitionseverywhere/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 62
    new-instance v0, Lcom/transitionseverywhere/ChangeImageTransform$1;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Lcom/transitionseverywhere/ChangeImageTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/transitionseverywhere/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/transitionseverywhere/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 7

    .line 88
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 89
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 92
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 97
    :cond_1
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeImageTransform:bounds"

    .line 105
    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 108
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v3, :cond_4

    .line 109
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 114
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 116
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 117
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 118
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_0
    move-object v1, v0

    :goto_1
    const-string v0, "android:changeImageTransform:matrix"

    .line 127
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private createMatrixAnimator(Landroid/widget/ImageView;Landroid/animation/TypeEvaluator;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Matrix;",
            ">;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Matrix;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/transitionseverywhere/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Matrix;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    invoke-static {p1, v0, p2, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeImageTransform;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeImageTransform;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 161
    :cond_0
    iget-object v0, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeImageTransform:bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 162
    iget-object v2, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    if-nez v1, :cond_1

    goto :goto_2

    .line 167
    :cond_1
    iget-object p2, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeImageTransform:matrix"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Matrix;

    .line 168
    iget-object v3, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-nez p2, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz p2, :cond_4

    .line 171
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 173
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    return-object p1

    .line 177
    :cond_5
    iget-object p1, p3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    .line 178
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 179
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 180
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    if-eqz v0, :cond_9

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    .line 188
    sget-object p2, Lcom/transitionseverywhere/utils/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_7
    if-nez v2, :cond_8

    .line 191
    sget-object v2, Lcom/transitionseverywhere/utils/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 193
    :cond_8
    invoke-static {p1, p2}, Lcom/transitionseverywhere/utils/MatrixUtils;->animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    .line 194
    new-instance p3, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;

    invoke-direct {p3}, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;-><init>()V

    invoke-direct {p0, p1, p3, p2, v2}, Lcom/transitionseverywhere/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/animation/TypeEvaluator;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_2

    .line 184
    :cond_9
    :goto_1
    new-instance p2, Lcom/transitionseverywhere/utils/MatrixUtils$NullMatrixEvaluator;

    invoke-direct {p2}, Lcom/transitionseverywhere/utils/MatrixUtils$NullMatrixEvaluator;-><init>()V

    sget-object p3, Lcom/transitionseverywhere/utils/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    sget-object v0, Lcom/transitionseverywhere/utils/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transitionseverywhere/ChangeImageTransform;->createMatrixAnimator(Landroid/widget/ImageView;Landroid/animation/TypeEvaluator;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :cond_a
    :goto_2
    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 142
    sget-object v0, Lcom/transitionseverywhere/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
