.class Lcom/transitionseverywhere/extra/Scale$1;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "Scale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/extra/Scale;->createAnimation(Landroid/view/View;FFLcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/extra/Scale;

.field final synthetic val$initialScaleX:F

.field final synthetic val$initialScaleY:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/extra/Scale;Landroid/view/View;FF)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/transitionseverywhere/extra/Scale$1;->this$0:Lcom/transitionseverywhere/extra/Scale;

    iput-object p2, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleX:F

    iput p4, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleY:F

    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 114
    iget-object p1, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
