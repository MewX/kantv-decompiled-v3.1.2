.class public Lcom/kantv/ui/fragment/KanListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "KanListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/fragment/KanListFragment;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/fragment/KanListFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/KanListFragment;

    .line 23
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090374

    const-string v2, "field \'titleLeftLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/KanListFragment;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 24
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/KanListFragment;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 25
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903e1

    const-string v2, "field \'mLin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/KanListFragment;->mLin:Landroid/widget/LinearLayout;

    .line 26
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0903e2

    const-string v2, "field \'mBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/kantv/ui/fragment/KanListFragment;->mBar:Landroid/widget/ProgressBar;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/ui/fragment/KanListFragment;->titleTV:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/KanListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/kantv/ui/fragment/KanListFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/KanListFragment;

    .line 37
    iput-object v1, v0, Lcom/kantv/ui/fragment/KanListFragment;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, v0, Lcom/kantv/ui/fragment/KanListFragment;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, v0, Lcom/kantv/ui/fragment/KanListFragment;->mLin:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, v0, Lcom/kantv/ui/fragment/KanListFragment;->mBar:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, v0, Lcom/kantv/ui/fragment/KanListFragment;->titleTV:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
