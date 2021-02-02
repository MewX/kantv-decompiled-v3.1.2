.class public abstract Lcom/transitionseverywhere/Slide$CalculateSlideVertical;
.super Ljava/lang/Object;
.source "Slide.java"

# interfaces
.implements Lcom/transitionseverywhere/Slide$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CalculateSlideVertical"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1
.end method
