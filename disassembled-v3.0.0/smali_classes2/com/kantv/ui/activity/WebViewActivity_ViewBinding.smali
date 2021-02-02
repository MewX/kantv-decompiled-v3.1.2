.class public Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WebViewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/WebViewActivity;

.field private view2131297140:Landroid/view/View;

.field private view2131297142:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/WebViewActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/kantv/ui/activity/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/WebViewActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/WebViewActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->target:Lcom/kantv/ui/activity/WebViewActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/WebViewActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;Lcom/kantv/ui/activity/WebViewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903e1

    const-string v2, "field \'mLin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/WebViewActivity;->mLin:Landroid/widget/LinearLayout;

    .line 44
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0903e2

    const-string v2, "field \'mBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/kantv/ui/activity/WebViewActivity;->mBar:Landroid/widget/ProgressBar;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/WebViewActivity;->titleTV:Landroid/widget/TextView;

    const v0, 0x7f090376

    const-string v1, "method \'onClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;Lcom/kantv/ui/activity/WebViewActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->target:Lcom/kantv/ui/activity/WebViewActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->target:Lcom/kantv/ui/activity/WebViewActivity;

    .line 63
    iput-object v1, v0, Lcom/kantv/ui/activity/WebViewActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, v0, Lcom/kantv/ui/activity/WebViewActivity;->mLin:Landroid/widget/LinearLayout;

    .line 65
    iput-object v1, v0, Lcom/kantv/ui/activity/WebViewActivity;->mBar:Landroid/widget/ProgressBar;

    .line 66
    iput-object v1, v0, Lcom/kantv/ui/activity/WebViewActivity;->titleTV:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->view2131297142:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity_ViewBinding;->view2131297142:Landroid/view/View;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
