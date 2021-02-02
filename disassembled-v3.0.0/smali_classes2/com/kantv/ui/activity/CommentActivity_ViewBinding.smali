.class public Lcom/kantv/ui/activity/CommentActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CommentActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/CommentActivity;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/CommentActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/kantv/ui/activity/CommentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/CommentActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kantv/ui/activity/CommentActivity_ViewBinding;->target:Lcom/kantv/ui/activity/CommentActivity;

    .line 34
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/CommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/CommentActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/kantv/ui/activity/CommentActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/kantv/ui/activity/CommentActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/CommentActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/CommentActivity_ViewBinding;Lcom/kantv/ui/activity/CommentActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CommentActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CommentActivity;->mTitle:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/CommentActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 47
    const-class v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v1, 0x7f09004d

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/lib/recyclerview/XRecyclerView;

    iput-object p2, p1, Lcom/kantv/ui/activity/CommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity_ViewBinding;->target:Lcom/kantv/ui/activity/CommentActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/kantv/ui/activity/CommentActivity_ViewBinding;->target:Lcom/kantv/ui/activity/CommentActivity;

    .line 57
    iput-object v1, v0, Lcom/kantv/ui/activity/CommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 58
    iput-object v1, v0, Lcom/kantv/ui/activity/CommentActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 59
    iput-object v1, v0, Lcom/kantv/ui/activity/CommentActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 60
    iput-object v1, v0, Lcom/kantv/ui/activity/CommentActivity;->mTitle:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/kantv/ui/activity/CommentActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, v0, Lcom/kantv/ui/activity/CommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/kantv/ui/activity/CommentActivity_ViewBinding;->view2131297140:Landroid/view/View;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
