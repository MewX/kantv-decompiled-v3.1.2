.class public Lcom/androidquery/callback/BitmapAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "BitmapAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/callback/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I = 0x14

.field private static BIG_PIXELS:I = 0x27100

.field private static BIG_TPIXELS:I = 0xf4240

.field private static DELAY_WRITE:Z = false

.field private static final FADE_DUR:I = 0x12c

.field private static SMALL_MAX:I = 0x14

.field private static SMALL_PIXELS:I = 0x9c4

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dummy:Landroid/graphics/Bitmap;

.field private static empty:Landroid/graphics/Bitmap;

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Landroid/graphics/Bitmap;

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Landroid/graphics/Bitmap;

.field private ratio:F

.field private rotate:Z

.field private round:I

.field private targetDim:Z

.field private targetWidth:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 536
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 541
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 93
    iput v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 102
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 1028
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 1032
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1035
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object p2, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1039
    :cond_0
    sget-object p2, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    .line 943
    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    iget-boolean v6, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    iget v8, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    iget-object v9, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    iget v12, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    iget v0, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p6

    move-object/from16 v5, p12

    move/from16 v6, p15

    if-eqz v3, :cond_0

    .line 961
    invoke-static {p3, p6, v6}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    const v0, 0x40ff0001

    .line 965
    invoke-virtual {p2, v0, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 966
    invoke-static {v5, p3, v0}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v8, 0x4

    move-object v0, p2

    move-object v1, v7

    move-object/from16 v2, p8

    move/from16 v3, p7

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move v7, v8

    .line 967
    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    goto/16 :goto_1

    .line 969
    :cond_1
    new-instance v7, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v7}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 970
    invoke-virtual {v7, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move v2, p5

    invoke-virtual {v1, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v2, p9

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v2, p10

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move-object/from16 v2, p13

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v2, p14

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, v6}, Lcom/androidquery/callback/BitmapAjaxCallback;->round(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v2, p17

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p16, :cond_2

    .line 972
    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    .line 975
    invoke-virtual {v7, p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    move-object v0, p1

    .line 977
    invoke-virtual {v7, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .locals 6

    .line 441
    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget-boolean v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    if-eqz p3, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x40ff0001

    .line 580
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 582
    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 585
    :cond_1
    invoke-direct {p1, p2, p3, p4, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 590
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static clearCache()V
    .locals 1

    const/4 v0, 0x0

    .line 668
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 669
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 670
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    return-void
.end method

.method protected static clearTasks()V
    .locals 1

    .line 674
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_0

    .line 252
    invoke-static {p0, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 256
    array-length v0, p1

    invoke-static {p1, p3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 260
    iget-boolean p2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p2, :cond_2

    const-string p2, "decode image failed"

    .line 261
    invoke-static {p2, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    .line 272
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 276
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v0, 0x0

    .line 282
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 284
    invoke-static {v2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 287
    invoke-static {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_1
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 291
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    :goto_1
    return-object p1

    :goto_2
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static fadeIn(II)Z
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 817
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    const/16 p2, 0x8

    .line 819
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 p2, 0x4

    .line 821
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-object p1
.end method

.method private static getBCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 678
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 681
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 538
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 504
    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 508
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 511
    invoke-virtual {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2
.end method

.method private static getICache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 693
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 696
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    const-string v0, "#"

    if-lez p1, :cond_0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-lez p2, :cond_1

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 522
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 523
    invoke-static {v0, v1, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 529
    invoke-static {v0, v1, v1, v2, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    :cond_0
    return-object v2
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 724
    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 369
    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-lez p2, :cond_2

    .line 391
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 392
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 394
    invoke-static {p0, p1, v1, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 396
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez p3, :cond_1

    .line 397
    iget p3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 398
    :cond_1
    invoke-static {v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->sampleSize(II)I

    move-result p2

    .line 400
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 401
    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    move-object p3, v0

    .line 407
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p3, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 409
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 410
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :goto_1
    if-lez p4, :cond_3

    .line 414
    invoke-static {v0, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static getRotateMatrix(I)Landroid/graphics/Matrix;
    .locals 6

    .line 335
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 356
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 352
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 348
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 349
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 344
    :pswitch_4
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 345
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 341
    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 338
    :pswitch_6
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 1052
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1053
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1056
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1057
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1058
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p1, p1

    const/4 v5, 0x1

    .line 1061
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1062
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    .line 1063
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1064
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1066
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1067
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static getSCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 689
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    return-object v0
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .locals 1

    .line 713
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 870
    new-instance v0, Lcom/androidquery/util/RatioDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    goto :goto_0

    .line 872
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0
.end method

.method private static memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 729
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 731
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object p1

    .line 732
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 735
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object p1

    .line 736
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 740
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object p1

    .line 741
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 745
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getLastStatus()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_1

    .line 746
    sput-object p2, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method private static memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 773
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    if-eqz p4, :cond_1

    .line 778
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object p4

    goto :goto_0

    .line 779
    :cond_1
    sget p4, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    if-gt v0, p4, :cond_2

    .line 780
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object p4

    goto :goto_0

    .line 782
    :cond_2
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object p4

    :goto_0
    if-gtz p1, :cond_4

    if-lez p2, :cond_3

    goto :goto_1

    .line 796
    :cond_3
    invoke-interface {p4, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 787
    :cond_4
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-interface {p4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 792
    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const v0, 0x40ff0001

    .line 830
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 832
    :cond_0
    invoke-virtual {p2, v0, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 838
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 309
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 310
    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 313
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    :goto_0
    if-lez v0, :cond_1

    .line 318
    invoke-static {v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRotateMatrix(I)Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "before"

    invoke-static {v2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "after"

    invoke-static {v1, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq p1, p0, :cond_2

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_1
    move-object p0, p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method private static sampleSize(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, p1, 0x2

    if-ge p0, v2, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    div-int/lit8 p0, p0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 8

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 850
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 855
    iget p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget p4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    invoke-static {p2, p3, p1, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 859
    :cond_1
    iget-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz p1, :cond_2

    .line 860
    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    iget v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v6, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    iget-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p1}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    :cond_2
    return-void
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .locals 0

    .line 881
    invoke-static {p0, p1, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 883
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 887
    :cond_0
    invoke-static {p0, p1, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 890
    invoke-static {p4, p7}, Lcom/androidquery/callback/BitmapAjaxCallback;->fadeIn(II)Z

    move-result p7

    if-eqz p7, :cond_2

    if-nez p2, :cond_1

    .line 892
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p2, p4, p5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 893
    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p4, 0x12c

    .line 894
    invoke-virtual {p2, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 897
    :cond_1
    invoke-static {p0, p2, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p4, 0x2

    .line 898
    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p1, p4, p2

    .line 899
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1, p4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 900
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 p2, 0x12c

    .line 901
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    .line 905
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    goto :goto_1

    :cond_3
    :goto_0
    move-object p2, p3

    .line 908
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_4

    .line 911
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 912
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 914
    :cond_4
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method

.method public static setCacheLimit(I)V
    .locals 0

    .line 614
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 615
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setDelayWrite(Z)V
    .locals 0

    .line 627
    sput-boolean p0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    return-void
.end method

.method public static setIconCacheLimit(I)V
    .locals 0

    .line 604
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 605
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .locals 0

    .line 660
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 661
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setPixelLimit(I)V
    .locals 0

    .line 638
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 639
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method

.method public static setSmallPixel(I)V
    .locals 0

    .line 650
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 651
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    return-void
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    return-object p1

    .line 452
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 224
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 182
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .locals 3

    .line 988
    invoke-virtual {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 990
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 993
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    const/4 v2, 0x0

    .line 994
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void

    .line 998
    :cond_0
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x40ff0001

    .line 1000
    invoke-virtual {v0, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1001
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 1002
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, p1, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void

    .line 1007
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1009
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1010
    invoke-direct {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1011
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 1013
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 1014
    invoke-direct {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 9

    .line 548
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 549
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0, v4}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 553
    invoke-direct/range {v1 .. v6}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 560
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    .line 561
    invoke-virtual {v0, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 562
    iput-object p3, v4, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    .line 563
    invoke-direct/range {v3 .. v8}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    const/4 p4, 0x0

    .line 594
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .line 67
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 171
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    return-object p0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 0

    .line 458
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method protected isStreamingContent()Z
    .locals 1

    .line 1022
    sget-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 702
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 703
    :cond_1
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 806
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 193
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    return-object p0
.end method

.method public rotate(Z)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    return-object p0
.end method

.method public round(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 240
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    return-object p0
.end method

.method protected skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .line 572
    sget-object p2, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .line 67
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0

    .line 125
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 1

    .line 468
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 473
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5

    .line 477
    iget p2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    if-lez p2, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getFallback()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_1
    const/4 v0, -0x2

    if-eq p2, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_4

    .line 482
    iget-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 480
    :cond_3
    :goto_1
    sget-object p1, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 485
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_5

    const/4 p2, 0x1

    .line 486
    iput-boolean p2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    :cond_5
    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
