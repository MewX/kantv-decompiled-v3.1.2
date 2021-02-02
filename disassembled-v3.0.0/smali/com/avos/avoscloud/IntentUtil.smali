.class public Lcom/avos/avoscloud/IntentUtil;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    const/16 v0, 0x20

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method
