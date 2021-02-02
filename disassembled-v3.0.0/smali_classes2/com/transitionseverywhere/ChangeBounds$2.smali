.class final Lcom/transitionseverywhere/ChangeBounds$2;
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
        "Lcom/transitionseverywhere/ChangeBounds$ViewBounds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/PointFProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/transitionseverywhere/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .locals 0

    .line 100
    invoke-virtual {p1, p2}, Lcom/transitionseverywhere/ChangeBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/transitionseverywhere/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/ChangeBounds$2;->set(Lcom/transitionseverywhere/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
