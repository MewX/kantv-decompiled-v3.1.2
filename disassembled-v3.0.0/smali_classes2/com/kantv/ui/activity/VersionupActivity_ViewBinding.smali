.class public Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VersionupActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/VersionupActivity;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/VersionupActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/kantv/ui/activity/VersionupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/VersionupActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/VersionupActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VersionupActivity;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;Lcom/kantv/ui/activity/VersionupActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->mTitleTv:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09001a

    const-string v2, "field \'mPresent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->mPresent:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090018

    const-string v2, "field \'mBt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->mBt:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09001c

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->mTitle:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09001b

    const-string v2, "field \'mText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->mText:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090019

    const-string v2, "field \'mInup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0903ac

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VersionupActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VersionupActivity;

    .line 58
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 59
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->mTitleTv:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->mPresent:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->mBt:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->mTitle:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->mText:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;->view2131297140:Landroid/view/View;

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
