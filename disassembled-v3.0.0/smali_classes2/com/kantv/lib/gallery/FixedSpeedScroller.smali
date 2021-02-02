.class public Lcom/kantv/lib/gallery/FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "FixedSpeedScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3e8

    .line 9
    iput p1, p0, Lcom/kantv/lib/gallery/FixedSpeedScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x3e8

    .line 9
    iput p1, p0, Lcom/kantv/lib/gallery/FixedSpeedScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/kantv/lib/gallery/FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 21
    iput p3, p0, Lcom/kantv/lib/gallery/FixedSpeedScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 6

    .line 33
    iget v5, p0, Lcom/kantv/lib/gallery/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 27
    iget v5, p0, Lcom/kantv/lib/gallery/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
