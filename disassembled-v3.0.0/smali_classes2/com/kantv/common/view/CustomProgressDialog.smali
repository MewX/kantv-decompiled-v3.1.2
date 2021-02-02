.class public Lcom/kantv/common/view/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# static fields
.field private static volatile sDialog:Lcom/kantv/common/view/CustomProgressDialog;


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 29
    sget p2, Lcom/kantv/common/R$style;->CustomProgressDialog:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/kantv/common/view/CustomProgressDialog;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/kantv/common/view/CustomProgressDialog;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/kantv/common/R$layout;->dialog_custom_progress:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/kantv/common/view/CustomProgressDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 1

    const-string v0, "loading..."

    .line 52
    invoke-static {p0, v0}, Lcom/kantv/common/view/CustomProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, p1, v0}, Lcom/kantv/common/view/CustomProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 60
    sget-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->dismiss()V

    :cond_0
    if-eqz p0, :cond_2

    .line 64
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lcom/kantv/common/view/CustomProgressDialog;

    invoke-direct {v0, p0, p1}, Lcom/kantv/common/view/CustomProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    .line 69
    sget-object p1, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {p1, p2}, Lcom/kantv/common/view/CustomProgressDialog;->setCancelable(Z)V

    .line 71
    sget-object p1, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/kantv/common/view/CustomProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_2

    .line 72
    sget-object p0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {p0}, Lcom/kantv/common/view/CustomProgressDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 77
    sget-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/kantv/common/view/CustomProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/kantv/common/view/CustomProgressDialog;->sDialog:Lcom/kantv/common/view/CustomProgressDialog;

    return-void
.end method
