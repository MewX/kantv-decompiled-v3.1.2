.class final Lcom/transitionseverywhere/extra/TranslationTransition$1;
.super Lcom/transitionseverywhere/utils/PointFProperty;
.source "TranslationTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/extra/TranslationTransition;
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

    .line 33
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/PointFProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 2

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Landroid/graphics/PointF;
    .locals 0

    .line 33
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/extra/TranslationTransition$1;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/extra/TranslationTransition$1;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 1

    .line 37
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 38
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/extra/TranslationTransition$1;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
