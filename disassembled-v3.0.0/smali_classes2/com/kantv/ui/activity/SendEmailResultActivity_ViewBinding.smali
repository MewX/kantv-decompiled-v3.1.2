.class public Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SendEmailResultActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/SendEmailResultActivity;

.field private view2131296961:Landroid/view/View;

.field private view2131297054:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297142:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SendEmailResultActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/kantv/ui/activity/SendEmailResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SendEmailResultActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/SendEmailResultActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SendEmailResultActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;Lcom/kantv/ui/activity/SendEmailResultActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090376

    const-string v1, "field \'titleRightLayout\' and method \'onClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleRightLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;Lcom/kantv/ui/activity/SendEmailResultActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightTv:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c2

    const-string v2, "field \'resendTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendTv:Landroid/widget/TextView;

    const v0, 0x7f0902c1

    const-string v1, "field \'resendEmail\' and method \'onClick\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'resendEmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendEmail:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131296961:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;Lcom/kantv/ui/activity/SendEmailResultActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09031d

    const-string v2, "field \'sendEmailResultTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->sendEmailResultTv:Landroid/widget/TextView;

    .line 71
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0903a8

    const-string v2, "field \'verLoginTipLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SendEmailResultActivity;->verLoginTipLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09031e

    const-string v1, "method \'onClick\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 73
    iput-object p2, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297054:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;Lcom/kantv/ui/activity/SendEmailResultActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SendEmailResultActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SendEmailResultActivity;

    .line 89
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 90
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->mTitle:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 92
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 93
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightTv:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendTv:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendEmail:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->sendEmailResultTv:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/kantv/ui/activity/SendEmailResultActivity;->verLoginTipLayout:Landroid/widget/RelativeLayout;

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297142:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131296961:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131296961:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297054:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity_ViewBinding;->view2131297054:Landroid/view/View;

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
