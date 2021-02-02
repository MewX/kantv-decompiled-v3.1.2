.class public Lcom/kantv/common/view/LoadingView;
.super Landroid/view/View;
.source "LoadingView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingView"


# instance fields
.field private allSize:[I

.field private isIncrease:[Z

.field private length:[I

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private maxLen:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/kantv/common/view/LoadingView;->maxLen:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x5

    .line 27
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->allSize:[I

    const/16 p1, 0xc

    .line 28
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    .line 29
    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->isIncrease:[Z

    .line 32
    new-instance p1, Lcom/kantv/common/view/LoadingView$1;

    invoke-direct {p1, p0}, Lcom/kantv/common/view/LoadingView$1;-><init>(Lcom/kantv/common/view/LoadingView;)V

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/kantv/common/view/LoadingView;->maxLen:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x5

    .line 27
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->allSize:[I

    const/16 p1, 0xc

    .line 28
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    .line 29
    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->isIncrease:[Z

    .line 32
    new-instance p1, Lcom/kantv/common/view/LoadingView$1;

    invoke-direct {p1, p0}, Lcom/kantv/common/view/LoadingView$1;-><init>(Lcom/kantv/common/view/LoadingView;)V

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/kantv/common/view/LoadingView;->maxLen:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x5

    .line 27
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->allSize:[I

    const/16 p1, 0xc

    .line 28
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    .line 29
    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->isIncrease:[Z

    .line 32
    new-instance p1, Lcom/kantv/common/view/LoadingView$1;

    invoke-direct {p1, p0}, Lcom/kantv/common/view/LoadingView$1;-><init>(Lcom/kantv/common/view/LoadingView;)V

    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-direct {p0}, Lcom/kantv/common/view/LoadingView;->initPaint()V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/kantv/common/view/LoadingView;)[I
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    return-object p0
.end method

.method static synthetic access$002(Lcom/kantv/common/view/LoadingView;[I)[I
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    return-object p1
.end method

.method static synthetic access$100(Lcom/kantv/common/view/LoadingView;)[Z
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kantv/common/view/LoadingView;->isIncrease:[Z

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/common/view/LoadingView;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kantv/common/view/LoadingView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initLength()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 72
    iget-object v3, p0, Lcom/kantv/common/view/LoadingView;->allSize:[I

    iget v4, p0, Lcom/kantv/common/view/LoadingView;->maxLen:I

    add-int/lit8 v5, v1, 0x1

    mul-int v4, v4, v5

    div-int/2addr v4, v2

    aput v4, v3, v1

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_3

    const/4 v2, 0x4

    if-le v0, v2, :cond_2

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 77
    :goto_3
    iget-object v2, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    add-int/lit8 v3, v1, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadingView"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#1F93EA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 85
    iget v2, p0, Lcom/kantv/common/view/LoadingView;->viewWidth:I

    div-int/lit8 v3, v2, 0xc

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    int-to-float v6, v3

    iget v3, p0, Lcom/kantv/common/view/LoadingView;->viewHeight:I

    iget-object v5, p0, Lcom/kantv/common/view/LoadingView;->allSize:[I

    iget-object v7, p0, Lcom/kantv/common/view/LoadingView;->length:[I

    aget v8, v7, v0

    aget v8, v5, v8

    sub-int v8, v3, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    div-int/2addr v2, v1

    mul-int v2, v2, v4

    int-to-float v1, v2

    aget v2, v7, v0

    aget v2, v5, v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    aget v0, v7, v0

    aget v0, v5, v0

    add-int/2addr v3, v0

    int-to-float v9, v3

    iget-object v10, p0, Lcom/kantv/common/view/LoadingView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v8

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v4

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 v0, 0x15e

    .line 62
    iput v0, p0, Lcom/kantv/common/view/LoadingView;->viewWidth:I

    const/16 v0, 0xc8

    .line 63
    iput v0, p0, Lcom/kantv/common/view/LoadingView;->viewHeight:I

    .line 64
    iget v0, p0, Lcom/kantv/common/view/LoadingView;->viewHeight:I

    add-int/lit8 v0, v0, -0x32

    iput v0, p0, Lcom/kantv/common/view/LoadingView;->maxLen:I

    .line 65
    invoke-direct {p0}, Lcom/kantv/common/view/LoadingView;->initLength()V

    .line 66
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public startLoading()V
    .locals 6

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 94
    new-instance v1, Lcom/kantv/common/view/LoadingView$2;

    invoke-direct {v1, p0}, Lcom/kantv/common/view/LoadingView$2;-><init>(Lcom/kantv/common/view/LoadingView;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    .line 116
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
