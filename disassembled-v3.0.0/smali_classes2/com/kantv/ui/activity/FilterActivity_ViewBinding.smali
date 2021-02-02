.class public Lcom/kantv/ui/activity/FilterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FilterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/FilterActivity;

.field private view2131297140:Landroid/view/View;

.field private view2131297142:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/FilterActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/kantv/ui/activity/FilterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/FilterActivity;

    .line 37
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/FilterActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/FilterActivity_ViewBinding;Lcom/kantv/ui/activity/FilterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 50
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f09010a

    const-string v2, "field \'filterItemRV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->filterItemRV:Landroid/support/v7/widget/RecyclerView;

    .line 51
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090109

    const-string v2, "field \'filterHead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->filterHead:Landroid/widget/LinearLayout;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09010e

    const-string v2, "field \'filterTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->filterTV:Landroid/widget/TextView;

    .line 53
    const-class v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v1, 0x7f09010b

    const-string v2, "field \'mFilterXRV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 54
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010d

    const-string v2, "field \'filterToolBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilterActivity;->filterToolBarLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090376

    const-string v1, "method \'onClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/FilterActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/FilterActivity_ViewBinding;Lcom/kantv/ui/activity/FilterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/FilterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/FilterActivity;

    .line 72
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 74
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 75
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 77
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->filterItemRV:Landroid/support/v7/widget/RecyclerView;

    .line 78
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->filterHead:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->filterTV:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/FilterActivity;->filterToolBarLayout:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->view2131297142:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/kantv/ui/activity/FilterActivity_ViewBinding;->view2131297142:Landroid/view/View;

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
