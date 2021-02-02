.class public Lcom/kantv/ui/activity/StarActivity_ViewBinding;
.super Ljava/lang/Object;
.source "StarActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/StarActivity;

.field private view2131296572:Landroid/view/View;

.field private view2131297094:Landroid/view/View;

.field private view2131297100:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/StarActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/kantv/ui/activity/StarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/StarActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/StarActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/StarActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->target:Lcom/kantv/ui/activity/StarActivity;

    .line 38
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f090017

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 39
    const-class v0, Lcom/kantv/ui/view/TabPageIndicator;

    const v1, 0x7f09034d

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/TabPageIndicator;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 40
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090348

    const-string v2, "field \'mStarHeadBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mStarHeadBg:Landroid/widget/ImageView;

    .line 41
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090347

    const-string v2, "field \'mHead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mHead:Landroid/widget/ImageView;

    const v0, 0x7f09034c

    const-string v1, "field \'mShareBt\' and method \'onClick\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mShareBt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mShareBt:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131297100:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/kantv/ui/activity/StarActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/StarActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/StarActivity_ViewBinding;Lcom/kantv/ui/activity/StarActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090346

    const-string v1, "field \'starExitImg\' and method \'onClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'starExitImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->starExitImg:Landroid/widget/ImageView;

    .line 53
    iput-object v1, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131297094:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/kantv/ui/activity/StarActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/StarActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/StarActivity_ViewBinding;Lcom/kantv/ui/activity/StarActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09034e

    const-string v2, "field \'mStarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mStarTitle:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09034a

    const-string v2, "field \'mStarPlace\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mStarPlace:Landroid/widget/TextView;

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090349

    const-string v2, "field \'mStarMsg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->mStarMsg:Landroid/widget/TextView;

    const v0, 0x7f09013c

    const-string v1, "field \'starAboutLayout\' and method \'onClick\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 64
    const-class v1, Landroid/widget/FrameLayout;

    const-string v2, "field \'starAboutLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarActivity;->starAboutLayout:Landroid/widget/FrameLayout;

    .line 65
    iput-object p2, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131296572:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/kantv/ui/activity/StarActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/StarActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/StarActivity_ViewBinding;Lcom/kantv/ui/activity/StarActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->target:Lcom/kantv/ui/activity/StarActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->target:Lcom/kantv/ui/activity/StarActivity;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 82
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 83
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mStarHeadBg:Landroid/widget/ImageView;

    .line 84
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mHead:Landroid/widget/ImageView;

    .line 85
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mShareBt:Landroid/widget/ImageView;

    .line 86
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->starExitImg:Landroid/widget/ImageView;

    .line 87
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mStarTitle:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mStarPlace:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->mStarMsg:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/kantv/ui/activity/StarActivity;->starAboutLayout:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131297100:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131297100:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131297094:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131297094:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131296572:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/kantv/ui/activity/StarActivity_ViewBinding;->view2131296572:Landroid/view/View;

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
