.class final Lcom/transitionseverywhere/Slide$2;
.super Lcom/transitionseverywhere/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/transitionseverywhere/Slide$CalculateSlideHorizontal;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 1

    .line 94
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->isRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :goto_0
    return p2
.end method
