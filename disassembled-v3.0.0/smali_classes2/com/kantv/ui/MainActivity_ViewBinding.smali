.class public Lcom/kantv/ui/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/MainActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-virtual {p1}, Lcom/kantv/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/MainActivity_ViewBinding;-><init>(Lcom/kantv/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/MainActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/kantv/ui/MainActivity_ViewBinding;->target:Lcom/kantv/ui/MainActivity;

    .line 25
    const-class v0, Lcom/kantv/ui/view/CustomFragmentTabHost;

    const v1, 0x7f090014

    const-string v2, "field \'mTabHost\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/view/CustomFragmentTabHost;

    iput-object p2, p1, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/kantv/ui/MainActivity_ViewBinding;->target:Lcom/kantv/ui/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/kantv/ui/MainActivity_ViewBinding;->target:Lcom/kantv/ui/MainActivity;

    .line 35
    iput-object v1, v0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method