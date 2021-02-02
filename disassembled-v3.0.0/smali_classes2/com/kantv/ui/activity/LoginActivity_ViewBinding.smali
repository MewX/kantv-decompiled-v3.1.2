.class public Lcom/kantv/ui/activity/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/LoginActivity;

.field private view2131296733:Landroid/view/View;

.field private view2131296776:Landroid/view/View;

.field private view2131296777:Landroid/view/View;

.field private view2131296781:Landroid/view/View;

.field private view2131296782:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/LoginActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/kantv/ui/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/LoginActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->target:Lcom/kantv/ui/activity/LoginActivity;

    .line 40
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09020c

    const-string v2, "field \'mLoginPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    const v0, 0x7f090208

    const-string v1, "field \'mLoginArea\' and method \'onClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mLoginArea\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296776:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/LoginActivity_ViewBinding;Lcom/kantv/ui/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09020a

    const-string v2, "field \'mLoginEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/LoginActivity;->mLoginEmail:Landroid/widget/ImageView;

    const v0, 0x7f09020d

    const-string v1, "field \'rmMobileImg\' and method \'onClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rmMobileImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/LoginActivity;->rmMobileImg:Landroid/widget/ImageView;

    .line 53
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296781:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/LoginActivity_ViewBinding;Lcom/kantv/ui/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090209

    const-string v1, "field \'loginBtn\' and method \'onClick\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'loginBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/LoginActivity;->loginBtn:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296777:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/LoginActivity_ViewBinding;Lcom/kantv/ui/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09020e

    const-string v1, "field \'loginType\' and method \'onClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 70
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'loginType\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/LoginActivity;->loginType:Landroid/widget/TextView;

    .line 71
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296782:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/LoginActivity_ViewBinding;Lcom/kantv/ui/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901dd

    const-string v1, "method \'onClick\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 79
    iput-object p2, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296733:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/LoginActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/LoginActivity_ViewBinding;Lcom/kantv/ui/activity/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->target:Lcom/kantv/ui/activity/LoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->target:Lcom/kantv/ui/activity/LoginActivity;

    .line 95
    iput-object v1, v0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    .line 96
    iput-object v1, v0, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/kantv/ui/activity/LoginActivity;->mLoginEmail:Landroid/widget/ImageView;

    .line 98
    iput-object v1, v0, Lcom/kantv/ui/activity/LoginActivity;->rmMobileImg:Landroid/widget/ImageView;

    .line 99
    iput-object v1, v0, Lcom/kantv/ui/activity/LoginActivity;->loginBtn:Landroid/widget/TextView;

    .line 100
    iput-object v1, v0, Lcom/kantv/ui/activity/LoginActivity;->loginType:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296776:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296776:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296781:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296781:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296777:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296777:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296782:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296782:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296733:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/kantv/ui/activity/LoginActivity_ViewBinding;->view2131296733:Landroid/view/View;

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
