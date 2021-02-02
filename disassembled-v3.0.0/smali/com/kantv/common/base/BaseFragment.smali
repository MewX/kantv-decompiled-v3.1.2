.class public abstract Lcom/kantv/common/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected isonDestroy:Z

.field protected mDialog:Landroid/app/ProgressDialog;

.field protected mRootView:Landroid/view/View;

.field protected request:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kantv/common/base/BaseFragment;->request:Ljava/util/Map;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/kantv/common/base/BaseFragment;->isonDestroy:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private hideLoadingDialog()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected InItBase()V
    .locals 0

    return-void
.end method

.method protected InItDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    .line 115
    invoke-static {p2, v0, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/common/base/BaseFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 116
    iget-object p1, p0, Lcom/kantv/common/base/BaseFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kantv/common/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/kantv/common/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public gotoActivity(Ljava/lang/Class;)V
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kantv/common/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/kantv/common/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public abstract initData()V
.end method

.method protected abstract initView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseFragment;->initData()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/kantv/common/base/BaseFragment;->initView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 54
    iget-object p1, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/kantv/common/base/BaseFragment;->isonDestroy:Z

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    .line 133
    iput-object v0, p0, Lcom/kantv/common/base/BaseFragment;->request:Ljava/util/Map;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 80
    iget-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseFragment;->getUserVisibleHint()Z

    move-result p1

    iget-object v0, p0, Lcom/kantv/common/base/BaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseFragment;->initData()V

    :cond_1
    return-void
.end method
