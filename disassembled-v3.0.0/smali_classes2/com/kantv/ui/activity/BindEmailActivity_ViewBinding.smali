.class public Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BindEmailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/BindEmailActivity;

.field private view2131296367:Landroid/view/View;

.field private view2131296371:Landroid/view/View;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/BindEmailActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/kantv/ui/activity/BindEmailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/BindEmailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/BindEmailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BindEmailActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindEmailActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;Lcom/kantv/ui/activity/BindEmailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindEmailActivity;->mTitle:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindEmailActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 48
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090069

    const-string v2, "field \'bindEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    const v0, 0x7f090073

    const-string v1, "field \'bindEmailBtn\' and method \'onClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'bindEmailBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmailBtn:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131296371:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;Lcom/kantv/ui/activity/BindEmailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006f

    const-string v1, "field \'rmBindEmail\' and method \'onClick\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 59
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'rmBindEmail\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/BindEmailActivity;->rmBindEmail:Landroid/widget/ImageView;

    .line 60
    iput-object p2, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131296367:Landroid/view/View;

    .line 61
    new-instance v0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;Lcom/kantv/ui/activity/BindEmailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BindEmailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->target:Lcom/kantv/ui/activity/BindEmailActivity;

    .line 76
    iput-object v1, v0, Lcom/kantv/ui/activity/BindEmailActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcom/kantv/ui/activity/BindEmailActivity;->mTitle:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/kantv/ui/activity/BindEmailActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, v0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmailBtn:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/BindEmailActivity;->rmBindEmail:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131296371:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131296371:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131296367:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity_ViewBinding;->view2131296367:Landroid/view/View;

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
