.class Lcom/transitionseverywhere/ChangeBounds$8;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/transitionseverywhere/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->this$0:Lcom/transitionseverywhere/ChangeBounds;

    iput-object p2, p0, Lcom/transitionseverywhere/ChangeBounds$8;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 378
    iput-boolean p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->mCanceled:Z

    return-void
.end method

.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 388
    iget-boolean p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->mCanceled:Z

    if-nez p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public onTransitionPause(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onTransitionResume(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 400
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$8;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method
