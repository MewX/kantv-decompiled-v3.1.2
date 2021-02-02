.class public Lcom/transitionseverywhere/ChangeBounds;
.super Lcom/transitionseverywhere/Transition;
.source "ChangeBounds.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Lcom/transitionseverywhere/ChangeBounds$ViewBounds;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final POSITION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Lcom/transitionseverywhere/ChangeBounds$ViewBounds;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 80
    new-instance v0, Lcom/transitionseverywhere/ChangeBounds$1;

    invoke-direct {v0}, Lcom/transitionseverywhere/ChangeBounds$1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 97
    new-instance v0, Lcom/transitionseverywhere/ChangeBounds$2;

    invoke-direct {v0}, Lcom/transitionseverywhere/ChangeBounds$2;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->TOP_LEFT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 103
    new-instance v0, Lcom/transitionseverywhere/ChangeBounds$3;

    invoke-direct {v0}, Lcom/transitionseverywhere/ChangeBounds$3;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 109
    new-instance v0, Lcom/transitionseverywhere/ChangeBounds$4;

    invoke-direct {v0}, Lcom/transitionseverywhere/ChangeBounds$4;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 119
    new-instance v0, Lcom/transitionseverywhere/ChangeBounds$5;

    invoke-direct {v0}, Lcom/transitionseverywhere/ChangeBounds$5;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 129
    new-instance v0, Lcom/transitionseverywhere/ChangeBounds$6;

    invoke-direct {v0}, Lcom/transitionseverywhere/ChangeBounds$6;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->POSITION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 141
    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->TOP_LEFT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 142
    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 143
    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 144
    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 145
    sput-object v0, Lcom/transitionseverywhere/ChangeBounds;->POSITION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeBounds;->mResizeClip:Z

    .line 151
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeBounds;->mResizeClip:Z

    .line 151
    iput-boolean v0, p0, Lcom/transitionseverywhere/ChangeBounds;->mReparent:Z

    .line 161
    sget-object v1, Lcom/transitionseverywhere/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    sget p2, Lcom/transitionseverywhere/R$styleable;->ChangeBounds_resizeClip:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 163
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/ChangeBounds;->setResizeClip(Z)V

    return-void
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 8

    .line 219
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x0

    .line 220
    invoke-static {v0, v1}, Lcom/transitionseverywhere/utils/ViewUtils;->isLaidOut(Landroid/view/View;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    :cond_0
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v4, "android:changeBounds:bounds"

    .line 221
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object v3, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "android:changeBounds:parent"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-boolean v2, p0, Lcom/transitionseverywhere/ChangeBounds;->mReparent:Z

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 226
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object v3, p0, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    iget-boolean v1, p0, Lcom/transitionseverywhere/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    .line 230
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Lcom/transitionseverywhere/utils/ViewUtils;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "android:changeBounds:clip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 247
    iget-boolean v0, p0, Lcom/transitionseverywhere/ChangeBounds;->mReparent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p0, p1, v1}, Lcom/transitionseverywhere/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 252
    :cond_1
    iget-object p1, v0, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeBounds;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeBounds;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_1f

    if-nez v1, :cond_0

    goto/16 :goto_f

    .line 264
    :cond_0
    sget-object v4, Lcom/transitionseverywhere/ChangeBounds;->sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

    if-nez v4, :cond_1

    .line 265
    new-instance v4, Lcom/transitionseverywhere/utils/RectEvaluator;

    invoke-direct {v4}, Lcom/transitionseverywhere/utils/RectEvaluator;-><init>()V

    sput-object v4, Lcom/transitionseverywhere/ChangeBounds;->sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

    .line 267
    :cond_1
    iget-object v4, v0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 268
    iget-object v5, v1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeBounds:parent"

    .line 269
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 270
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1e

    if-nez v5, :cond_2

    goto/16 :goto_e

    .line 274
    :cond_2
    iget-object v7, v1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 275
    invoke-direct {v8, v4, v5}, Lcom/transitionseverywhere/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 276
    iget-object v2, v0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 277
    iget-object v9, v1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 278
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 279
    iget v15, v4, Landroid/graphics/Rect;->left:I

    .line 280
    iget v10, v2, Landroid/graphics/Rect;->top:I

    .line 281
    iget v14, v4, Landroid/graphics/Rect;->top:I

    .line 282
    iget v11, v2, Landroid/graphics/Rect;->right:I

    .line 283
    iget v13, v4, Landroid/graphics/Rect;->right:I

    .line 284
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 285
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v11, v9

    sub-int v3, v2, v10

    sub-int v6, v13, v15

    sub-int v5, v4, v14

    .line 290
    iget-object v0, v0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v7

    const-string v7, "android:changeBounds:clip"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 291
    iget-object v1, v1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v12, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    :cond_4
    if-ne v9, v15, :cond_6

    if-eq v10, v14, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ne v11, v13, :cond_7

    if-eq v2, v4, :cond_9

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 297
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    :cond_a
    if-nez v0, :cond_c

    if-eqz v7, :cond_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    :cond_c
    if-lez v1, :cond_19

    move/from16 v19, v4

    .line 303
    iget-boolean v4, v8, Lcom/transitionseverywhere/ChangeBounds;->mResizeClip:Z

    if-eqz v4, :cond_13

    if-nez v0, :cond_d

    if-nez v7, :cond_d

    goto/16 :goto_8

    .line 330
    :cond_d
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 331
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v9

    add-int/2addr v2, v10

    move-object/from16 v4, v18

    .line 333
    invoke-static {v4, v9, v10, v1, v2}, Lcom/transitionseverywhere/utils/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-ne v9, v15, :cond_f

    if-eq v10, v14, :cond_e

    goto :goto_3

    :cond_e
    move v1, v12

    move v2, v13

    move/from16 p2, v14

    move/from16 p3, v15

    const/4 v8, 0x0

    goto :goto_4

    .line 338
    :cond_f
    :goto_3
    sget-object v1, Lcom/transitionseverywhere/ChangeBounds;->POSITION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/ChangeBounds;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v11

    int-to-float v2, v9

    int-to-float v10, v10

    int-to-float v9, v15

    int-to-float v8, v14

    move/from16 v18, v9

    move-object v9, v4

    move/from16 v20, v10

    move-object v10, v1

    move v1, v12

    move v12, v2

    move v2, v13

    move/from16 v13, v20

    move/from16 p2, v14

    move/from16 v14, v18

    move/from16 p3, v15

    move v15, v8

    invoke-static/range {v9 .. v15}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object v8

    :goto_4
    if-nez v0, :cond_10

    .line 343
    new-instance v0, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5

    :cond_10
    const/4 v9, 0x0

    :goto_5
    if-nez v7, :cond_11

    .line 346
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_6

    :cond_11
    move-object v1, v7

    .line 349
    :goto_6
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 350
    invoke-static {v4, v0}, Lcom/transitionseverywhere/utils/ViewUtils;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 351
    sget-object v3, Lcom/transitionseverywhere/ChangeClipBounds;->VIEW_CLIP_BOUNDS:Landroid/util/Property;

    sget-object v5, Lcom/transitionseverywhere/ChangeBounds;->sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/Rect;

    aput-object v0, v6, v9

    const/4 v9, 0x1

    aput-object v1, v6, v9

    invoke-static {v4, v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 353
    new-instance v11, Lcom/transitionseverywhere/ChangeBounds$7;

    move-object v0, v11

    move-object/from16 v1, p0

    move v12, v2

    move-object v2, v4

    move-object v3, v7

    move-object v7, v4

    move/from16 v13, v19

    move/from16 v4, p3

    move/from16 v5, p2

    const/4 v15, 0x1

    move v6, v12

    move-object v14, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/transitionseverywhere/ChangeBounds$7;-><init>(Lcom/transitionseverywhere/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_7

    :cond_12
    move-object v14, v4

    const/4 v15, 0x1

    const/4 v10, 0x0

    .line 371
    :goto_7
    invoke-static {v8, v10}, Lcom/transitionseverywhere/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    move-object v4, v14

    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_13
    :goto_8
    move v0, v12

    move v12, v13

    move/from16 p2, v14

    move/from16 p3, v15

    move-object/from16 v14, v18

    move/from16 v13, v19

    const/4 v15, 0x1

    .line 304
    invoke-static {v14, v9, v10, v11, v2}, Lcom/transitionseverywhere/utils/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    const/4 v4, 0x2

    if-ne v1, v4, :cond_15

    if-ne v0, v6, :cond_14

    if-ne v3, v5, :cond_14

    .line 307
    sget-object v0, Lcom/transitionseverywhere/ChangeBounds;->POSITION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/ChangeBounds;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v11

    int-to-float v12, v9

    int-to-float v13, v10

    move/from16 v1, p3

    int-to-float v1, v1

    move/from16 v3, p2

    int-to-float v2, v3

    move-object v9, v14

    move-object v10, v0

    move-object v4, v14

    move v14, v1

    const/4 v5, 0x1

    move v15, v2

    invoke-static/range {v9 .. v15}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object v0

    goto/16 :goto_a

    :cond_14
    move/from16 v3, p2

    move/from16 v1, p3

    move-object v4, v14

    const/4 v5, 0x1

    .line 310
    new-instance v0, Lcom/transitionseverywhere/ChangeBounds$ViewBounds;

    invoke-direct {v0, v4}, Lcom/transitionseverywhere/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 311
    sget-object v19, Lcom/transitionseverywhere/ChangeBounds;->TOP_LEFT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/ChangeBounds;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v20

    int-to-float v6, v9

    int-to-float v7, v10

    int-to-float v1, v1

    int-to-float v3, v3

    move-object/from16 v18, v0

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v1

    move/from16 v24, v3

    .line 311
    invoke-static/range {v18 .. v24}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object v1

    .line 314
    sget-object v7, Lcom/transitionseverywhere/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/ChangeBounds;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v8

    int-to-float v9, v11

    int-to-float v10, v2

    int-to-float v11, v12

    int-to-float v12, v13

    move-object v6, v0

    .line 314
    invoke-static/range {v6 .. v12}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object v2

    .line 317
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    .line 318
    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v5

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 319
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v3

    goto :goto_a

    :cond_15
    move/from16 v3, p2

    move/from16 v1, p3

    move-object v4, v14

    const/4 v5, 0x1

    if-ne v9, v1, :cond_17

    if-eq v10, v3, :cond_16

    goto :goto_9

    .line 326
    :cond_16
    sget-object v10, Lcom/transitionseverywhere/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/ChangeBounds;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v0

    int-to-float v1, v11

    int-to-float v2, v2

    int-to-float v14, v12

    int-to-float v15, v13

    move-object v9, v4

    move-object v11, v0

    move v12, v1

    move v13, v2

    invoke-static/range {v9 .. v15}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_a

    .line 323
    :cond_17
    :goto_9
    sget-object v0, Lcom/transitionseverywhere/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/ChangeBounds;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v11

    int-to-float v12, v9

    int-to-float v13, v10

    int-to-float v14, v1

    int-to-float v15, v3

    move-object v9, v4

    move-object v10, v0

    invoke-static/range {v9 .. v15}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object v0

    .line 374
    :goto_a
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_18

    .line 375
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 376
    invoke-static {v1, v5}, Lcom/transitionseverywhere/utils/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 377
    new-instance v2, Lcom/transitionseverywhere/ChangeBounds$8;

    move-object/from16 v6, p0

    invoke-direct {v2, v6, v1}, Lcom/transitionseverywhere/ChangeBounds$8;-><init>(Lcom/transitionseverywhere/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 403
    invoke-virtual {v6, v2}, Lcom/transitionseverywhere/ChangeBounds;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    goto :goto_b

    :cond_18
    move-object/from16 v6, p0

    :goto_b
    return-object v0

    :cond_19
    move-object v6, v8

    goto :goto_c

    :cond_1a
    move-object v4, v7

    move-object v6, v8

    const/4 v5, 0x1

    .line 408
    iget-object v3, v6, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 409
    iget-object v3, v0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:changeBounds:windowX"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v8, v6, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v3, v8

    .line 410
    iget-object v0, v0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeBounds:windowY"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v9, v6, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    aget v9, v9, v5

    sub-int/2addr v0, v9

    .line 411
    iget-object v9, v1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, v6, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v7, v9

    .line 412
    iget-object v1, v1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v8, v6, Lcom/transitionseverywhere/ChangeBounds;->tempLocation:[I

    aget v5, v8, v5

    sub-int/2addr v1, v5

    if-ne v3, v7, :cond_1c

    if-eq v0, v1, :cond_1b

    goto :goto_d

    :cond_1b
    :goto_c
    const/4 v0, 0x0

    return-object v0

    .line 415
    :cond_1c
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 416
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 417
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 418
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 419
    invoke-virtual {v4, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 420
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    add-int/2addr v5, v3

    add-int/2addr v8, v0

    .line 422
    invoke-virtual {v10, v3, v0, v5, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 424
    sget-object v12, Lcom/transitionseverywhere/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/ChangeBounds;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v13

    int-to-float v14, v3

    int-to-float v15, v0

    int-to-float v0, v7

    int-to-float v1, v1

    move-object v11, v10

    move/from16 v16, v0

    move/from16 v17, v1

    invoke-static/range {v11 .. v17}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 427
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v0, 0x0

    .line 428
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 429
    invoke-static {v2, v10}, Lcom/transitionseverywhere/utils/ViewOverlayUtils;->addOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    .line 430
    new-instance v8, Lcom/transitionseverywhere/ChangeBounds$9;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/transitionseverywhere/ChangeBounds$9;-><init>(Lcom/transitionseverywhere/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1d
    return-object v7

    :cond_1e
    :goto_e
    move-object v6, v8

    const/4 v0, 0x0

    return-object v0

    :cond_1f
    :goto_f
    move-object v6, v8

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResizeClip()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/transitionseverywhere/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 169
    sget-object v0, Lcom/transitionseverywhere/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/transitionseverywhere/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/transitionseverywhere/ChangeBounds;->mResizeClip:Z

    return-void
.end method
