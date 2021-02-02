.class public Lcom/kantv/lib/utils/ColorGradient;
.super Ljava/lang/Object;
.source "ColorGradient.java"


# instance fields
.field private color1:I

.field private color1Values:[I

.field private color2:I

.field private color2Values:[I

.field private count:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/kantv/lib/utils/ColorGradient;->color1:I

    .line 24
    iput p2, p0, Lcom/kantv/lib/utils/ColorGradient;->color2:I

    .line 25
    iput p3, p0, Lcom/kantv/lib/utils/ColorGradient;->count:I

    .line 26
    invoke-direct {p0, p1}, Lcom/kantv/lib/utils/ColorGradient;->toColorValue(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/lib/utils/ColorGradient;->color1Values:[I

    .line 27
    invoke-direct {p0, p2}, Lcom/kantv/lib/utils/ColorGradient;->toColorValue(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/lib/utils/ColorGradient;->color2Values:[I

    return-void
.end method

.method private toColorValue(I)[I
    .locals 3

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [I

    .line 46
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public getColor(I)I
    .locals 9

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    :goto_0
    iget-object v3, p0, Lcom/kantv/lib/utils/ColorGradient;->color2Values:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 39
    iget-object v4, p0, Lcom/kantv/lib/utils/ColorGradient;->color1Values:[I

    aget v5, v4, v2

    int-to-double v5, v5

    aget v3, v3, v2

    aget v4, v4, v2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    iget v7, p0, Lcom/kantv/lib/utils/ColorGradient;->count:I

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v7

    int-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v3

    double-to-int v3, v5

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    aget p1, v0, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public getColor1()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/kantv/lib/utils/ColorGradient;->color1:I

    return v0
.end method

.method public getColor2()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/kantv/lib/utils/ColorGradient;->color2:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/kantv/lib/utils/ColorGradient;->count:I

    return v0
.end method
