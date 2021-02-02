.class public Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EmailRegisterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/EmailRegisterActivity;

.field private view2131296953:Landroid/view/View;

.field private view2131296956:Landroid/view/View;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/kantv/ui/activity/EmailRegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/EmailRegisterActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/EmailRegisterActivity;

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

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 49
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902b5

    const-string v2, "field \'regEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    .line 50
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902b8

    const-string v2, "field \'regPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    .line 51
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902b6

    const-string v2, "field \'regMorePwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwd:Landroid/widget/EditText;

    const v0, 0x7f0902bc

    const-string v1, "field \'regBtn\' and method \'onClick\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'regBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131296956:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0902a8

    const-string v2, "field \'regPwdSafe\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    .line 62
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0902a6

    const-string v2, "field \'regMorePwdSafe\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwdSafe:Landroid/widget/CheckBox;

    const v0, 0x7f0902b9

    const-string v1, "field \'rmRegEmail\' and method \'onClick\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 64
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rmRegEmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->rmRegEmail:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131296953:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902a7

    const-string v2, "field \'pwdPopImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/kantv/ui/activity/EmailRegisterActivity;->pwdPopImg:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/EmailRegisterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/EmailRegisterActivity;

    .line 82
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 83
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    .line 86
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    .line 87
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwd:Landroid/widget/EditText;

    .line 88
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    .line 90
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwdSafe:Landroid/widget/CheckBox;

    .line 91
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->rmRegEmail:Landroid/widget/ImageView;

    .line 92
    iput-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->pwdPopImg:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131296956:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131296956:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131296953:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity_ViewBinding;->view2131296953:Landroid/view/View;

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
