.class Lcom/kantv/ui/fragment/TabTvFragment$4;
.super Ljava/lang/Object;
.source "TabTvFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TabTvFragment;->reduce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TabTvFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabTvFragment;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabTvFragment$4;->this$0:Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment$4;->this$0:Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kantv/ui/fragment/TabTvFragment;->setVisiableHeight(I)V

    return-void
.end method
