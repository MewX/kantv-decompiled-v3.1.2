.class Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR2;
.super Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR1;
.source "ViewUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewUtilsJellyBeanMR2"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsJellyBeanMR1;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getWindowId(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    return-object p1
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
