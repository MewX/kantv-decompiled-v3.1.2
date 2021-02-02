.class public Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;
.super Ljava/lang/Object;
.source "ViewGroupOverlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$JellyBeanMR2ViewGroupUtils;,
        Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 138
    new-instance v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$JellyBeanMR2ViewGroupUtils;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$JellyBeanMR2ViewGroupUtils;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 177
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;->addCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_0
    return-void
.end method

.method public static addOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;->addOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public static getLocationOnScreenOfOverlayView(Landroid/view/ViewGroup;Landroid/view/View;)[I
    .locals 1

    if-eqz p1, :cond_0

    .line 168
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;->getLocationOnScreenOfOverlayView(Landroid/view/ViewGroup;Landroid/view/View;)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 170
    new-array p0, p0, [I

    return-object p0
.end method

.method public static initializeOverlay(Landroid/view/ViewGroup;)V
    .locals 1

    .line 151
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;->initializeOverlay(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static moveViewInOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 162
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;->moveViewInOverlay(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public static removeCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 184
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;->removeCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_0
    return-void
.end method

.method public static removeOverlay(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 156
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils$BaseViewGroupOverlayUtils;->removeOverlay(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    return-void
.end method
