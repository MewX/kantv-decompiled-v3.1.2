.class public Lcom/transitionseverywhere/utils/PointFAnimator;
.super Lcom/transitionseverywhere/utils/BasePointFAnimator;
.source "PointFAnimator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mEndLeft:F

.field private mEndTop:F

.field private mStartLeft:F

.field private mStartTop:F


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/utils/BasePointFAnimator;-><init>(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;)V

    return-void
.end method

.method protected static interpolate(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float p2, p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method public static ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;FFFF)Lcom/transitionseverywhere/utils/PointFAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "TT;>;FFFF)",
            "Lcom/transitionseverywhere/utils/PointFAnimator;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 23
    new-instance v0, Lcom/transitionseverywhere/utils/PointFAnimator;

    invoke-direct {v0, p0, p1}, Lcom/transitionseverywhere/utils/PointFAnimator;-><init>(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;)V

    .line 24
    iput p2, v0, Lcom/transitionseverywhere/utils/PointFAnimator;->mStartLeft:F

    .line 25
    iput p3, v0, Lcom/transitionseverywhere/utils/PointFAnimator;->mStartTop:F

    .line 26
    iput p4, v0, Lcom/transitionseverywhere/utils/PointFAnimator;->mEndLeft:F

    .line 27
    iput p5, v0, Lcom/transitionseverywhere/utils/PointFAnimator;->mEndTop:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected applyAnimatedFraction(Landroid/graphics/PointF;F)V
    .locals 2

    .line 33
    iget v0, p0, Lcom/transitionseverywhere/utils/PointFAnimator;->mStartLeft:F

    iget v1, p0, Lcom/transitionseverywhere/utils/PointFAnimator;->mEndLeft:F

    invoke-static {p2, v0, v1}, Lcom/transitionseverywhere/utils/PointFAnimator;->interpolate(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 34
    iget v0, p0, Lcom/transitionseverywhere/utils/PointFAnimator;->mStartTop:F

    iget v1, p0, Lcom/transitionseverywhere/utils/PointFAnimator;->mEndTop:F

    invoke-static {p2, v0, v1}, Lcom/transitionseverywhere/utils/PointFAnimator;->interpolate(FFF)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method
