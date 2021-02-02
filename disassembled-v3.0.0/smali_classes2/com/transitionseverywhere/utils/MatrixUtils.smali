.class public Lcom/transitionseverywhere/utils/MatrixUtils;
.super Ljava/lang/Object;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/utils/MatrixUtils$NullMatrixEvaluator;,
        Lcom/transitionseverywhere/utils/MatrixUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static final FIELD_DRAW_MATRIX:Ljava/lang/reflect/Field;

.field public static IDENTITY_MATRIX:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transitionseverywhere/utils/MatrixUtils$1;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/MatrixUtils$1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 199
    const-class v0, Landroid/widget/ImageView;

    const-string v1, "mDrawMatrix"

    invoke-static {v0, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/MatrixUtils;->FIELD_DRAW_MATRIX:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 4

    .line 202
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 204
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 211
    sget-object v1, Lcom/transitionseverywhere/utils/MatrixUtils;->FIELD_DRAW_MATRIX:Ljava/lang/reflect/Field;

    invoke-static {p0, v1, v0}, Lcom/transitionseverywhere/utils/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 213
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 205
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
