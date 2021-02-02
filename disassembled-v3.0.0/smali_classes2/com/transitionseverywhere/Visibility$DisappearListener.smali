.class Lcom/transitionseverywhere/Visibility$DisappearListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Lcom/transitionseverywhere/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mFinalVisibilitySet:Z

.field private final mIsForcedVisibility:Z

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 539
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mCanceled:Z

    .line 540
    iput-object p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 541
    iput-boolean p3, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mIsForcedVisibility:Z

    .line 542
    iput p2, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mFinalVisibility:I

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 545
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 3

    .line 596
    iget-boolean v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_2

    .line 597
    iget-boolean v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mView:Landroid/view/View;

    sget v1, Lcom/transitionseverywhere/R$id;->transitionAlpha:I

    iget-object v2, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 600
    :cond_0
    iget-boolean v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    if-nez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Lcom/transitionseverywhere/utils/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 603
    iget-object v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mFinalVisibilitySet:Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 610
    invoke-direct {p0, v0}, Lcom/transitionseverywhere/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private suppressLayout(Z)V
    .locals 2

    .line 614
    iget-boolean v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez v1, :cond_0

    .line 615
    iput-boolean p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 616
    invoke-static {v0, p1}, Lcom/transitionseverywhere/utils/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcom/transitionseverywhere/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 550
    iget-boolean p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mCanceled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 557
    iget-boolean p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mCanceled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mIsForcedVisibility:Z

    if-nez p1, :cond_0

    .line 558
    iget-object p1, p0, Lcom/transitionseverywhere/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onTransitionCancel(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    .line 578
    invoke-direct {p0}, Lcom/transitionseverywhere/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    return-void
.end method

.method public onTransitionPause(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    const/4 p1, 0x0

    .line 587
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method public onTransitionResume(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    const/4 p1, 0x1

    .line 592
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method public onTransitionStart(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    return-void
.end method
