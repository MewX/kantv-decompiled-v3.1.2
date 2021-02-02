.class final Lcom/transitionseverywhere/Slide$3;
.super Lcom/transitionseverywhere/Slide$CalculateSlideVertical;
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

    .line 105
    invoke-direct {p0}, Lcom/transitionseverywhere/Slide$CalculateSlideVertical;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    return p2
.end method
