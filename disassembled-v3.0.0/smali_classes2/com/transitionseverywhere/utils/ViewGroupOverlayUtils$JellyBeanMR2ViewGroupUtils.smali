.class Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$JellyBeanMR2ViewGroupUtils;
.super Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;
.source "ViewGroupOverlayUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellyBeanMR2ViewGroupUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;-><init>()V

    return-void
.end method

.method private static getViewOverlay(ZLandroid/view/View;)Landroid/view/ViewOverlay;
    .locals 0

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 102
    invoke-static {p1, p2}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$JellyBeanMR2ViewGroupUtils;->getViewOverlay(ZLandroid/view/View;)Landroid/view/ViewOverlay;

    move-result-object p1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 104
    invoke-virtual {p1, p5}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public addOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$JellyBeanMR2ViewGroupUtils;->moveViewInOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public getLocationOnScreenOfOverlayView(Landroid/view/ViewGroup;Landroid/view/View;)[I
    .locals 3

    const/4 v0, 0x2

    .line 111
    new-array v0, v0, [I

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 113
    aget v1, v0, p1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, p1

    const/4 p1, 0x1

    .line 114
    aget v1, v0, p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr v1, p2

    aput v1, v0, p1

    return-object v0
.end method

.method public initializeOverlay(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public moveViewInOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [I

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 89
    aget p1, v0, p1

    sub-int/2addr p3, p1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 p1, 0x1

    .line 90
    aget p1, v0, p1

    sub-int/2addr p4, p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p2, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    return-void
.end method

.method public removeCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 121
    invoke-static {p1, p2}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$JellyBeanMR2ViewGroupUtils;->getViewOverlay(ZLandroid/view/View;)Landroid/view/ViewOverlay;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p4}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 124
    invoke-virtual {p1, p5}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public removeOverlay(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method
