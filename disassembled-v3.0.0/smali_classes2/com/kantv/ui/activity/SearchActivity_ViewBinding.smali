.class public Lcom/kantv/ui/activity/SearchActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SearchActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/SearchActivity;

.field private view2131297023:Landroid/view/View;

.field private view2131297026:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SearchActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/kantv/ui/activity/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SearchActivity;

    .line 34
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090303

    const-string v2, "field \'mSearchEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    .line 35
    const-class v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v1, 0x7f09030a

    const-string v2, "field \'mSearchXRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchActivity;->mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v0, 0x7f090302

    const-string v1, "field \'searchDeleteImg\' and method \'onClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'searchDeleteImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SearchActivity;->searchDeleteImg:Landroid/widget/ImageView;

    .line 38
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->view2131297026:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SearchActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/SearchActivity_ViewBinding;Lcom/kantv/ui/activity/SearchActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ff

    const-string v1, "method \'onClick\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->view2131297023:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SearchActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/SearchActivity_ViewBinding;Lcom/kantv/ui/activity/SearchActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SearchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SearchActivity;

    .line 62
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    .line 63
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchActivity;->mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 64
    iput-object v1, v0, Lcom/kantv/ui/activity/SearchActivity;->searchDeleteImg:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->view2131297026:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->view2131297026:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->view2131297023:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/kantv/ui/activity/SearchActivity_ViewBinding;->view2131297023:Landroid/view/View;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
