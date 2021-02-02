.class public Lcom/transitionseverywhere/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# static fields
.field public static final TRANSLATIONS_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Lcom/transitionseverywhere/TranslationAnimationCreator$1;

    invoke-direct {v0}, Lcom/transitionseverywhere/TranslationAnimationCreator$1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/TranslationAnimationCreator;->TRANSLATIONS_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/transitionseverywhere/TranslationAnimationCreator;->TRANSLATIONS_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimation(Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Lcom/transitionseverywhere/Transition;)Landroid/animation/Animator;
    .locals 14

    move-object v6, p0

    move-object v7, p1

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v8

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v9

    .line 74
    iget-object v0, v7, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    sget v1, Lcom/transitionseverywhere/R$id;->transitionPosition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 76
    aget v1, v0, v1

    sub-int v1, v1, p2

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/4 v2, 0x1

    .line 77
    aget v0, v0, v2

    sub-int v0, v0, p3

    int-to-float v0, v0

    add-float/2addr v0, v9

    move v3, v0

    move v2, v1

    goto :goto_0

    :cond_0
    move/from16 v2, p4

    move/from16 v3, p5

    :goto_0
    sub-float v0, v2, v8

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v10, p2, v0

    sub-float v0, v3, v9

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v11, p3, v0

    .line 83
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 84
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 85
    sget-object v1, Lcom/transitionseverywhere/TranslationAnimationCreator;->TRANSLATIONS_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    move-object v0, p0

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;FFFF)Landroid/animation/Animator;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 89
    new-instance v13, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v7, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    const/4 v7, 0x0

    move-object v0, v13

    move-object v1, p0

    move v3, v10

    move v4, v11

    move v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLcom/transitionseverywhere/TranslationAnimationCreator$1;)V

    move-object/from16 v0, p9

    .line 91
    invoke-virtual {v0, v13}, Lcom/transitionseverywhere/Transition;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    .line 92
    invoke-virtual {v12, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-static {v12, v13}, Lcom/transitionseverywhere/utils/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v0, p8

    .line 94
    invoke-virtual {v12, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    return-object v12
.end method
