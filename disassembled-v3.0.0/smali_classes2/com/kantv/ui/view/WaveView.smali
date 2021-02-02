.class public Lcom/kantv/ui/view/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/WaveView$OnWaveAnimationListener;
    }
.end annotation


# instance fields
.field private mAbovePath:Landroid/graphics/Path;

.field private mAboveWavePaint:Landroid/graphics/Paint;

.field private mBelowWavePaint:Landroid/graphics/Paint;

.field private mBelowWavePath:Landroid/graphics/Path;

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mWaveAnimationListener:Lcom/kantv/ui/view/WaveView$OnWaveAnimationListener;

.field private φ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/WaveView;->mAbovePath:Landroid/graphics/Path;

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePath:Landroid/graphics/Path;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/kantv/ui/view/WaveView;->mAboveWavePaint:Landroid/graphics/Paint;

    .line 35
    iget-object p1, p0, Lcom/kantv/ui/view/WaveView;->mAboveWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object p1, p0, Lcom/kantv/ui/view/WaveView;->mAboveWavePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object p1, p0, Lcom/kantv/ui/view/WaveView;->mAboveWavePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePaint:Landroid/graphics/Paint;

    .line 40
    iget-object p1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object p1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object p1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePaint:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/kantv/ui/view/WaveView;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 51
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mDrawFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 53
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mAbovePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 56
    iget v0, p0, Lcom/kantv/ui/view/WaveView;->φ:F

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kantv/ui/view/WaveView;->φ:F

    .line 60
    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    .line 62
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mAbovePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    float-to-double v4, v0

    .line 72
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    iget v1, p0, Lcom/kantv/ui/view/WaveView;->φ:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double v6, v6, v8

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 73
    iget v6, p0, Lcom/kantv/ui/view/WaveView;->φ:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v8

    double-to-float v4, v4

    .line 74
    iget-object v5, p0, Lcom/kantv/ui/view/WaveView;->mAbovePath:Landroid/graphics/Path;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    iget-object v1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v0, v1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mAbovePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/kantv/ui/view/WaveView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mAbovePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kantv/ui/view/WaveView;->mAboveWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kantv/ui/view/WaveView;->mBelowWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-wide/16 v0, 0x14

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/view/WaveView;->postInvalidateDelayed(J)V

    return-void
.end method

.method public setOnWaveAnimationListener(Lcom/kantv/ui/view/WaveView$OnWaveAnimationListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/kantv/ui/view/WaveView;->mWaveAnimationListener:Lcom/kantv/ui/view/WaveView$OnWaveAnimationListener;

    return-void
.end method
