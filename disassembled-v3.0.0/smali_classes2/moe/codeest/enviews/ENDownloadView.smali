.class public Lmoe/codeest/enviews/ENDownloadView;
.super Landroid/view/View;
.source "ENDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;,
        Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;
    }
.end annotation


# static fields
.field private static final DEFAULT_BG_LINE_COLOR:I = -0xc5c0bb

.field private static final DEFAULT_BG_LINE_WIDTH:I = 0x9

.field private static final DEFAULT_DOWNLOAD_TIME:I = 0xfa0

.field private static final DEFAULT_DOWNLOAD_UNIT:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field private static final DEFAULT_LINE_COLOR:I = -0x1

.field private static final DEFAULT_LINE_WIDTH:I = 0x9

.field private static final DEFAULT_RIPPLE_SPEED:I = 0x2

.field private static final DEFAULT_STATE:I = 0x0

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xe

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_END:I = 0x2

.field public static final STATE_PRE:I = 0x0

.field public static final STATE_RESET:I = 0x3


# instance fields
.field private mBaseLength:F

.field private mBaseRippleLength:F

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleRadius:F

.field private mClipRectF:Landroid/graphics/RectF;

.field private mCurrentRippleX:F

.field private mCurrentSize:D

.field private mCurrentState:I

.field private mDownloadTime:I

.field private mFraction:F

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTotalSize:D

.field private mUnit:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:F

.field private onDownloadStateListener:Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->B:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    sput-object v0, Lmoe/codeest/enviews/ENDownloadView;->DEFAULT_DOWNLOAD_UNIT:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    sget-object v0, Lcom/shuyu/gsyvideoplayer/R$styleable;->download:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 103
    sget p2, Lcom/shuyu/gsyvideoplayer/R$styleable;->download_download_line_color:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 104
    sget v1, Lcom/shuyu/gsyvideoplayer/R$styleable;->download_download_bg_line_color:I

    const v2, -0xc5c0bb

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 105
    sget v2, Lcom/shuyu/gsyvideoplayer/R$styleable;->download_download_text_color:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 106
    sget v2, Lcom/shuyu/gsyvideoplayer/R$styleable;->download_download_line_width:I

    const/16 v3, 0x9

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 107
    sget v4, Lcom/shuyu/gsyvideoplayer/R$styleable;->download_download_bg_line_width:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 108
    sget v4, Lcom/shuyu/gsyvideoplayer/R$styleable;->download_download_text_size:I

    const/16 v5, 0xe

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    new-instance p1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    .line 112
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    .line 118
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 120
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    int-to-float p2, v3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    .line 124
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p2, v4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 128
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    .line 130
    iput v4, p0, Lmoe/codeest/enviews/ENDownloadView;->mTextSize:I

    const/4 p1, 0x0

    .line 131
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentState:I

    .line 132
    sget-object p1, Lmoe/codeest/enviews/ENDownloadView;->DEFAULT_DOWNLOAD_UNIT:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mUnit:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/16 p1, 0xfa0

    .line 133
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mDownloadTime:I

    return-void
.end method

.method static synthetic access$000(Lmoe/codeest/enviews/ENDownloadView;)F
    .locals 0

    .line 24
    iget p0, p0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    return p0
.end method

.method static synthetic access$002(Lmoe/codeest/enviews/ENDownloadView;F)F
    .locals 0

    .line 24
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    return p1
.end method

