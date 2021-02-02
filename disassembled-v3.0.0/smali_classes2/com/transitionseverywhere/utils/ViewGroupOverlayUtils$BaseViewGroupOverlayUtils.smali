.class Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;
.super Ljava/lang/Object;
.source "ViewGroupOverlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewGroupOverlayUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    move-result-object p1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 52
    invoke-virtual {p1, p5}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_0
    invoke-virtual {p1, p4}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public addOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    .line 17
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1, p2, p3, p4}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public getLocationOnScreenOfOverlayView(Landroid/view/ViewGroup;Landroid/view/View;)[I
    .locals 0

    const/4 p1, 0x2

    .line 42
    new-array p1, p1, [I

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object p1
.end method

.method public initializeOverlay(Landroid/view/ViewGroup;)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    return-void
.end method

.method public moveViewInOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1, p2, p3, p4}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->moveView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public removeCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p4}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->removeDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    .line 64
    invoke-virtual {p1, p5}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->removeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public removeOverlay(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1, p2}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
