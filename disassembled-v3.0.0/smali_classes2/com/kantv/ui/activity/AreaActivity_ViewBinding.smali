.class public Lcom/kantv/ui/activity/AreaActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AreaActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/AreaActivity;

.field private view2131297142:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/AreaActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/kantv/ui/activity/AreaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/AreaActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/AreaActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/AreaActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kantv/ui/activity/AreaActivity_ViewBinding;->target:Lcom/kantv/ui/activity/AreaActivity;

    .line 32
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f09031a

    const-string v2, "field \'mSelectStateRV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AreaActivity;->mSelectStateRV:Landroid/support/v7/widget/RecyclerView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AreaActivity;->mTitle:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'deleteImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AreaActivity;->deleteImg:Landroid/widget/ImageView;

    const v0, 0x7f090376

    const-string v1, "method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/kantv/ui/activity/AreaActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/kantv/ui/activity/AreaActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AreaActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/AreaActivity_ViewBinding;Lcom/kantv/ui/activity/AreaActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity_ViewBinding;->target:Lcom/kantv/ui/activity/AreaActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/kantv/ui/activity/AreaActivity_ViewBinding;->target:Lcom/kantv/ui/activity/AreaActivity;

    .line 52
    iput-object v1, v0, Lcom/kantv/ui/activity/AreaActivity;->mSelectStateRV:Landroid/support/v7/widget/RecyclerView;

    .line 53
    iput-object v1, v0, Lcom/kantv/ui/activity/AreaActivity;->mTitle:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/kantv/ui/activity/AreaActivity;->deleteImg:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity_ViewBinding;->view2131297142:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/kantv/ui/activity/AreaActivity_ViewBinding;->view2131297142:Landroid/view/View;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
