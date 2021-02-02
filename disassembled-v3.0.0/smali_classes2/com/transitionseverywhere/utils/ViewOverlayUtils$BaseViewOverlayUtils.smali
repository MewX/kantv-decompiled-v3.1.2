.class Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;
.super Ljava/lang/Object;
.source "ViewOverlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewOverlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewOverlayUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->addDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public removeOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->getOverlay(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/transitionseverywhere/utils/ViewOverlayPreJellybean;->removeDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
