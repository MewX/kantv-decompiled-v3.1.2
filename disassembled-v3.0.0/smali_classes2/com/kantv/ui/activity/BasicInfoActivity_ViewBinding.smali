.class public Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BasicInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/BasicInfoActivity;

.field private view2131296354:Landroid/view/View;

.field private view2131296355:Landroid/view/View;

.field private view2131296356:Landroid/view/View;

.field private view2131296357:Landroid/view/View;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/BasicInfoActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-virtual {p1}, Lcom/kantv/ui/activity/BasicInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/BasicInfoActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BasicInfoActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/BasicInfoActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 43
    new-instance v0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;Lcom/kantv/ui/activity/BasicInfoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BasicInfoActivity;->mTitle:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/BasicInfoActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 51
    const-class v0, Lcom/kantv/ui/view/CircleImageView;

    const v1, 0x7f09005b

    const-string v2, "field \'mAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/CircleImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BasicInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090325

    const-string v2, "field \'sexTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BasicInfoActivity;->sexTv:Landroid/widget/TextView;

    .line 53
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09027a

    const-string v2, "field \'nickNameTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BasicInfoActivity;->nickNameTv:Landroid/widget/TextView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f090062

    .line 54
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296354:Landroid/view/View;

    .line 56
    new-instance v2, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;Lcom/kantv/ui/activity/BasicInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090063

    .line 62
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296355:Landroid/view/View;

    .line 64
    new-instance v2, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;Lcom/kantv/ui/activity/BasicInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090065

    .line 70
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296357:Landroid/view/View;

    .line 72
    new-instance v2, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;Lcom/kantv/ui/activity/BasicInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090064

    .line 78
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 79
    iput-object p2, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296356:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;Lcom/kantv/ui/activity/BasicInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BasicInfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BasicInfoActivity;

    .line 95
    iput-object v1, v0, Lcom/kantv/ui/activity/BasicInfoActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, v0, Lcom/kantv/ui/activity/BasicInfoActivity;->mTitle:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/kantv/ui/activity/BasicInfoActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 98
    iput-object v1, v0, Lcom/kantv/ui/activity/BasicInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    .line 99
    iput-object v1, v0, Lcom/kantv/ui/activity/BasicInfoActivity;->sexTv:Landroid/widget/TextView;

    .line 100
    iput-object v1, v0, Lcom/kantv/ui/activity/BasicInfoActivity;->nickNameTv:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296354:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296354:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296355:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296355:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296357:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296357:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296356:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;->view2131296356:Landroid/view/View;

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
