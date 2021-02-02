.class Lcom/transitionseverywhere/TransitionSet$1;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/TransitionSet;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/TransitionSet;

.field final synthetic val$nextTransition:Lcom/transitionseverywhere/Transition;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/TransitionSet;Lcom/transitionseverywhere/Transition;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/transitionseverywhere/TransitionSet$1;->this$0:Lcom/transitionseverywhere/TransitionSet;

    iput-object p2, p0, Lcom/transitionseverywhere/TransitionSet$1;->val$nextTransition:Lcom/transitionseverywhere/Transition;

    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet$1;->val$nextTransition:Lcom/transitionseverywhere/Transition;

    invoke-virtual {v0}, Lcom/transitionseverywhere/Transition;->runAnimators()V

    .line 450
    invoke-virtual {p1, p0}, Lcom/transitionseverywhere/Transition;->removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    return-void
.end method
