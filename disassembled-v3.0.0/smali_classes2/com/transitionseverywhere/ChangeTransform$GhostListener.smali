.class Lcom/transitionseverywhere/ChangeTransform$GhostListener;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mEndMatrix:Landroid/graphics/Matrix;

.field private mGhostView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 454
    iput-object p2, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mGhostView:Landroid/view/View;

    .line 455
    iput-object p3, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mEndMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 2

    .line 460
    invoke-virtual {p1, p0}, Lcom/transitionseverywhere/Transition;->removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    .line 461
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->removeGhostView(Landroid/view/View;)V

    .line 462
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v0, Lcom/transitionseverywhere/R$id;->transitionTransform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 463
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v0, Lcom/transitionseverywhere/R$id;->parentMatrix:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 468
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mGhostView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$GhostListener;->mGhostView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