.method static synthetic access$102(Lmoe/codeest/enviews/ENDownloadView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$200(Lmoe/codeest/enviews/ENDownloadView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmoe/codeest/enviews/ENDownloadView;->downloadAnim()V

    return-void
.end method

.method static synthetic access$300(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;
    .locals 0

    .line 24
    iget-object p0, p0, Lmoe/codeest/enviews/ENDownloadView;->mUnit:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    return-object p0
.end method

.method static synthetic access$400(Lmoe/codeest/enviews/ENDownloadView;)D
    .locals 2

    .line 24
    iget-wide v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mTotalSize:D

    return-wide v0
.end method

.method static synthetic access$502(Lmoe/codeest/enviews/ENDownloadView;D)D
    .locals 0

    .line 24
    iput-wide p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentSize:D

    return-wide p1
.end method

.method static synthetic access$600(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lmoe/codeest/enviews/ENDownloadView;->onDownloadStateListener:Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;

    return-object p0
.end method

.method private downloadAnim()V
    .locals 3

    .line 268
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 270
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 271
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 275
    :cond_1
    iget v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 278
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 279
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lmoe/codeest/enviews/ENDownloadView;->mDownloadTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$3;

    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$3;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 290
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$4;

    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$4;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private endAnim()V
    .locals 3

    .line 301
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 303
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 304
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    .line 308
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 309
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$5;

    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$5;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$6;

    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$6;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private getUnitStr(Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;)Ljava/lang/String;
    .locals 2

    .line 344
    sget-object v0, Lmoe/codeest/enviews/ENDownloadView$7;->$SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit:[I

    invoke-virtual {p1}, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    const-string v1, " b"

    if-eq p1, v0, :cond_0

    :cond_0
    return-object v1

    :cond_1
    const-string p1, " kb"

    return-object p1

    :cond_2
    const-string p1, " mb"

    return-object p1

    :cond_3
    const-string p1, " gb"

    return-object p1
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .line 364
    iget v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 153
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentState:I

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f99999a    # 1.2f

    const/high16 v10, 0x40000000    # 2.0f

    const v11, 0x400ccccd    # 2.2f

    const v12, 0x3fa66666    # 1.3f

    const v13, 0x3e4ccccd    # 0.2f

    if-eqz v1, :cond_8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 216
    :cond_0
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    sub-float v3, v1, v2

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    mul-float v5, v2, v8

    sub-float/2addr v1, v5

    mul-float v5, v2, v8

    iget v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    mul-float v5, v5, v6

    add-float/2addr v5, v1

    const v10, 0x3f266666    # 0.65f

    mul-float v1, v2, v10

    add-float/2addr v1, v4

    const v11, 0x3eb33333    # 0.35f

    mul-float v2, v2, v11

    mul-float v2, v2, v6

    add-float v6, v1, v2

    iget-object v14, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v8

    sub-float v3, v1, v3

    mul-float v4, v2, v8

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    mul-float v6, v2, v10

    add-float/2addr v6, v4

    mul-float v14, v2, v11

    mul-float v14, v14, v5

    add-float/2addr v6, v14

    mul-float v9, v9, v2

    add-float/2addr v1, v9

    mul-float v13, v13, v2

    mul-float v13, v13, v5

    sub-float v9, v1, v13

    mul-float v1, v2, v12

    sub-float/2addr v4, v1

    mul-float v2, v2, v12

    mul-float v2, v2, v5

    add-float v5, v4, v2

    iget-object v12, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v6

    move v4, v9

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 221
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v8

    sub-float v3, v1, v3

    mul-float v4, v2, v8

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    mul-float v6, v2, v10

    add-float/2addr v6, v4

    mul-float v11, v11, v2

    mul-float v11, v11, v5

    add-float/2addr v6, v11

    mul-float v9, v2, v8

    sub-float/2addr v1, v9

    mul-float v8, v8, v2

    mul-float v8, v8, v5

    add-float/2addr v8, v1

    mul-float v10, v10, v2

    add-float/2addr v4, v10

    const/high16 v1, 0x40100000    # 2.25f

    mul-float v2, v2, v1

    mul-float v2, v2, v5

    sub-float v5, v4, v2

    iget-object v9, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v6

    move v4, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 201
    :cond_1
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 202
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v3, v5

    if-gtz v10, :cond_2

    .line 203
    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mTextSize:I

    int-to-float v5, v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    mul-float v4, v4, v1

    sub-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    :goto_0
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mUnit:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    sget-object v3, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    if-eq v1, v3, :cond_3

    iget-wide v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentSize:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentSize:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v14

    const-string v3, "%.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mUnit:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    invoke-direct {v0, v2}, Lmoe/codeest/enviews/ENDownloadView;->getUnitStr(Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    const v4, 0x3fb33333    # 1.4f

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    :cond_3
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v11

    sub-float v3, v1, v3

    mul-float v9, v9, v2

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    mul-float v9, v9, v4

    add-float/2addr v3, v9

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    mul-float v6, v2, v8

    sub-float v6, v1, v6

    mul-float v2, v2, v8

    mul-float v2, v2, v4

    mul-float v2, v2, v12

    add-float v9, v5, v2

    iget-object v10, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 212
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v8

    sub-float v3, v1, v3

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    mul-float v8, v8, v2

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    mul-float v8, v8, v5

    mul-float v8, v8, v12

    add-float v6, v4, v8

    mul-float v11, v11, v2

    add-float/2addr v1, v11

    mul-float v8, v2, v5

    sub-float v8, v1, v8

    mul-float v2, v2, v5

    mul-float v2, v2, v12

    sub-float v5, v4, v2

    iget-object v9, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v6

    move v4, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 178
    :cond_4
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    float-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_5

    .line 179
    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mTextSize:I

    int-to-float v3, v3

    div-float/2addr v3, v13

    mul-float v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    :cond_5
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mRectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const v1, 0x43b3feb8    # 359.99f

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    mul-float v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 183
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 184
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentRippleX:F

    add-float/2addr v1, v10

    iput v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentRippleX:F

    .line 185
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentRippleX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseRippleLength:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v4, v4, v3

    sub-float v4, v2, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    .line 186
    iput v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentRippleX:F

    .line 187
    :cond_6
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentRippleX:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    const/4 v1, 0x4

    if-ge v14, v1, :cond_7

    .line 189
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseRippleLength:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    sub-float v3, v8, v3

    neg-float v3, v3

    mul-float v3, v3, v2

    mul-float v4, v2, v10

    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 190
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseRippleLength:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    sub-float v3, v8, v3

    mul-float v3, v3, v2

    mul-float v4, v2, v10

    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 192
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 194
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    iget-object v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mUnit:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    sget-object v2, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    if-eq v1, v2, :cond_c

    iget-wide v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentSize:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    goto/16 :goto_2

    .line 156
    :cond_8
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    const v14, 0x3ecccccd    # 0.4f

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_9

    .line 157
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 158
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    sub-float v2, v4, v1

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    add-float v5, v3, v1

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    add-float v3, v5, v1

    add-float v4, v2, v1

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    add-float v3, v1, v2

    mul-float v5, v2, v12

    div-float/2addr v5, v14

    iget v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    mul-float v5, v5, v6

    sub-float/2addr v3, v5

    const v5, 0x3fcccccd    # 1.6f

    mul-float v5, v5, v2

    sub-float/2addr v1, v5

    mul-float v2, v2, v12

    div-float/2addr v2, v14

    mul-float v2, v2, v6

    add-float v5, v1, v2

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_9
    float-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    const v6, 0x3e99999a    # 0.3f

    cmpg-double v12, v2, v4

    if-gtz v12, :cond_a

    .line 163
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v3, v6

    sub-float/2addr v2, v3

    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    sub-float v2, v4, v1

    mul-float v3, v1, v9

    div-float/2addr v3, v13

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    sub-float v6, v5, v14

    mul-float v3, v3, v6

    sub-float/2addr v2, v3

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    add-float v6, v3, v1

    div-float/2addr v1, v13

    sub-float/2addr v5, v14

    mul-float v1, v1, v5

    sub-float v5, v6, v1

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    add-float v3, v5, v1

    div-float v4, v1, v13

    iget v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    sub-float v8, v6, v14

    mul-float v4, v4, v8

    sub-float/2addr v3, v4

    add-float v4, v2, v1

    mul-float v1, v1, v9

    div-float/2addr v1, v13

    sub-float/2addr v6, v14

    mul-float v1, v1, v6

    add-float/2addr v4, v1

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_a
    cmpg-float v1, v1, v8

    if-gtz v1, :cond_b

    .line 168
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v4, v3, v6

    sub-float/2addr v2, v4

    iget v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    mul-float v3, v3, v6

    sub-float/2addr v4, v3

    div-float/2addr v4, v14

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    const v5, 0x3f19999a    # 0.6f

    sub-float/2addr v3, v5

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 170
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v11

    sub-float v3, v1, v3

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    mul-float v2, v2, v11

    add-float v4, v1, v2

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 172
    :cond_b
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    iget-object v4, v0, Lmoe/codeest/enviews/ENDownloadView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    sub-float/2addr v2, v3

    iget v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v3, v3, v4

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    sub-float/2addr v5, v8

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    iget-object v3, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    iget v1, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget v2, v0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    mul-float v3, v2, v11

    sub-float v3, v1, v3

    iget v5, v0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    mul-float v2, v2, v11

    add-float v4, v1, v2

    iget-object v6, v0, Lmoe/codeest/enviews/ENDownloadView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    .line 139
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mWidth:F

    int-to-float p1, p2

    .line 140
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mHeight:F

    .line 141
    iget p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float p3, p1, p2

    iput p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    .line 142
    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mHeight:F

    div-float/2addr p3, p2

    iput p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x41400000    # 12.0f

    div-float/2addr p1, p2

    .line 143
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    .line 144
    iget p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mCircleRadius:F

    const/high16 p3, 0x40400000    # 3.0f

    div-float p3, p1, p3

    iput p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    .line 145
    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mBaseLength:F

    const p4, 0x408ccccd    # 4.4f

    mul-float p3, p3, p4

    div-float/2addr p3, p2

    iput p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mBaseRippleLength:F

    .line 146
    iget p2, p0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mBaseRippleLength:F

    const/high16 p4, 0x41200000    # 10.0f

    mul-float p3, p3, p4

    sub-float p3, p2, p3

    iput p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentRippleX:F

    .line 147
    new-instance p3, Landroid/graphics/RectF;

    sub-float p4, p2, p1

    iget v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mCenterY:F

    sub-float v1, v0, p1

    add-float/2addr p2, p1

    add-float/2addr v0, p1

    invoke-direct {p3, p4, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mRectF:Landroid/graphics/RectF;

    .line 148
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lmoe/codeest/enviews/ENDownloadView;->mCenterX:F

    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mBaseRippleLength:F

    const/high16 p4, 0x40c00000    # 6.0f

    mul-float v0, p3, p4

    sub-float v0, p2, v0

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    iget p3, p0, Lmoe/codeest/enviews/ENDownloadView;->mHeight:F

    const/4 p4, 0x0

    invoke-direct {p1, v0, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mClipRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public release()V
    .locals 1

    .line 229
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 231
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 232
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mFraction:F

    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentState:I

    .line 334
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 336
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 337
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public setDownloadConfig(IDLmoe/codeest/enviews/ENDownloadView$DownloadUnit;)V
    .locals 0

    .line 358
    iput p1, p0, Lmoe/codeest/enviews/ENDownloadView;->mDownloadTime:I

    .line 359
    iput-wide p2, p0, Lmoe/codeest/enviews/ENDownloadView;->mTotalSize:D

    .line 360
    iput-object p4, p0, Lmoe/codeest/enviews/ENDownloadView;->mUnit:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    return-void
.end method

.method public setOnDownloadStateListener(Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView;->onDownloadStateListener:Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 239
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 241
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 242
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x1

    .line 246
    iput v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mCurrentState:I

    const/4 v0, 0x2

    .line 247
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$1;

    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$1;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmoe/codeest/enviews/ENDownloadView$2;

    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENDownloadView$2;-><init>(Lmoe/codeest/enviews/ENDownloadView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method
