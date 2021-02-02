.class public Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AccountLoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/AccountLoginActivity;

.field private view2131296268:Landroid/view/View;

.field private view2131296269:Landroid/view/View;

.field private view2131296272:Landroid/view/View;

.field private view2131296532:Landroid/view/View;

.field private view2131296977:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297173:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->target:Lcom/kantv/ui/activity/AccountLoginActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->titleTxt:Landroid/widget/TextView;

    .line 56
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->titleRightImg:Landroid/widget/ImageView;

    const v0, 0x7f090395

    const-string v1, "field \'titleRightTxt\' and method \'onClick\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 58
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'titleRightTxt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->titleRightTxt:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131297173:Landroid/view/View;

    .line 60
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000c

    const-string v1, "field \'accountArea\' and method \'onClick\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 67
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'accountArea\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    .line 68
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296268:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090011

    const-string v2, "field \'accountPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    .line 76
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090012

    const-string v2, "field \'accountPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    const v0, 0x7f09000d

    const-string v1, "field \'accountBtn\' and method \'onClick\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'accountBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->accountBtn:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296269:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d1

    const-string v1, "field \'rmAccountImg\' and method \'onClick\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 87
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rmAccountImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->rmAccountImg:Landroid/widget/ImageView;

    .line 88
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296977:Landroid/view/View;

    .line 89
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090013

    const-string v2, "field \'pwdSafe\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->pwdSafe:Landroid/widget/CheckBox;

    const v0, 0x7f090010

    const-string v1, "field \'accountLoginType\' and method \'onClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 97
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'accountLoginType\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginType:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296272:Landroid/view/View;

    .line 99
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09000f

    const-string v2, "field \'accountLoginEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    const v0, 0x7f090114

    const-string v1, "method \'onClick\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 107
    iput-object p2, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296532:Landroid/view/View;

    .line 108
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding$7;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->target:Lcom/kantv/ui/activity/AccountLoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->target:Lcom/kantv/ui/activity/AccountLoginActivity;

    .line 123
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 124
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleTxt:Landroid/widget/TextView;

    .line 125
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 126
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleRightTxt:Landroid/widget/TextView;

    .line 127
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    .line 129
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    .line 130
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountBtn:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->rmAccountImg:Landroid/widget/ImageView;

    .line 132
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->pwdSafe:Landroid/widget/CheckBox;

    .line 133
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginType:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131297173:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131297173:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296268:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296268:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296269:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296269:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296977:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296977:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296272:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296272:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296532:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity_ViewBinding;->view2131296532:Landroid/view/View;

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
