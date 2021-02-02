.class public Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ResetPwdActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/ResetPwdActivity;

.field private view2131296963:Landroid/view/View;

.field private view2131296964:Landroid/view/View;

.field private view2131296965:Landroid/view/View;

.field private view2131296970:Landroid/view/View;

.field private view2131296971:Landroid/view/View;

.field private view2131296972:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297190:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/kantv/ui/activity/ResetPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/ResetPwdActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->target:Lcom/kantv/ui/activity/ResetPwdActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->mTitle:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c3

    const-string v1, "field \'resetArea\' and method \'onClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'resetArea\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetArea:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296963:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902c6

    const-string v2, "field \'resetPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    .line 69
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902c7

    const-string v2, "field \'resetPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    const v0, 0x7f0903a6

    const-string v1, "field \'vercodeTip\' and method \'onClick\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'vercodeTip\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->vercodeTip:Landroid/widget/TextView;

    .line 72
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131297190:Landroid/view/View;

    .line 73
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cb

    const-string v1, "field \'resetVercode\' and method \'onClick\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/EditText;

    const-string v3, "field \'resetVercode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetVercode:Landroid/widget/EditText;

    .line 81
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296971:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0902c8

    const-string v2, "field \'resetPwdSafe\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdSafe:Landroid/widget/CheckBox;

    const v0, 0x7f0902c4

    const-string v1, "field \'resetBtn\' and method \'onClick\'"

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 90
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'resetBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    .line 91
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296964:Landroid/view/View;

    .line 92
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ca

    const-string v1, "field \'rmPhoneImg\' and method \'onClick\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 99
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rmPhoneImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->rmPhoneImg:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296970:Landroid/view/View;

    .line 101
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902c9

    const-string v2, "field \'rmEmailImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->rmEmailImg:Landroid/widget/ImageView;

    .line 108
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900f3

    const-string v2, "field \'emailResetPwdLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->emailResetPwdLayout:Landroid/widget/LinearLayout;

    .line 109
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090297

    const-string v2, "field \'phoneResetPwdLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->phoneResetPwdLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0902cc

    const-string v1, "field \'resetPwdLoginType\' and method \'onClick\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 111
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'resetPwdLoginType\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdLoginType:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296972:Landroid/view/View;

    .line 113
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$7;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c5

    const-string v1, "field \'resetEmailPwd\' and method \'onClick\'"

    .line 119
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 120
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'resetEmailPwd\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetEmailPwd:Landroid/widget/TextView;

    .line 121
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296965:Landroid/view/View;

    .line 122
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$8;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09000e

    const-string v2, "field \'accountEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->accountEmail:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->target:Lcom/kantv/ui/activity/ResetPwdActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->target:Lcom/kantv/ui/activity/ResetPwdActivity;

    .line 138
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 139
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->mTitle:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 141
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetArea:Landroid/widget/TextView;

    .line 142
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    .line 143
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    .line 144
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->vercodeTip:Landroid/widget/TextView;

    .line 145
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetVercode:Landroid/widget/EditText;

    .line 146
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdSafe:Landroid/widget/CheckBox;

    .line 147
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->rmPhoneImg:Landroid/widget/ImageView;

    .line 149
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->rmEmailImg:Landroid/widget/ImageView;

    .line 150
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->emailResetPwdLayout:Landroid/widget/LinearLayout;

    .line 151
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->phoneResetPwdLayout:Landroid/widget/LinearLayout;

    .line 152
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdLoginType:Landroid/widget/TextView;

    .line 153
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetEmailPwd:Landroid/widget/TextView;

    .line 154
    iput-object v1, v0, Lcom/kantv/ui/activity/ResetPwdActivity;->accountEmail:Landroid/widget/EditText;

    .line 156
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296963:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296963:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131297190:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131297190:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296971:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296971:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296964:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296964:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296970:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296970:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296972:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296972:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296965:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;->view2131296965:Landroid/view/View;

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
