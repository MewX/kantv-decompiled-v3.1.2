.class Lcom/transitionseverywhere/ChangeText$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/ChangeText;->createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;I)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeText$5;->this$0:Lcom/transitionseverywhere/ChangeText;

    iput-object p2, p0, Lcom/transitionseverywhere/ChangeText$5;->val$view:Landroid/widget/TextView;

    iput p3, p0, Lcom/transitionseverywhere/ChangeText$5;->val$endColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 254
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeText$5;->val$view:Landroid/widget/TextView;

    iget v0, p0, Lcom/transitionseverywhere/ChangeText$5;->val$endColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
