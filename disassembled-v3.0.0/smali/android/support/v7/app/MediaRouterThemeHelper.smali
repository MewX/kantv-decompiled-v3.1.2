.class final Landroid/support/v7/app/MediaRouterThemeHelper;
.super Ljava/lang/Object;
.source "MediaRouterThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouterThemeHelper$ControllerColorType;
    }
.end annotation


# static fields
.field static final COLOR_DARK_ON_LIGHT_BACKGROUND:I = -0x22000000

.field static final COLOR_WHITE_ON_DARK_BACKGROUND:I = -0x1

.field private static final MIN_CONTRAST:F = 3.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createThemeForDialog(Landroid/content/Context;I)I
    .locals 1

    .line 70
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getStyledRouterThemeId(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method static createThemedContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1

    .line 59
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 60
    invoke-static {p0, p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getStyledRouterThemeId(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 61
    sget p1, Landroid/support/v7/mediarouter/R$attr;->mediaRouteTheme:I

    invoke-static {p0, p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p1, v0, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object p1
.end method

.method public static getAlertDialogResolvedTheme(Landroid/content/Context;I)I
    .locals 2

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    return p1

    .line 144
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 147
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static getButtonTextColor(Landroid/content/Context;)I
    .locals 7

    .line 96
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    const v2, 0x1010031

    .line 98
    invoke-static {p0, v1, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    .line 100
    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 102
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-static {p0, v1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static getControllerColor(Landroid/content/Context;I)I
    .locals 4

    .line 86
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-static {p0, p1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result p0

    const/4 p1, -0x1

    .line 88
    invoke-static {p1, p0}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    return p1

    :cond_0
    const/high16 p0, -0x22000000

    return p0
.end method

.method public static getDisabledAlpha(Landroid/content/Context;)F
    .locals 3

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010033

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method private static getStyledRouterThemeId(Landroid/content/Context;I)I
    .locals 2

    .line 178
    invoke-static {p0}, Landroid/support/v7/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, -0x22000000

    if-eqz v0, :cond_1

    .line 179
    invoke-static {p0, p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 180
    sget p0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light:I

    goto :goto_0

    .line 182
    :cond_0
    sget p0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_Light_DarkControlPanel:I

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 186
    sget p0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter_LightControlPanel:I

    goto :goto_0

    .line 188
    :cond_2
    sget p0, Landroid/support/v7/mediarouter/R$style;->Theme_MediaRouter:I

    :goto_0
    return p0
.end method

.method private static getThemeColor(Landroid/content/Context;II)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 160
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 161
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 163
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    return v1

    .line 168
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 170
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 173
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static getThemeResource(Landroid/content/Context;I)I
    .locals 2

    .line 75
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLightTheme(Landroid/content/Context;)Z
    .locals 3

    .line 152
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static setMediaControlsBackgroundColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    .line 109
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 111
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v1, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    if-eqz p3, :cond_0

    .line 113
    invoke-static {p0, v1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result p0

    const/high16 p3, -0x22000000

    if-ne p0, p3, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    move p0, v0

    move v0, v2

    .line 119
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result p0

    .line 130
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 134
    invoke-static {p0, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 136
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setColor(I)V

    return-void
.end method
