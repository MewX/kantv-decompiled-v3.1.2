.class final Lcom/transitionseverywhere/TranslationAnimationCreator$1;
.super Lcom/transitionseverywhere/utils/PointFProperty;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transitionseverywhere/utils/PointFProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/PointFProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 1

    .line 44
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 45
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/TranslationAnimationCreator$1;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
