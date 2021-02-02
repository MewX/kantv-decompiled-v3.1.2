.class public final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;
.super Ljava/lang/Object;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;,
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;,
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CACHE_DURATION_FIVE_DAYS:I = 0x19bfcc00

.field public static final CACHE_DURATION_FOUR_DAYS:I = 0x14997000

.field public static final CACHE_DURATION_INFINITE:I = 0x7fffffff

.field public static final CACHE_DURATION_ONE_DAY:I = 0x5265c00

.field public static final CACHE_DURATION_ONE_WEEK:I = 0x240c8400

.field public static final CACHE_DURATION_SIX_DAYS:I = 0x1ee62800

.field public static final CACHE_DURATION_THREE_DAYS:I = 0xf731400

.field public static final CACHE_DURATION_TWO_DAYS:I = 0xa4cb800

.field private static mAllCache:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mAssetDownloader:Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader; = null

.field private static mContactDownloader:Lcom/koushikdutta/urlimageviewhelper/ContactContentUrlDownloader; = null

.field private static mContentDownloader:Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader; = null

.field private static mDeadCache:Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache; = null

.field private static mDownloaders:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private static mFileDownloader:Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader; = null

.field private static mHasCleaned:Z = false

.field private static mHttpDownloader:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader; = null

.field private static mLiveCache:Lcom/koushikdutta/urlimageviewhelper/DrawableCache; = null

.field static mMetrics:Landroid/util/DisplayMetrics; = null

.field private static mPendingDownloads:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPendingViews:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestPropertiesCallback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback; = null

.field static mResources:Landroid/content/res/Resources; = null

.field private static mUseBitmapScaling:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 681
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

    invoke-direct {v0}, Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mHttpDownloader:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

    .line 682
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;

    invoke-direct {v0}, Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mContentDownloader:Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;

    .line 683
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/ContactContentUrlDownloader;

    invoke-direct {v0}, Lcom/koushikdutta/urlimageviewhelper/ContactContentUrlDownloader;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mContactDownloader:Lcom/koushikdutta/urlimageviewhelper/ContactContentUrlDownloader;

    .line 684
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader;

    invoke-direct {v0}, Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mAssetDownloader:Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader;

    .line 685
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;

    invoke-direct {v0}, Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mFileDownloader:Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    .line 692
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mHttpDownloader:Lcom/koushikdutta/urlimageviewhelper/HttpUrlDownloader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mContactDownloader:Lcom/koushikdutta/urlimageviewhelper/ContactContentUrlDownloader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mContentDownloader:Lcom/koushikdutta/urlimageviewhelper/ContentUrlDownloader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mAssetDownloader:Lcom/koushikdutta/urlimageviewhelper/AssetUrlDownloader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mFileDownloader:Lcom/koushikdutta/urlimageviewhelper/FileUrlDownloader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->getInstance()Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    .line 715
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mAllCache:Ljava/util/HashSet;

    .line 812
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    .line 813
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->loadBitmapFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Lcom/koushikdutta/urlimageviewhelper/DrawableCache;
    .locals 1

    .line 27
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Hashtable;
    .locals 1

    .line 27
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Hashtable;
    .locals 1

    .line 27
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashSet;
    .locals 1

    .line 27
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mAllCache:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700()Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;
    .locals 1

    .line 27
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    return-object v0
.end method

.method private static checkCacheDuration(Ljava/io/File;J)Z
    .locals 4

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    add-long/2addr v2, p1

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

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

