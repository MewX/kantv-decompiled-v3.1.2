.class public Lcom/kantv/ui/view/ShapedImageView;
.super Landroid/widget/ImageView;
.source "ShapedImageView.java"


# static fields
.field private static final SHAPE_MODE_CIRCLE:I = 0x2

.field private static final SHAPE_MODE_ROUND_RECT:I = 0x1


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mShape:Landroid/graphics/drawable/shapes/Shape;

.field private mShapeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShapeMode:I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mRadius:F

    const/4 p1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/ShapedImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShapeMode:I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mRadius:F

    .line 39
    invoke-direct {p0, p2}, Lcom/kantv/ui/view/ShapedImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShapeMode:I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mRadius:F

    .line 44
    invoke-direct {p0, p2}, Lcom/kantv/ui/view/ShapedImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/view/ShapedImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/kantv/ui/view/ShapedImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/R$styleable;->ShapedImageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/kantv/ui/view/ShapedImageView;->mShapeMode:I

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/kantv/ui/view/ShapedImageView;->mRadius:F

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 60
    iget-object p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget v1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShapeMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v1, :cond_1

    .line 94
    iget-object v2, p0, Lcom/kantv/ui/view/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 66
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_3

    .line 68
    iget p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShapeMode:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/view/ShapedImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/kantv/ui/view/ShapedImageView;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 73
    iput p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mRadius:F

    .line 76
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-nez p1, :cond_2

    const/16 p1, 0x8

    .line 77
    new-array p1, p1, [F

    .line 78
    iget p2, p0, Lcom/kantv/ui/view/ShapedImageView;->mRadius:F

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([FF)V

    .line 79
    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object p2, p0, Lcom/kantv/ui/view/ShapedImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/view/ShapedImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0}, Lcom/kantv/ui/view/ShapedImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/kantv/ui/view/ShapedImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    :cond_3
    return-void
.end method
