.class public Lcom/kantv/ui/view/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/CircularProgressBar$OnProgressChangeListener;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mDuration:I

.field private mOnChangeListener:Lcom/kantv/ui/view/CircularProgressBar$OnProgressChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrimaryColor:I

.field private mProgress:I

.field private mRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 17
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mDuration:I

    const/16 p1, 0x1e

    .line 18
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mProgress:I

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mRectF:Landroid/graphics/RectF;

    const p1, -0x333334

    .line 23
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mBackgroundColor:I

    const-string p1, "#1D94F0"

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPrimaryColor:I

    const/high16 p1, 0x40c00000    # 6.0f

    .line 25
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mStrokeWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 17
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mDuration:I

    const/16 p1, 0x1e

    .line 18
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mProgress:I

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mRectF:Landroid/graphics/RectF;

    const p1, -0x333334

    .line 23
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mBackgroundColor:I

    const-string p1, "#1D94F0"

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPrimaryColor:I

    const/high16 p1, 0x40c00000    # 6.0f

    .line 25
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mStrokeWidth:F

    return-void
.end method

.method private getRateOfProgress()F
    .locals 2

    .line 161
    iget v0, p0, Lcom/kantv/ui/view/CircularProgressBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/kantv/ui/view/CircularProgressBar;->mDuration:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/kantv/ui/view/CircularProgressBar;->mProgress:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircularProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 130
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircularProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 132
    :goto_0
    iget v3, p0, Lcom/kantv/ui/view/CircularProgressBar;->mStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 135
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/kantv/ui/view/CircularProgressBar;->mBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 137
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 138
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/kantv/ui/view/CircularProgressBar;->mStrokeWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    sub-float/2addr v6, v3

    .line 143
    iget-object v7, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPrimaryColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mRectF:Landroid/graphics/RectF;

    sub-int v5, v1, v2

    int-to-float v5, v5

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 148
    iget-object v4, p0, Lcom/kantv/ui/view/CircularProgressBar;->mRectF:Landroid/graphics/RectF;

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    .line 149
    iget-object v1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mRectF:Landroid/graphics/RectF;

    sub-int v4, v0, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 150
    iget-object v1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mRectF:Landroid/graphics/RectF;

    add-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 151
    iget-object v3, p0, Lcom/kantv/ui/view/CircularProgressBar;->mRectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-direct {p0}, Lcom/kantv/ui/view/CircularProgressBar;->getRateOfProgress()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mBackgroundColor:I

    return-void
.end method

.method public setCircleWidth(F)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mStrokeWidth:F

    return-void
.end method

.method public setMax(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 68
    :cond_0
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mDuration:I

    return-void
.end method

.method public setOnProgressChangeListener(Lcom/kantv/ui/view/CircularProgressBar$OnProgressChangeListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mOnChangeListener:Lcom/kantv/ui/view/CircularProgressBar$OnProgressChangeListener;

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mPrimaryColor:I

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 84
    iget v0, p0, Lcom/kantv/ui/view/CircularProgressBar;->mDuration:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 87
    :cond_0
    iput p1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mProgress:I

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/view/CircularProgressBar;->mOnChangeListener:Lcom/kantv/ui/view/CircularProgressBar$OnProgressChangeListener;

    if-eqz v0, :cond_1

    .line 89
    iget v1, p0, Lcom/kantv/ui/view/CircularProgressBar;->mDuration:I

    invoke-direct {p0}, Lcom/kantv/ui/view/CircularProgressBar;->getRateOfProgress()F

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/kantv/ui/view/CircularProgressBar$OnProgressChangeListener;->onChange(IIF)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircularProgressBar;->invalidate()V

    return-void
.end method
