.class public Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SearchResultActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/SearchResultActivity;

.field private view2131296960:Landroid/view/View;

.field private view2131297023:Landroid/view/View;

.field private view2131297026:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SearchResultActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/kantv/ui/activity/SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SearchResultActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/SearchResultActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SearchResultActivity;

    .line 38
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0903d5

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 39
    const-class v0, Lcom/kantv/ui/view/TabPageIndicator;

    const v1, 0x7f09035f

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/TabPageIndicator;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 40
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090303

    const-string v2, "field \'searchEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    const v0, 0x7f090302

    const-string v1, "field \'searchDeleteImg\' and method \'onClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'searchDeleteImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchResultActivity;->searchDeleteImg:Landroid/widget/ImageView;

    .line 43
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131297026:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;Lcom/kantv/ui/activity/SearchResultActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090201

    const-string v2, "field \'mLoadErrorLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    .line 51
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09030f

    const-string v2, "field \'mSearchResultLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchResultLayout:Landroid/widget/LinearLayout;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f0902ff

    .line 52
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131297023:Landroid/view/View;

    .line 54
    new-instance v2, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;Lcom/kantv/ui/activity/SearchResultActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902c0

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131296960:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;Lcom/kantv/ui/activity/SearchResultActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SearchResultActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SearchResultActivity;

    .line 77
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchResultActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 78
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 79
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchResultActivity;->searchDeleteImg:Landroid/widget/ImageView;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchResultActivity;->mLoadErrorLayout:Landroid/widget/LinearLayout;

    .line 82
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchResultLayout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131297026:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131297026:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131297023:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131297023:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131296960:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity_ViewBinding;->view2131296960:Landroid/view/View;

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
