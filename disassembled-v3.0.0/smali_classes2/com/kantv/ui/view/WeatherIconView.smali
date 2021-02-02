.class public Lcom/kantv/ui/view/WeatherIconView;
.super Landroid/widget/TextView;
.source "WeatherIconView.java"


# static fields
.field private static final DEFAULT_WEATHER_ICON_COLOR:I = -0x1000000

.field private static final DEFAULT_WEATHER_ICON_SIZE:I = 0x64

.field private static final PATH_TO_WEATHER_FONT:Ljava/lang/String; = "fonts/weather.ttf"


# instance fields
.field private weatherFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initIconColor(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->setTextColor(I)V

    return-void
.end method

.method private initIconResource(Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initIconSize(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x64

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-float p1, p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->setTextSize(F)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/kantv/ui/view/WeatherIconView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/weather.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/view/WeatherIconView;->weatherFont:Landroid/graphics/Typeface;

    .line 48
    iget-object p1, p0, Lcom/kantv/ui/view/WeatherIconView;->weatherFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/kantv/ui/view/WeatherIconView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/kantv/ui/R$styleable;->WeatherIconView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->initIconResource(Landroid/content/res/TypedArray;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->initIconSize(Landroid/content/res/TypedArray;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->initIconColor(Landroid/content/res/TypedArray;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setIconColor(I)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->setTextColor(I)V

    return-void
.end method

.method public setIconResource(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    int-to-float p1, p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/WeatherIconView;->setTextSize(F)V

    return-void
.end method
