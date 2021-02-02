.class Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Lcom/transitionseverywhere/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 0

    .line 113
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 115
    iput-object p2, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 116
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 117
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 118
    iput p5, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 119
    iput p6, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 120
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget p2, Lcom/transitionseverywhere/R$id;->transitionPosition:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    iput-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 121
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget p2, Lcom/transitionseverywhere/R$id;->transitionPosition:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View;IIFFLcom/transitionseverywhere/TranslationAnimationCreator$1;)V
    .locals 0

    .line 99
    invoke-direct/range {p0 .. p6}, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 129
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v0, 0x0

    iget v1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 132
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v0, 0x1

    iget v1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 133
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v0, Lcom/transitionseverywhere/R$id;->transitionPosition:I

    iget-object v1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 143
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 144
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 145
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 151
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionCancel(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 161
    iget-object p1, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionPause(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    return-void
.end method
