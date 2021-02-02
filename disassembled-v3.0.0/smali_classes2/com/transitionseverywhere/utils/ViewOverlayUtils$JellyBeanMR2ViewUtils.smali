.class Lcom/transitionseverywhere/utils/ViewOverlayUtils$JellyBeanMR2ViewUtils;
.super Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;
.source "ViewOverlayUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewOverlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellyBeanMR2ViewUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public addOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public removeOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
