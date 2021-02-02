.class public Lcom/kantv/ui/fragment/VideoCommentFragment_ViewBinding;
.super Ljava/lang/Object;
.source "VideoCommentFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/fragment/VideoCommentFragment;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/fragment/VideoCommentFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/VideoCommentFragment;

    .line 21
    const-class v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v1, 0x7f0903c1

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/lib/recyclerview/XRecyclerView;

    iput-object p2, p1, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/VideoCommentFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/VideoCommentFragment;

    .line 31
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
