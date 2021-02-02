.class public Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 7

    .line 249
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 255
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getActionBarHeight(Landroid/app/Activity;)I
    .locals 4

    .line 100
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 266
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 267
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 268
    :cond_1
    instance-of v1, p0, Landroid/support/v7/widget/TintContextWrapper;

    if-eqz v1, :cond_2

    .line 269
    check-cast p0, Landroid/support/v7/widget/TintContextWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    .line 270
    :cond_2
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3

    .line 271
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 182
    :cond_0
    instance-of v1, p0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 183
    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    return-object p0

    .line 184
    :cond_1
    instance-of v1, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 185
    check-cast p0, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getCurrentScreenLand(Landroid/app/Activity;)Z
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 228
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 229
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 230
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 215
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 216
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 217
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getTextSpeed(J)Ljava/lang/String;
    .locals 6

    const-string v0, " KB/s"

    const-wide/16 v1, 0x400

    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-ltz v5, :cond_0

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v5, p0, v1

    if-ltz v5, :cond_1

    cmp-long v5, p0, v3

    if-gez v5, :cond_1

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    cmp-long v0, p0, v3

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x40000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " MB/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static hideNavKey(Landroid/content/Context;)V
    .locals 2

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 156
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0xa02

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 162
    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public static hideSupportActionBar(Landroid/content/Context;ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 110
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_0
    if-eqz p2, :cond_2

    .line 120
    instance-of p1, p0, Landroid/support/v4/app/FragmentActivity;

    const/16 p2, 0x400

    if-eqz p1, :cond_1

    .line 121
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 122
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p2, p2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p2, p2}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 66
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 67
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 68
    :cond_1
    instance-of v1, p0, Landroid/support/v7/widget/TintContextWrapper;

    if-eqz v1, :cond_2

    .line 69
    check-cast p0, Landroid/support/v7/widget/TintContextWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    .line 70
    :cond_2
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3

    .line 71
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static showNavKey(Landroid/content/Context;I)V
    .locals 0

    .line 170
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static showSupportActionBar(Landroid/content/Context;ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 138
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->show()V

    :cond_0
    if-eqz p2, :cond_2

    .line 144
    instance-of p1, p0, Landroid/support/v4/app/FragmentActivity;

    const/16 p2, 0x400

    if-eqz p1, :cond_1

    .line 145
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static stringForTime(I)Ljava/lang/String;
    .locals 7

    if-lez p0, :cond_2

    const v0, 0x5265c00

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    div-int/lit16 p0, p0, 0x3e8

    .line 36
    rem-int/lit8 v0, p0, 0x3c

    .line 37
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 38
    div-int/lit16 p0, p0, 0xe10

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lez p0, :cond_1

    const/4 v6, 0x3

    .line 42
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v5

    const-string p0, "%d:%02d:%02d"

    invoke-virtual {v3, p0, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_1
    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    const-string v0, "%02d:%02d"

    invoke-virtual {v3, v0, p0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "00:00"

    return-object p0
.end method
