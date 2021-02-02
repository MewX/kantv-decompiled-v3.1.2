.class public Lcom/kantv/ui/activity/ReceiveMsgActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ReceiveMsgActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/ReceiveMsgActivity;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/ReceiveMsgActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/ReceiveMsgActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/ReceiveMsgActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/ReceiveMsgActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity_ViewBinding;->target:Lcom/kantv/ui/activity/ReceiveMsgActivity;

    .line 31
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 32
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090374

    const-string v2, "field \'titleLeftLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 33
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRightTv:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleTV:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f090247

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 38
    const-class v0, Lcom/kantv/ui/view/TabPageIndicator;

    const v1, 0x7f09035f

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/view/TabPageIndicator;

    iput-object p2, p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity_ViewBinding;->target:Lcom/kantv/ui/activity/ReceiveMsgActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity_ViewBinding;->target:Lcom/kantv/ui/activity/ReceiveMsgActivity;

    .line 48
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 51
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRightTv:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleTV:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 55
    iput-object v1, v0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
