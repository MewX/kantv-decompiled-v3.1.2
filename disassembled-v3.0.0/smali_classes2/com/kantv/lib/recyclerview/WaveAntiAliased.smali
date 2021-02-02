.class public Lcom/kantv/lib/recyclerview/WaveAntiAliased;
.super Landroid/view/View;
.source "WaveAntiAliased.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private color:I

.field private currentPercent:F

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private path:Landroid/graphics/Path;

.field private text:Ljava/lang/String;

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I

.field private xfermode:Landroid/graphics/PorterDuffXfermode;

.field private xfermode_text:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->xfermode:Landroid/graphics/PorterDuffXfermode;

    .line 27
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->xfermode_text:Landroid/graphics/PorterDuffXfermode;

    .line 30
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p3, v0}, Lcom/kantv/lib/recyclerview/DimentionUtils;->dip2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    .line 31
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/kantv/lib/recyclerview/DimentionUtils;->dip2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    const-string p3, "\u770b"

    .line 35
    iput-object p3, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->text:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p3, v0}, Lcom/kantv/lib/recyclerview/DimentionUtils;->sp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textSize:I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/kantv/lib/recyclerview/WaveAntiAliased;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->currentPercent:F

    return p1
.end method

.method private drawCenterText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 5

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    iget v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 178
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 180
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 182
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    float-to-int v1, v3

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getActionPath(F)Landroid/graphics/Path;
    .locals 7

    .line 149
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 150
    iget v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    neg-int v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float p1, p1, v1

    add-float/2addr v2, p1

    float-to-int p1, v2

    int-to-float v1, p1

    .line 154
    iget v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    iget v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    div-int/lit8 v2, v2, 0x4

    .line 158
    iget v3, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    div-int/lit8 v3, v3, 0x14

    mul-int/lit8 v3, v3, 0x3

    int-to-float v4, v2

    int-to-float v5, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v6, 0x0

    .line 160
    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-int v3, v3

    int-to-float v3, v3

    .line 161
    invoke-virtual {v0, v4, v3, v2, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 163
    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 164
    invoke-virtual {v0, v4, v3, v2, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 166
    iget v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private getCircleBitmap(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 123
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 p1, 0x29

    const/16 p2, 0xa3

    const/16 v0, 0xfe

    .line 60
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->color:I

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    .line 68
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 71
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->path:Landroid/graphics/Path;

    const/4 p1, 0x2

    .line 73
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    .line 74
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 78
    new-instance p2, Lcom/kantv/lib/recyclerview/WaveAntiAliased$1;

    invoke-direct {p2, p0}, Lcom/kantv/lib/recyclerview/WaveAntiAliased$1;-><init>(Lcom/kantv/lib/recyclerview/WaveAntiAliased;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->text:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->drawCenterText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->currentPercent:F

    invoke-direct {p0, v0}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->getActionPath(F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->path:Landroid/graphics/Path;

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 103
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->xfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->xfermode_text:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->text:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->drawCenterText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 112
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_0

    .line 137
    iput v0, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    :cond_0
    if-ne p2, v2, :cond_1

    .line 140
    iput v1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    .line 142
    :cond_1
    iget p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    iget p2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->setMeasuredDimension(II)V

    .line 143
    iget p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    iget p2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mHeight:I

    invoke-direct {p0, p1, p2}, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->getCircleBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->bitmap:Landroid/graphics/Bitmap;

    .line 144
    iget p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->mWidth:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textSize:I

    .line 145
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kantv/lib/recyclerview/WaveAntiAliased;->textSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
