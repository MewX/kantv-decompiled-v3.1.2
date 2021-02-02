.class public abstract Lcom/kantv/common/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected isDestroy:Z

.field protected mMyHandler:Lcom/kantv/common/view/MyHandler;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kantv/common/base/BaseActivity;->request:Ljava/util/Map;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/kantv/common/base/BaseActivity;->isDestroy:Z

    return-void
.end method


# virtual methods
.method public closekeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 77
    invoke-virtual {p0, v0}, Lcom/kantv/common/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 1

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/kantv/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public gotoActivity(Ljava/lang/Class;)V
    .locals 1

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/kantv/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected initBase()V
    .locals 0

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected initStatusBar()V
    .locals 3

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x1020002

    .line 62
    invoke-virtual {p0, v0}, Lcom/kantv/common/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 66
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0xc000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 69
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    return-void
.end method

.method public isDestroy()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/kantv/common/base/BaseActivity;->isDestroy:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/kantv/common/base/BaseActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-static {}, Lcom/kantv/common/base/BaseApplication;->getInstance()Lcom/kantv/common/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/kantv/common/base/BaseApplication;->addActivity(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kantv/common/base/BaseActivity;->handleIntent(Landroid/content/Intent;)V

    .line 51
    :cond_0
    new-instance p1, Lcom/kantv/common/view/MyHandler;

    invoke-direct {p1, p0}, Lcom/kantv/common/view/MyHandler;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/kantv/common/base/BaseActivity;->mMyHandler:Lcom/kantv/common/view/MyHandler;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/kantv/common/base/BaseActivity;->isDestroy:Z

    .line 110
    invoke-static {}, Lcom/kantv/common/base/BaseApplication;->getInstance()Lcom/kantv/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kantv/common/base/BaseApplication;->finishActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/kantv/common/base/BaseActivity;->request:Ljava/util/Map;

    .line 113
    iget-object v1, p0, Lcom/kantv/common/base/BaseActivity;->mMyHandler:Lcom/kantv/common/view/MyHandler;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1, v0}, Lcom/kantv/common/view/MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iput-object v0, p0, Lcom/kantv/common/base/BaseActivity;->mMyHandler:Lcom/kantv/common/view/MyHandler;

    :cond_0
    return-void
.end method
