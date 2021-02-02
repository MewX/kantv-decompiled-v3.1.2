.class public Lcom/kantv/ui/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 48
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 33
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getStatusHeight(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen.xml"

    .line 65
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static snapShotWithStatusBar(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 4

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    invoke-static {p0}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 90
    invoke-static {p0}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v3, 0x0

    .line 92
    invoke-static {v1, v3, v3, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    return-object p0
.end method

.method public static snapShotWithoutStatusBar(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 5

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 112
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 114
    invoke-static {p0}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    .line 115
    invoke-static {p0}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v2

    const/4 v4, 0x0

    .line 117
    invoke-static {v1, v4, v2, v3, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    return-object p0
.end method
