.class public Lcom/transitionseverywhere/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsKitKat;,
        Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR2;,
        Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR1;,
        Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBean;,
        Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 170
    new-instance v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipopMr1;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewUtilsLollipopMr1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 172
    new-instance v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 174
    new-instance v0, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsKitKat;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsKitKat;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    goto :goto_0

    :cond_2
    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 176
    new-instance v0, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR2;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR2;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    goto :goto_0

    :cond_3
    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 178
    new-instance v0, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR1;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 180
    new-instance v0, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBean;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBean;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    goto :goto_0

    .line 182
    :cond_5
    new-instance v0, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGhostView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/View;
    .locals 1

    .line 231
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->addGhostView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 199
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getTransitionAlpha(Landroid/view/View;)F
    .locals 1

    .line 187
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 1

    .line 211
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->getTranslationZ(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getWindowId(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 239
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->getWindowId(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .locals 1

    .line 247
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isLaidOut(Landroid/view/View;Z)Z
    .locals 1

    .line 191
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->isLaidOut(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static isRtl(Landroid/view/View;)Z
    .locals 1

    .line 243
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->isRtl(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static removeGhostView(Landroid/view/View;)V
    .locals 1

    .line 235
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->removeGhostView(Landroid/view/View;)V

    return-void
.end method

.method public static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 227
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 195
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .locals 1

    .line 251
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setHasTransientState(Landroid/view/View;Z)V

    return-void
.end method

.method public static setLayoutParamsSilently(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 274
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setLayoutParamsSilently(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 6

    if-eqz p0, :cond_0

    .line 269
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 203
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static setTransitionVisibility(Landroid/view/View;I)V
    .locals 1

    .line 264
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 1

    .line 215
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 219
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 223
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
