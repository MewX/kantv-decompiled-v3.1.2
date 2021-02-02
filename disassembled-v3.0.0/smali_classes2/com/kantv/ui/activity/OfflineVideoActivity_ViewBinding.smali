.class public Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "OfflineVideoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/OfflineVideoActivity;

.field private view2131296331:Landroid/view/View;

.field private view2131296443:Landroid/view/View;

.field private view2131296497:Landroid/view/View;

.field private view2131297208:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/OfflineVideoActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/OfflineVideoActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/OfflineVideoActivity;

    .line 39
    const-class v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v1, 0x7f090285

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090283

    const-string v2, "field \'editTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900d5

    const-string v2, "field \'deleteLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteLayout:Landroid/widget/LinearLayout;

    .line 42
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09027c

    const-string v2, "field \'noDataLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/OfflineVideoActivity;->noDataLayout:Landroid/widget/RelativeLayout;

    .line 43
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09008e

    const-string v2, "field \'cacheLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900e9

    const-string v2, "field \'cacheNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheNum:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09027b

    const-string v2, "field \'noCacheVideoTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/OfflineVideoActivity;->noCacheVideoTip:Landroid/widget/TextView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f0900bb

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296443:Landroid/view/View;

    .line 48
    new-instance v2, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;Lcom/kantv/ui/activity/OfflineVideoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900f1

    .line 54
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296497:Landroid/view/View;

    .line 56
    new-instance v2, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;Lcom/kantv/ui/activity/OfflineVideoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09004b

    .line 62
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296331:Landroid/view/View;

    .line 64
    new-instance v2, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;Lcom/kantv/ui/activity/OfflineVideoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903b8

    .line 70
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131297208:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;Lcom/kantv/ui/activity/OfflineVideoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/OfflineVideoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/OfflineVideoActivity;

    .line 87
    iput-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 88
    iput-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteLayout:Landroid/widget/LinearLayout;

    .line 90
    iput-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noDataLayout:Landroid/widget/RelativeLayout;

    .line 91
    iput-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    .line 92
    iput-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheNum:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noCacheVideoTip:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296443:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296443:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296497:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296497:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296331:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131296331:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131297208:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;->view2131297208:Landroid/view/View;

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
