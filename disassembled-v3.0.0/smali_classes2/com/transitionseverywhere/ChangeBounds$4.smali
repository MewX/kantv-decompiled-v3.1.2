.class final Lcom/transitionseverywhere/ChangeBounds$4;
.super Lcom/transitionseverywhere/utils/PointFProperty;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/ChangeBounds;
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

    .line 109
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/PointFProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 114
    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 115
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 116
    invoke-static {p1, v0, v1, v2, p2}, Lcom/transitionseverywhere/utils/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/ChangeBounds$4;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
