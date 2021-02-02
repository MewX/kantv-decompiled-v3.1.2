.class public Lcom/transitionseverywhere/utils/ViewOverlayUtils;
.super Ljava/lang/Object;
.source "ViewOverlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/utils/ViewOverlayUtils$JellyBeanMR2ViewUtils;,
        Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Lcom/transitionseverywhere/utils/ViewOverlayUtils$JellyBeanMR2ViewUtils;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewOverlayUtils$JellyBeanMR2ViewUtils;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 48
    sget-object v0, Lcom/transitionseverywhere/utils/ViewOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;->addOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static removeOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/transitionseverywhere/utils/ViewOverlayUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewOverlayUtils$BaseViewOverlayUtils;->removeOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
