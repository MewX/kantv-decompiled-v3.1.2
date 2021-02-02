.class public Lcom/transitionseverywhere/ChangeTransform;
.super Lcom/transitionseverywhere/Transition;
.source "ChangeTransform.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/ChangeTransform$GhostListener;,
        Lcom/transitionseverywhere/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeTransform:matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeTransform:transforms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeTransform:parentMatrix"

    aput-object v2, v0, v1

    sput-object v0, Lcom/transitionseverywhere/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v0, Lcom/transitionseverywhere/ChangeTransform$1;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "animationMatrix"

    invoke-direct {v0, v1, v2}, Lcom/transitionseverywhere/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/transitionseverywhere/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/transitionseverywhere/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mUseOverlay:Z

    .line 84
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mReparent:Z

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mUseOverlay:Z

    .line 84
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mReparent:Z

    .line 85
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 91
    sget-object v1, Lcom/transitionseverywhere/R$styleable;->ChangeTransform:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    sget p2, Lcom/transitionseverywhere/R$styleable;->ChangeTransform_reparentWithOverlay:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transitionseverywhere/ChangeTransform;->mUseOverlay:Z

    .line 93
    sget p2, Lcom/transitionseverywhere/R$styleable;->ChangeTransform_reparent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transitionseverywhere/ChangeTransform;->mReparent:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/transitionseverywhere/ChangeTransform;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transitionseverywhere/ChangeTransform;->mUseOverlay:Z

    return p0
.end method

.method static synthetic access$100()Landroid/util/Property;
    .locals 1

    .line 44
    sget-object v0, Lcom/transitionseverywhere/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/transitionseverywhere/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/View;FFFFFFFF)V
    .locals 0

    .line 44
    invoke-static/range {p0 .. p8}, Lcom/transitionseverywhere/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 4

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    return-void

    .line 181
    :cond_1
    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeTransform:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Lcom/transitionseverywhere/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Lcom/transitionseverywhere/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 183
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 190
    :goto_1
    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-boolean v1, p0, Lcom/transitionseverywhere/ChangeTransform;->mReparent:Z

    if-eqz v1, :cond_4

    .line 192
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 194
    invoke-static {v2, v1}, Lcom/transitionseverywhere/utils/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 195
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 196
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    sget v2, Lcom/transitionseverywhere/R$id;->transitionTransform:I

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android:changeTransform:intermediateMatrix"

    .line 197
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    sget v1, Lcom/transitionseverywhere/R$id;->parentMatrix:I

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android:changeTransform:intermediateParentMatrix"

    .line 199
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)V
    .locals 5

    .line 345
    iget-object v0, p3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 347
    iget-object v1, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 348
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 349
    invoke-static {p1, v2}, Lcom/transitionseverywhere/utils/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    move-object v3, p0

    .line 352
    :goto_0
    iget-object v4, v3, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    if-eqz v4, :cond_0

    .line 353
    iget-object v3, v3, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    goto :goto_0

    .line 356
    :cond_0
    invoke-static {v0, p1, v2}, Lcom/transitionseverywhere/utils/ViewUtils;->addGhostView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 358
    new-instance v2, Lcom/transitionseverywhere/ChangeTransform$GhostListener;

    invoke-direct {v2, v0, p1, v1}, Lcom/transitionseverywhere/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 359
    invoke-virtual {v3, v2}, Lcom/transitionseverywhere/Transition;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    .line 362
    :cond_1
    iget-object p1, p2, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    iget-object p2, p3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    .line 363
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 365
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private createTransformAnimator(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 7

    .line 257
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:changeTransform:matrix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 258
    iget-object v1, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    .line 261
    sget-object p1, Lcom/transitionseverywhere/utils/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_0
    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/transitionseverywhere/utils/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_1
    move-object v4, v0

    .line 268
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_2
    iget-object v0, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:transforms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transitionseverywhere/ChangeTransform$Transforms;

    .line 275
    iget-object v5, p2, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 276
    invoke-static {v5}, Lcom/transitionseverywhere/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 278
    sget-object p2, Lcom/transitionseverywhere/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Matrix;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v4, v1, p1

    invoke-static {v5, p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 283
    new-instance p2, Lcom/transitionseverywhere/ChangeTransform$2;

    move-object v1, p2

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/transitionseverywhere/ChangeTransform$2;-><init>(Lcom/transitionseverywhere/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Lcom/transitionseverywhere/ChangeTransform$Transforms;)V

    .line 325
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-object p1
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 3

    .line 332
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/transitionseverywhere/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method private static setIdentityTransforms(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 388
    invoke-static/range {v0 .. v8}, Lcom/transitionseverywhere/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private setMatricesForParent(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)V
    .locals 4

    .line 369
    iget-object v0, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 370
    iget-object p2, p2, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    sget v2, Lcom/transitionseverywhere/R$id;->parentMatrix:I

    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 372
    iget-object p2, p0, Lcom/transitionseverywhere/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 373
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 374
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 376
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 379
    iget-object v3, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_0
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 383
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 384
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method private static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 395
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 396
    invoke-static {p0, p3}, Lcom/transitionseverywhere/utils/ViewUtils;->setTranslationZ(Landroid/view/View;F)V

    .line 397
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 398
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 399
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 400
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 401
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeTransform;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeTransform;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    iget-object v0, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 219
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    iget-object v0, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 225
    iget-object v2, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 226
    iget-boolean v2, p0, Lcom/transitionseverywhere/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/transitionseverywhere/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v1, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:intermediateMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 230
    iget-object v2, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_2
    iget-object v1, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:intermediateParentMatrix"

    .line 234
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    .line 236
    iget-object v2, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v0, :cond_4

    .line 241
    invoke-direct {p0, p2, p3}, Lcom/transitionseverywhere/ChangeTransform;->setMatricesForParent(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)V

    .line 245
    :cond_4
    invoke-direct {p0, p2, p3, v0}, Lcom/transitionseverywhere/ChangeTransform;->createTransformAnimator(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 248
    iget-boolean v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mUseOverlay:Z

    if-eqz v0, :cond_5

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/transitionseverywhere/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)V

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReparent()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/transitionseverywhere/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lcom/transitionseverywhere/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/transitionseverywhere/ChangeTransform;->mReparent:Z

    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/transitionseverywhere/ChangeTransform;->mUseOverlay:Z

    return-void
.end method
