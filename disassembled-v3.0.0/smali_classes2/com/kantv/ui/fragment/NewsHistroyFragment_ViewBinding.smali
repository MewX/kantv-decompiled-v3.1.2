.class public Lcom/kantv/ui/fragment/NewsHistroyFragment_ViewBinding;
.super Ljava/lang/Object;
.source "NewsHistroyFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/fragment/NewsHistroyFragment;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/fragment/NewsHistroyFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    .line 22
    const-class v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v1, 0x7f09011e

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v0, 0x7f090382

    const-string v1, "field \'mTop_margin\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mTop_margin:Landroid/view/View;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f4

    const-string v2, "field \'mEmptyTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mEmptyTip:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    .line 34
    iput-object v1, v0, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 35
    iput-object v1, v0, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mTop_margin:Landroid/view/View;

    .line 36
    iput-object v1, v0, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mEmptyTip:Landroid/widget/TextView;

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
