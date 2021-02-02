.class public Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BindPhoneActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/BindPhoneActivity;

.field private view2131296360:Landroid/view/View;

.field private view2131296368:Landroid/view/View;

.field private view2131296369:Landroid/view/View;

.field private view2131296373:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297176:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/BindPhoneActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/kantv/ui/activity/BindPhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BindPhoneActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->mTitle:Landroid/widget/TextView;

    .line 53
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090068

    const-string v1, "field \'bindArea\' and method \'onClick\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'bindArea\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->bindArea:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296360:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09006c

    const-string v2, "field \'bindPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    const v0, 0x7f090071

    const-string v1, "field \'bindVercode\' and method \'onClick\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 65
    const-class v2, Landroid/widget/EditText;

    const-string v3, "field \'bindVercode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->bindVercode:Landroid/widget/EditText;

    .line 66
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296369:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090075

    const-string v1, "field \'bindPhoneBtn\' and method \'onClick\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'bindPhoneBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhoneBtn:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296373:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090398

    const-string v1, "field \'vercodeTip\' and method \'onClick\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 83
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'vercodeTip\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->vercodeTip:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131297176:Landroid/view/View;

    .line 85
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090070

    const-string v1, "field \'rmBindPhone\' and method \'onClick\'"

    .line 91
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 92
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'rmBindPhone\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindPhoneActivity;->rmBindPhone:Landroid/widget/ImageView;

    .line 93
    iput-object p2, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296368:Landroid/view/View;

    .line 94
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BindPhoneActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BindPhoneActivity;

    .line 109
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->mTitle:Landroid/widget/TextView;

    .line 111
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindArea:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    .line 114
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindVercode:Landroid/widget/EditText;

    .line 115
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhoneBtn:Landroid/widget/TextView;

    .line 116
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->vercodeTip:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->rmBindPhone:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296360:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296360:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296369:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296369:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296373:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296373:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131297176:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131297176:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296368:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity_ViewBinding;->view2131296368:Landroid/view/View;

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
