.class Lcom/transitionseverywhere/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field public final rotationX:F

.field public final rotationY:F

.field public final rotationZ:F

.field public final scaleX:F

.field public final scaleY:F

.field public final translationX:F

.field public final translationY:F

.field public final translationZ:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationX:F

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationY:F

    .line 417
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationZ:F

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleX:F

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleY:F

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationX:F

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationY:F

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationZ:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 432
    instance-of v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 435
    :cond_0
    check-cast p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;

    .line 436
    iget v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationX:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationY:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationZ:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleX:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleY:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationX:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationY:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget p1, p1, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationZ:F

    iget v0, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationZ:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public restore(Landroid/view/View;)V
    .locals 9

    .line 426
    iget v1, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationX:F

    iget v2, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationY:F

    iget v3, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->translationZ:F

    iget v4, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleX:F

    iget v5, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->scaleY:F

    iget v6, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationX:F

    iget v7, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationY:F

    iget v8, p0, Lcom/transitionseverywhere/ChangeTransform$Transforms;->rotationZ:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/transitionseverywhere/ChangeTransform;->access$300(Landroid/view/View;FFFFFFFF)V

    return-void
.end method
