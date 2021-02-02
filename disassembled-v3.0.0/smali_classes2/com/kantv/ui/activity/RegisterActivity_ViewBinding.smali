.class public Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RegisterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/RegisterActivity;

.field private view2131296948:Landroid/view/View;

.field private view2131296954:Landroid/view/View;

.field private view2131296955:Landroid/view/View;

.field private view2131296956:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297176:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/kantv/ui/activity/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/RegisterActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 54
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0902b4

    const-string v1, "field \'regArea\' and method \'onClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'regArea\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->regArea:Landroid/widget/TextView;

    .line 57
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296948:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902b7

    const-string v2, "field \'regPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    .line 65
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902b8

    const-string v2, "field \'regPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    const v0, 0x7f0902bb

    const-string v1, "field \'regVercode\' and method \'onClick\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 67
    const-class v2, Landroid/widget/EditText;

    const-string v3, "field \'regVercode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->regVercode:Landroid/widget/EditText;

    .line 68
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296955:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902bc

    const-string v1, "field \'regBtn\' and method \'onClick\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 76
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'regBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296956:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090398

    const-string v1, "field \'vercodeTip\' and method \'onClick\'"

    .line 84
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 85
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'vercodeTip\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->vercodeTip:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131297176:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0902a8

    const-string v2, "field \'regPwdSafe\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    const v0, 0x7f0902ba

    const-string v1, "field \'rmRegPhone\' and method \'onClick\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 95
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'rmRegPhone\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/RegisterActivity;->rmRegPhone:Landroid/widget/ImageView;

    .line 96
    iput-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296954:Landroid/view/View;

    .line 97
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/RegisterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/RegisterActivity;

    .line 112
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 113
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->regArea:Landroid/widget/TextView;

    .line 116
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    .line 117
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    .line 118
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->regVercode:Landroid/widget/EditText;

    .line 119
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->vercodeTip:Landroid/widget/TextView;

    .line 121
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    .line 122
    iput-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->rmRegPhone:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296948:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296948:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296955:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296955:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296956:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296956:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131297176:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131297176:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296954:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;->view2131296954:Landroid/view/View;

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
