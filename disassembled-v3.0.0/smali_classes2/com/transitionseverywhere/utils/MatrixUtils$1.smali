.class final Lcom/transitionseverywhere/utils/MatrixUtils$1;
.super Landroid/graphics/Matrix;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public postRotate(F)Z
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public postRotate(FFF)Z
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public postScale(FF)Z
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public postScale(FFFF)Z
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public postSkew(FF)Z
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public postSkew(FFFF)Z
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public postTranslate(FF)Z
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preRotate(F)Z
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preRotate(FFF)Z
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preScale(FF)Z
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preScale(FFFF)Z
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preSkew(FF)Z
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preSkew(FFFF)Z
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public preTranslate(FF)Z
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 0

    .line 189
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public setRotate(F)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setScale(FFFF)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSinCos(FF)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSkew(FF)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSkew(FFFF)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setTranslate(FF)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setValues([F)V
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;->oops()V

    return-void
.end method
