.class Lcom/transitionseverywhere/Visibility$1;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/Visibility;->onDisappear(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;ILcom/transitionseverywhere/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/Visibility;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$finalStartView:Landroid/view/View;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/Visibility;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/transitionseverywhere/Visibility$1;->this$0:Lcom/transitionseverywhere/Visibility;

    iput-object p2, p0, Lcom/transitionseverywhere/Visibility$1;->val$finalStartView:Landroid/view/View;

    iput-object p3, p0, Lcom/transitionseverywhere/Visibility$1;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/transitionseverywhere/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 2

    .line 457
    iget-object p1, p0, Lcom/transitionseverywhere/Visibility$1;->val$finalStartView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 458
    sget v0, Lcom/transitionseverywhere/R$id;->overlay_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 460
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/Visibility$1;->val$sceneRoot:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transitionseverywhere/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->removeOverlay(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
