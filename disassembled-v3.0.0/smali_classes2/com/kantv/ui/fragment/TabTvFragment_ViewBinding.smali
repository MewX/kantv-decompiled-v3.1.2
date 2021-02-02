.class public Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TabTvFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/fragment/TabTvFragment;

.field private view2131296513:Landroid/view/View;

.field private view2131296766:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/fragment/TabTvFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/TabTvFragment;

    .line 32
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f090363

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabTvFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 33
    const-class v0, Lcom/kantv/lib/indicator/ScrollIndicatorView;

    const v1, 0x7f09022b

    const-string v2, "field \'scrollIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabTvFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090396

    const-string v2, "field \'tvSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabTvFragment;->tvSearch:Landroid/widget/TextView;

    const v0, 0x7f0901fe

    const-string v1, "field \'mSearchLayout\' and method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mSearchLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabTvFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->view2131296766:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$1;-><init>(Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;Lcom/kantv/ui/fragment/TabTvFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09030b

    const-string v2, "field \'searchbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    const v0, 0x7f090101

    const-string v1, "field \'feedBackImg\' and method \'onClick\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 46
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'feedBackImg\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/TabTvFragment;->feedBackImg:Landroid/widget/ImageView;

    .line 47
    iput-object p2, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->view2131296513:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$2;-><init>(Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;Lcom/kantv/ui/fragment/TabTvFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/TabTvFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/TabTvFragment;

    .line 63
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabTvFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 64
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabTvFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    .line 65
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabTvFragment;->tvSearch:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabTvFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 67
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    .line 68
    iput-object v1, v0, Lcom/kantv/ui/fragment/TabTvFragment;->feedBackImg:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->view2131296766:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->view2131296766:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->view2131296513:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;->view2131296513:Landroid/view/View;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
