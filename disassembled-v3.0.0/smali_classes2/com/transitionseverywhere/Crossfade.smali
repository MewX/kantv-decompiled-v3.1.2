.class public Lcom/transitionseverywhere/Crossfade;
.super Lcom/transitionseverywhere/Transition;
.source "Crossfade.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    .line 62
    iput v0, p0, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method static synthetic access$000(Lcom/transitionseverywhere/Crossfade;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    return p0
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 5

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 263
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 264
    iget v2, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 267
    :cond_1
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:crossfade:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 274
    instance-of v3, v0, Landroid/view/TextureView;

    if-eqz v3, :cond_2

    .line 275
    move-object v2, v0

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 277
    :cond_2
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 280
    :goto_0
    iget-object v3, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:crossfade:bitmap"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 283
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 284
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:crossfade:drawable"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Crossfade;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Crossfade;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 171
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    .line 175
    :cond_0
    sget-object v3, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

    if-nez v3, :cond_1

    .line 176
    new-instance v3, Lcom/transitionseverywhere/utils/RectEvaluator;

    invoke-direct {v3}, Lcom/transitionseverywhere/utils/RectEvaluator;-><init>()V

    sput-object v3, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

    .line 178
    :cond_1
    iget v3, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v8, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 179
    :goto_0
    iget-object v4, v1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 180
    iget-object v0, v0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 181
    iget-object v1, v1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:crossfade:bounds"

    .line 182
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 183
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/graphics/Rect;

    const-string v5, "android:crossfade:bitmap"

    .line 184
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 185
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    const-string v12, "android:crossfade:drawable"

    .line 186
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 187
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_8

    if-eqz v12, :cond_8

    .line 192
    invoke-virtual {v11, v5}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 193
    iget v0, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    invoke-static {v3, v4, v0, v13, v12}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->addCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 200
    iget v0, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    const/4 v1, 0x3

    const-string v5, "alpha"

    const/4 v11, 0x2

    if-ne v0, v11, :cond_3

    .line 202
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v13, v5, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    .line 204
    :cond_3
    new-array v0, v8, [I

    aput v7, v0, v7

    invoke-static {v13, v5, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    move-object v14, v0

    .line 206
    new-instance v0, Lcom/transitionseverywhere/Crossfade$1;

    invoke-direct {v0, v6, v4, v13}, Lcom/transitionseverywhere/Crossfade$1;-><init>(Lcom/transitionseverywhere/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v14, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    iget v0, v6, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    if-ne v0, v11, :cond_4

    .line 216
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 218
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v11, [F

    fill-array-data v1, :array_2

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :cond_5
    :goto_2
    move-object v15, v2

    .line 224
    new-instance v5, Lcom/transitionseverywhere/Crossfade$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v13

    move-object v11, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/transitionseverywhere/Crossfade$2;-><init>(Lcom/transitionseverywhere/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v14, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 232
    new-array v1, v8, [Landroid/animation/Animator;

    aput-object v14, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v15, :cond_6

    .line 234
    new-array v1, v8, [Landroid/animation/Animator;

    aput-object v15, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 236
    :cond_6
    iget v1, v6, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    if-ne v1, v8, :cond_7

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 241
    sget-object v1, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v9, v3, v7

    aput-object v10, v3, v8

    const-string v4, "bounds"

    invoke-static {v13, v4, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 243
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 244
    iget v1, v6, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    if-ne v1, v8, :cond_7

    .line 247
    sget-object v1, Lcom/transitionseverywhere/Crossfade;->sRectEvaluator:Lcom/transitionseverywhere/utils/RectEvaluator;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v7

    aput-object v10, v2, v8

    invoke-static {v12, v4, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 249
    new-array v2, v8, [Landroid/animation/Animator;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    return-object v0

    :cond_8
    :goto_3
    return-object v2

    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getFadeBehavior()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public getResizeBehavior()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public setFadeBehavior(I)Lcom/transitionseverywhere/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 128
    iput p1, p0, Lcom/transitionseverywhere/Crossfade;->mFadeBehavior:I

    :cond_0
    return-object p0
.end method

.method public setResizeBehavior(I)Lcom/transitionseverywhere/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 153
    iput p1, p0, Lcom/transitionseverywhere/Crossfade;->mResizeBehavior:I

    :cond_0
    return-object p0
.end method