.method public static cleanup(Landroid/content/Context;)V
    .locals 2

    const-wide/32 v0, 0x240c8400

    .line 412
    invoke-static {p0, v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->cleanup(Landroid/content/Context;J)V

    return-void
.end method

.method public static cleanup(Landroid/content/Context;J)V
    .locals 9

    .line 381
    sget-boolean v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mHasCleaned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 384
    sput-boolean v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mHasCleaned:Z

    .line 387
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 391
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    const-string v4, ".urlimage"

    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 396
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    add-long/2addr v7, p1

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 398
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method static varargs clog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 30
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 39
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 44
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method static executeTask(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 796
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 797
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 799
    :cond_0
    invoke-static {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTaskHoneycomb(Landroid/os/AsyncTask;)V

    :goto_0
    return-void
.end method

.method private static executeTaskHoneycomb(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 805
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 423
    :cond_0
    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {v1, p0}, Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    .line 427
    :cond_2
    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    if-eqz v1, :cond_3

    .line 428
    invoke-virtual {v1, p0}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 429
    instance-of v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    if-eqz v1, :cond_3

    .line 430
    check-cast p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    invoke-virtual {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static getDownloaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;",
            ">;"
        }
    .end annotation

    .line 688
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFilenameForUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".urlimage"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHeapSize(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    .line 718
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    mul-int/lit16 p0, p0, 0x400

    mul-int/lit16 p0, p0, 0x400

    return p0
.end method

.method public static getPendingDownloads()I
    .locals 1

    .line 809
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public static getRequestPropertiesCallback()Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;
    .locals 1

    .line 706
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mRequestPropertiesCallback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    return-object v0
.end method

.method public static getUseBitmapScaling()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mUseBitmapScaling:Z

    return v0
.end method

.method private static isNullOrEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private static loadBitmapFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "Failed to close FileInputStream"

    const-string v1, "UrlImageViewHelper"

    .line 87
    invoke-static {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->prepareResources(Landroid/content/Context;)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoding: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 95
    :try_start_0
    sget-boolean v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mUseBitmapScaling:Z

    const/16 v3, 0x2000

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 96
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 99
    :try_start_1
    invoke-static {v5, p0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v6, 0x0

    .line 102
    :goto_0
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v7, v6

    if-gt v7, p3, :cond_1

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v7, v6

    if-le v7, p4, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    shl-int p4, v4, v6

    .line 106
    iput p4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object p3, p0

    move-object v5, p3

    .line 108
    :goto_2
    new-instance p4, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :try_start_2
    invoke-static {p4, p0, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string p3, "Loaded bitmap (%dx%d)."

    const/4 v2, 0x2

    .line 110
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 119
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    nop

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p4, v5

    goto :goto_4

    :catch_2
    move-object p4, v5

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p4, p0

    move-object p0, p1

    :goto_4
    if-eqz p4, :cond_3

    .line 117
    :try_start_4
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 119
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_3
    :goto_5
    throw p0

    :catch_4
    move-object p4, p0

    :goto_6
    if-eqz p4, :cond_4

    .line 117
    :try_start_5
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    .line 119
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_7
    return-object p0
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/32 v4, 0xf731400

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 161
    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    .line 197
    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    .line 315
    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/32 v4, 0xf731400

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    .line 273
    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method private static prepareResources(Landroid/content/Context;)V
    .locals 3

    .line 53
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    const-string v0, "window"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/content/res/Resources;

    sget-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 727
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->getFilenameForUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 729
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    invoke-virtual {v0, p0}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 730
    instance-of v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    if-eqz v0, :cond_0

    .line 731
    check-cast p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    .line 732
    invoke-virtual {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 733
    invoke-virtual {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->headshot()V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setRequestPropertiesCallback(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;)V
    .locals 0

    .line 710
    sput-object p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mRequestPropertiesCallback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V
    .locals 7

    if-eqz p3, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 237
    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    if-eqz p3, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 361
    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 20

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-object/from16 v6, p6

    .line 456
    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->cleanup(Landroid/content/Context;)V

    .line 458
    invoke-static/range {p2 .. p2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_0

    .line 460
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 468
    :cond_1
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_2

    .line 469
    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->prepareResources(Landroid/content/Context;)V

    .line 470
    :cond_2
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 471
    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 473
    invoke-static/range {p2 .. p2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->getFilenameForUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p0

    invoke-virtual {v12, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 474
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    sget-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    if-nez v2, :cond_3

    .line 478
    new-instance v2, Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->getHeapSize(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;-><init>(I)V

    sput-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    .line 481
    :cond_3
    sget-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;

    invoke-virtual {v2, v8}, Lcom/koushikdutta/urlimageviewhelper/LruBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    if-eqz v2, :cond_4

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zombie load: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto :goto_0

    .line 485
    :cond_4
    sget-object v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/DrawableCache;

    invoke-virtual {v4, v8}, Lcom/koushikdutta/urlimageviewhelper/DrawableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    :goto_0
    if-nez v4, :cond_5

    if-eqz v2, :cond_8

    .line 490
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache hit on: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v14, v10, v11}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->checkCacheDuration(Ljava/io/File;J)Z

    move-result v3

    if-nez v3, :cond_7

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache hit, but file is stale. Forcing reload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_6

    .line 497
    instance-of v2, v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    if-eqz v2, :cond_6

    .line 498
    check-cast v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    invoke-virtual {v4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->headshot()V

    :cond_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    .line 503
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using cached: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    if-nez v4, :cond_14

    if-eqz v2, :cond_9

    goto/16 :goto_5

    .line 538
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_a

    .line 540
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    sget-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    invoke-virtual {v2, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_a
    sget-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    if-eqz v7, :cond_b

    .line 552
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void

    .line 557
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_d

    .line 559
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_d
    sget-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    invoke-virtual {v2, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7fffffff

    if-gtz v0, :cond_e

    const v4, 0x7fffffff

    goto :goto_2

    :cond_e
    move v4, v0

    :goto_2
    if-gtz v1, :cond_f

    const v16, 0x7fffffff

    goto :goto_3

    :cond_f
    move/from16 v16, v1

    .line 565
    :goto_3
    new-instance v3, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;

    move-object v0, v3

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object/from16 v3, p2

    move-object/from16 v18, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 598
    new-instance v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object v6, v5

    move-object/from16 v5, p1

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;Landroid/widget/ImageView;Ljava/util/ArrayList;)V

    .line 640
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 642
    :try_start_0
    invoke-static {v14, v10, v11}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->checkCacheDuration(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File Cache hit on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms old."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    :try_start_1
    invoke-direct {v0, v4, v13, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 656
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTask(Landroid/os/AsyncTask;)V

    return-void

    :cond_10
    move-object/from16 v4, v17

    move-object/from16 v5, v19

    const-string v0, "File cache has expired. Refreshing."

    .line 660
    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->clog(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    :cond_11
    move-object/from16 v4, v17

    move-object/from16 v5, v19

    .line 667
    :catch_1
    :goto_4
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;

    .line 668
    invoke-interface {v1, v8}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;->canDownloadUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v13

    .line 669
    invoke-interface/range {v0 .. v5}, Lcom/koushikdutta/urlimageviewhelper/UrlDownloader;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlDownloader$UrlDownloaderCallback;Ljava/lang/Runnable;)V

    return-void

    .line 674
    :cond_13
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_14
    :goto_5
    if-eqz v7, :cond_17

    .line 510
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    instance-of v0, v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    if-eqz v0, :cond_15

    .line 512
    check-cast v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->clone(Landroid/content/res/Resources;)Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    move-result-object v0

    :goto_6
    move-object v4, v0

    goto :goto_7

    :cond_15
    if-eqz v2, :cond_16

    .line 514
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    sget-object v1, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v8, v1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 516
    :cond_16
    :goto_7
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    if-eqz v6, :cond_19

    if-nez v2, :cond_18

    .line 524
    instance-of v0, v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    if-eqz v0, :cond_18

    .line 525
    check-cast v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    invoke-virtual {v4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_18
    const/4 v0, 0x1

    .line 526
    invoke-interface {v6, v7, v2, v8, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    :cond_19
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 7

    .line 157
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/32 v4, 0xf731400

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 6

    .line 145
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;IJ)V
    .locals 6

    .line 193
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    .line 311
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    .line 254
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 177
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;J)V
    .locals 7

    .line 215
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    .line 336
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    .line 292
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7

    .line 269
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-void
.end method

.method public static setUseBitmapScaling(Z)V
    .locals 0

    .line 74
    sput-boolean p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mUseBitmapScaling:Z

    return-void
.end method
