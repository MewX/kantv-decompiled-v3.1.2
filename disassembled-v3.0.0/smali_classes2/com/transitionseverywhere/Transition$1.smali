.class Lcom/transitionseverywhere/Transition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/Transition;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/Transition;

.field final synthetic val$runningAnimators:Landroid/support/v4/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/Transition;Landroid/support/v4/util/ArrayMap;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/transitionseverywhere/Transition$1;->this$0:Lcom/transitionseverywhere/Transition;

    iput-object p2, p0, Lcom/transitionseverywhere/Transition$1;->val$runningAnimators:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/transitionseverywhere/Transition$1;->val$runningAnimators:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v0, p0, Lcom/transitionseverywhere/Transition$1;->this$0:Lcom/transitionseverywhere/Transition;

    invoke-static {v0}, Lcom/transitionseverywhere/Transition;->access$000(Lcom/transitionseverywhere/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/transitionseverywhere/Transition$1;->this$0:Lcom/transitionseverywhere/Transition;

    invoke-static {v0}, Lcom/transitionseverywhere/Transition;->access$000(Lcom/transitionseverywhere/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method