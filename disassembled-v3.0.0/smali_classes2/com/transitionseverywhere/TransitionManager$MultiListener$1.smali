.class Lcom/transitionseverywhere/TransitionManager$MultiListener$1;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/TransitionManager$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/TransitionManager$MultiListener;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/TransitionManager$MultiListener;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/transitionseverywhere/TransitionManager$MultiListener$1;->this$0:Lcom/transitionseverywhere/TransitionManager$MultiListener;

    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionManager$MultiListener$1;->this$0:Lcom/transitionseverywhere/TransitionManager$MultiListener;

    iget-object v0, v0, Lcom/transitionseverywhere/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/transitionseverywhere/TransitionManager;->access$100(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
