.class Lcom/transitionseverywhere/Fade$1;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/Fade;->createAnimation(Landroid/view/View;FFLcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/Fade;

.field final synthetic val$curAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/Fade;Landroid/view/View;F)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/transitionseverywhere/Fade$1;->this$0:Lcom/transitionseverywhere/Fade;

    iput-object p2, p0, Lcom/transitionseverywhere/Fade$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/transitionseverywhere/Fade$1;->val$curAlpha:F

    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/transitionseverywhere/Fade$1;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/Fade$1;->val$curAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
