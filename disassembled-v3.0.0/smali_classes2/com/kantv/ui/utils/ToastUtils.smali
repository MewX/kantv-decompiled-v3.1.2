.class public Lcom/kantv/ui/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static isShow:Z = true

.field private static mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(II)V
    .locals 1

    .line 93
    sget-boolean v0, Lcom/kantv/ui/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    .line 82
    :cond_0
    sget-boolean v0, Lcom/kantv/ui/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public static showLong(I)V
    .locals 2

    .line 67
    sget-boolean v0, Lcom/kantv/ui/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(I)V
    .locals 2

    .line 56
    sget-boolean v0, Lcom/kantv/ui/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 4

    .line 29
    sget-boolean v0, Lcom/kantv/ui/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090217

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/kantv/ui/utils/ToastUtils;->mTextView:Landroid/widget/TextView;

    .line 35
    sget-object v1, Lcom/kantv/ui/utils/ToastUtils;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    new-instance p0, Landroid/widget/Toast;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 40
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/16 v2, 0x30

    .line 42
    div-int/lit8 v1, v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 43
    invoke-virtual {p0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
