.class public Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;
.super Ljava/lang/Object;
.source "MatrixUtils.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field mTempEndValues:[F

.field mTempMatrix:Landroid/graphics/Matrix;

.field mTempStartValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 221
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempStartValues:[F

    .line 223
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempEndValues:[F

    .line 225
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempStartValues:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 230
    iget-object p2, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x9

    if-ge p2, p3, :cond_0

    .line 232
    iget-object p3, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempEndValues:[F

    aget v0, p3, p2

    iget-object v1, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v2, v1, p2

    sub-float/2addr v0, v2

    .line 233
    aget v1, v1, p2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    aput v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 236
    iget-object p1, p0, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
