.class public Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NewCollectHistroyActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

.field private view2131296328:Landroid/view/View;

.field private view2131296431:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->target:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    .line 38
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 39
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090374

    const-string v2, "field \'titleLeftLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 40
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 41
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900b0

    const-string v2, "field \'collectEditLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090048

    const-string v1, "field \'allCollectChoice\' and method \'onClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'allCollectChoice\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->allCollectChoice:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->view2131296328:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0903d2

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 54
    const-class v0, Lcom/kantv/lib/indicator/ScrollIndicatorView;

    const v1, 0x7f0902f0

    const-string v2, "field \'mScrollIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mScrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    const v0, 0x7f0900af

    const-string v1, "method \'onClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->view2131296431:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->target:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->target:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    .line 72
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 74
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 75
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 76
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->allCollectChoice:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mScrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->view2131296328:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->view2131296328:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->view2131296431:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;->view2131296431:Landroid/view/View;

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
