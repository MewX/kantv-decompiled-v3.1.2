.class public Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DownloadingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/DownloadingActivity;

.field private view2131296334:Landroid/view/View;

.field private view2131296335:Landroid/view/View;

.field private view2131296420:Landroid/view/View;

.field private view2131296443:Landroid/view/View;

.field private view2131296468:Landroid/view/View;

.field private view2131296497:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/DownloadingActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/DownloadingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/DownloadingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->target:Lcom/kantv/ui/activity/DownloadingActivity;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'actionbarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarTitle:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090283

    const-string v2, "field \'actionbarMenu\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0900ec

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/DownloadingActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f09004e

    const-string v1, "field \'startLayout\' and method \'onClick\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'startLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/DownloadingActivity;->startLayout:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296334:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;Lcom/kantv/ui/activity/DownloadingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004f

    const-string v1, "field \'stopLayout\' and method \'onClick\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'stopLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/DownloadingActivity;->stopLayout:Landroid/widget/LinearLayout;

    .line 56
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296335:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;Lcom/kantv/ui/activity/DownloadingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900d5

    const-string v2, "field \'deleteLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/DownloadingActivity;->deleteLayout:Landroid/widget/LinearLayout;

    .line 64
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090351

    const-string v2, "field \'startLl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/DownloadingActivity;->startLl:Landroid/widget/LinearLayout;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f0900bb

    .line 65
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296443:Landroid/view/View;

    .line 67
    new-instance v2, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;Lcom/kantv/ui/activity/DownloadingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900f1

    .line 73
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296497:Landroid/view/View;

    .line 75
    new-instance v2, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;Lcom/kantv/ui/activity/DownloadingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a4

    .line 81
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296420:Landroid/view/View;

    .line 83
    new-instance v2, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;Lcom/kantv/ui/activity/DownloadingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900d4

    .line 89
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 90
    iput-object p2, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296468:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;Lcom/kantv/ui/activity/DownloadingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->target:Lcom/kantv/ui/activity/DownloadingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->target:Lcom/kantv/ui/activity/DownloadingActivity;

    .line 106
    iput-object v1, v0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarTitle:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/kantv/ui/activity/DownloadingActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 109
    iput-object v1, v0, Lcom/kantv/ui/activity/DownloadingActivity;->startLayout:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, v0, Lcom/kantv/ui/activity/DownloadingActivity;->stopLayout:Landroid/widget/LinearLayout;

    .line 111
    iput-object v1, v0, Lcom/kantv/ui/activity/DownloadingActivity;->deleteLayout:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, v0, Lcom/kantv/ui/activity/DownloadingActivity;->startLl:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296334:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296334:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296335:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296335:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296443:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296443:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296497:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296497:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296420:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296420:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296468:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity_ViewBinding;->view2131296468:Landroid/view/View;

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
