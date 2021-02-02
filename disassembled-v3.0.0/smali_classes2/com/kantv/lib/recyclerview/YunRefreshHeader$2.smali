.class Lcom/kantv/lib/recyclerview/YunRefreshHeader$2;
.super Ljava/lang/Object;
.source "YunRefreshHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/recyclerview/YunRefreshHeader;->smoothScrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/recyclerview/YunRefreshHeader;


# direct methods
.method constructor <init>(Lcom/kantv/lib/recyclerview/YunRefreshHeader;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader$2;->this$0:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader$2;->this$0:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setVisiableHeight(I)V

    return-void
.end method
