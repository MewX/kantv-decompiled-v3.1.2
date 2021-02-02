.class public Lcom/kantv/ui/view/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/CircleImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_CIRCLE_BACKGROUND_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mCircleBackgroundColor:I

.field private final mCircleBackgroundPaint:Landroid/graphics/Paint;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/kantv/ui/view/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 39
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/kantv/ui/view/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 48
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 50
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 55
    iput p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    .line 57
    iput p1, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    .line 77
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/kantv/ui/view/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 55
    iput v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    .line 57
    iput v1, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    .line 87
    sget-object v2, Lcom/kantv/ui/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 89
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    const/4 p2, 0x1

    .line 91
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderOverlay:Z

    const/4 p2, 0x3

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/view/CircleImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private applyColorFilter()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 5

    .line 426
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 427
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 429
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 431
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 432
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 434
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v2

    add-float v4, v3, v2

    add-float/2addr v2, v0

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 347
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 348
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 354
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 355
    sget-object v1, Lcom/kantv/ui/view/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/kantv/ui/view/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 360
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 361
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 362
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 108
    sget-object v0, Lcom/kantv/ui/view/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mReady:Z

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 112
    new-instance v0, Lcom/kantv/ui/view/CircleImageView$OutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/view/CircleImageView$OutlineProvider;-><init>(Lcom/kantv/ui/view/CircleImageView;Lcom/kantv/ui/view/CircleImageView$1;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/view/CircleImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->setup()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mSetupPending:Z

    :cond_1
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kantv/ui/view/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 376
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 380
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 381
    iput-boolean v1, p0, Lcom/kantv/ui/view/CircleImageView;->mSetupPending:Z

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->invalidate()V

    return-void

    .line 394
    :cond_2
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 396
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 397
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 399
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 400
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 401
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 404
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 405
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 406
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapHeight:I

    .line 409
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapWidth:I

    .line 411
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 412
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRadius:F

    .line 414
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 415
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 416
    iget-object v2, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRadius:F

    .line 420
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->applyColorFilter()V

    .line 421
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->updateShaderMatrix()V

    .line 422
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 5

    .line 442
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 444
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 446
    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 449
    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    move v2, v1

    const/4 v1, 0x0

    .line 452
    :goto_0
    iget-object v4, p0, Lcom/kantv/ui/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 453
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 455
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getCircleBackgroundColor()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getCircleBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 123
    sget-object v0, Lcom/kantv/ui/view/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderOverlay:Z

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDisableCircularTransformation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 142
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 151
    :cond_1
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/kantv/ui/view/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/kantv/ui/view/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 163
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 183
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 187
    :cond_0
    iput p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    .line 188
    iget-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 279
    :cond_0
    iput-boolean p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderOverlay:Z

    .line 280
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->setup()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 262
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 266
    :cond_0
    iput p1, p0, Lcom/kantv/ui/view/CircleImageView;->mBorderWidth:I

    .line 267
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->setup()V

    return-void
.end method

.method public setCircleBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 205
    iget v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 209
    :cond_0
    iput p1, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundColor:I

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->invalidate()V

    return-void
.end method

.method public setCircleBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 215
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/CircleImageView;->setCircleBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/kantv/ui/view/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/kantv/ui/view/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 327
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->applyColorFilter()V

    .line 328
    invoke-virtual {p0}, Lcom/kantv/ui/view/CircleImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/kantv/ui/view/CircleImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 292
    :cond_0
    iput-boolean p1, p0, Lcom/kantv/ui/view/CircleImageView;->mDisableCircularTransformation:Z

    .line 293
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/CircleImageView;->setCircleBackgroundColor(I)V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/CircleImageView;->setCircleBackgroundColorResource(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 310
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 316
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 317
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 169
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 175
    invoke-direct {p0}, Lcom/kantv/ui/view/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 128
    sget-object v0, Lcom/kantv/ui/view/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
