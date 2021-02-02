.class Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR1;
.super Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBean;
.source "ViewUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewUtilsJellyBeanMR1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBean;-><init>()V

    return-void
.end method


# virtual methods
.method public isRtl(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
