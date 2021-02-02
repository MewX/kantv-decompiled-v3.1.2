.class public Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "StarAboutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/StarAboutActivity;

.field private view2131297142:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/StarAboutActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/kantv/ui/activity/StarAboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/StarAboutActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/StarAboutActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;->target:Lcom/kantv/ui/activity/StarAboutActivity;

    .line 32
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090374

    const-string v2, "field \'titleLeftLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarAboutActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarAboutActivity;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090376

    const-string v1, "field \'titleRightLayout\' and method \'onClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleRightLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarAboutActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;Lcom/kantv/ui/activity/StarAboutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090345

    const-string v2, "field \'starDetailImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarAboutActivity;->starDetailImg:Landroid/widget/ImageView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090343

    const-string v2, "field \'starNameTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarAboutActivity;->starNameTv:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090341

    const-string v2, "field \'starAboutTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarAboutActivity;->starAboutTv:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090344

    const-string v2, "field \'starPlaceTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/StarAboutActivity;->starPlaceTv:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090342

    const-string v2, "field \'starMsgTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/ui/activity/StarAboutActivity;->starMsgTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;->target:Lcom/kantv/ui/activity/StarAboutActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;->target:Lcom/kantv/ui/activity/StarAboutActivity;

    .line 57
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 58
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->mTitle:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 60
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->starDetailImg:Landroid/widget/ImageView;

    .line 61
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->starNameTv:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->starAboutTv:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->starPlaceTv:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/kantv/ui/activity/StarAboutActivity;->starMsgTv:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;->view2131297142:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/kantv/ui/activity/StarAboutActivity_ViewBinding;->view2131297142:Landroid/view/View;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
