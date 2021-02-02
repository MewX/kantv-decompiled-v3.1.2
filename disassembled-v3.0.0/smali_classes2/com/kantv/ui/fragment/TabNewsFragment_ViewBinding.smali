.class public Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TabNewsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/fragment/TabNewsFragment;

.field private view2131296766:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/fragment/TabNewsFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/TabNewsFragment;

    .line 29
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f090362

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabNewsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 30
    const-class v0, Lcom/kantv/lib/indicator/ScrollIndicatorView;

    const v1, 0x7f09022c

    const-string v2, "field \'scrollIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabNewsFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090396

    const-string v2, "field \'tvSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabNewsFragment;->tvSearch:Landroid/widget/TextView;

    const v0, 0x7f0901fe

    const-string v1, "field \'mSearchLayout\' and method \'onClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mSearchLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabNewsFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;->view2131296766:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding$1;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;Lcom/kantv/ui/fragment/TabNewsFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09030b

    const-string v2, "field \'searchbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/TabNewsFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/TabNewsFragment;

    .line 51
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabNewsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 52
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabNewsFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    .line 53
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabNewsFragment;->tvSearch:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabNewsFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;->view2131296766:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;->view2131296766:Landroid/view/View;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
