.class public Lcom/androidquery/util/AQUtility;
.super Ljava/lang/Object;
.source "AQUtility.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static cacheDir:Ljava/io/File; = null

.field private static context:Landroid/content/Context; = null

.field private static debug:Z = false

.field private static eh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static handler:Landroid/os/Handler;

.field private static pcacheDir:Ljava/io/File;

.field private static storeExe:Ljava/util/concurrent/ScheduledExecutorService;

.field private static times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 8

    .line 353
    sget v0, Lcom/androidquery/AQuery;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 354
    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    const-string v3, "apply"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public static cleanCache(Ljava/io/File;JJ)V
    .locals 1

    .line 610
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 614
    :cond_0
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 616
    invoke-static {p0, p1, p2}, Lcom/androidquery/util/AQUtility;->testCleanNeeded([Ljava/io/File;J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 617
    invoke-static {p0, p3, p4}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V

    .line 620
    :cond_1
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 621
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 622
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/androidquery/util/AQUtility;->cleanCache([Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 625
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static cleanCache([Ljava/io/File;J)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 658
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 660
    aget-object v4, p0, v0

    .line 662
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 664
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    cmp-long v5, v2, p1

    if-gez v5, :cond_0

    goto :goto_1

    .line 669
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "deleted"

    invoke-static {p1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static cleanCacheAsync(Landroid/content/Context;)V
    .locals 4

    const-wide/32 v0, 0x2dc6c0

    const-wide/32 v2, 0x1e8480

    .line 587
    invoke-static {p0, v0, v1, v2, v3}, Lcom/androidquery/util/AQUtility;->cleanCacheAsync(Landroid/content/Context;JJ)V

    return-void
.end method

.method public static cleanCacheAsync(Landroid/content/Context;JJ)V
    .locals 3

    .line 593
    :try_start_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 595
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object p0

    .line 597
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-wide/16 p2, 0x0

    .line 599
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 602
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 458
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 389
    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 395
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->reset()V

    .line 396
    invoke-virtual {p3, p2}, Lcom/androidquery/util/Progress;->setBytes(I)V

    :cond_0
    const/16 p2, 0x1000

    .line 399
    new-array p2, p2, [B

    .line 401
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 402
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p3, :cond_1

    .line 404
    invoke-virtual {p3, v0}, Lcom/androidquery/util/Progress;->increment(I)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 409
    invoke-virtual {p3}, Lcom/androidquery/util/Progress;->done()V

    :cond_3
    return-void
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 1

    .line 103
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 113
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AQuery"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AQuery"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static debugNotify()V
    .locals 2

    .line 93
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static debugWait(J)V
    .locals 2

    .line 74
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    .line 78
    :cond_1
    sget-object v0, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/androidquery/util/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 83
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 85
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dip2pixel(Landroid/content/Context;F)I
    .locals 1

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static ensureUIThread()V
    .locals 2

    .line 256
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 507
    sget-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "aquery"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 509
    sget-object p0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 512
    :cond_0
    sget-object p0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method public static getCacheDir(Landroid/content/Context;I)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 492
    sget-object p1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    if-eqz p1, :cond_0

    return-object p1

    .line 494
    :cond_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 495
    new-instance p1, Ljava/io/File;

    const-string v0, "persistent"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p1, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    .line 496
    sget-object p0, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 498
    sget-object p0, Lcom/androidquery/util/AQUtility;->pcacheDir:Ljava/io/File;

    return-object p0

    .line 500
    :cond_1
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 538
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 542
    :cond_1
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 532
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getMD5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 699
    sget-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "warn"

    const-string v1, "getContext with null"

    .line 700
    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 701
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 703
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 549
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 550
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExistedCacheByUrlSetAccess(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 557
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 559
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->lastAccess(Ljava/io/File;)V

    :cond_0
    return-object p0
.end method

.method private static getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 468
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 469
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    .line 472
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 275
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    .line 278
    :cond_0
    sget-object v0, Lcom/androidquery/util/AQUtility;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getMD5([B)[B
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 375
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 376
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 377
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 380
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->getMD5([B)[B

    move-result-object p0

    .line 364
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x24

    .line 366
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTempDir()Ljava/io/File;
    .locals 3

    .line 630
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 631
    new-instance v1, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 633
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 183
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_0

    .line 186
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 177
    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 204
    :try_start_0
    new-array p3, v1, [Ljava/lang/Class;

    .line 205
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 206
    invoke-virtual {p3, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz p2, :cond_3

    if-nez p4, :cond_2

    .line 216
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Class;

    invoke-virtual {p2, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 217
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 219
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 220
    invoke-virtual {p1, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/androidquery/util/AQUtility;->debug:Z

    return v0
.end method

.method public static isUIThread()Z
    .locals 5

    .line 264
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lastAccess(Ljava/io/File;)V
    .locals 2

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 566
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method

.method private static makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 526
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static pixel2dip(Landroid/content/Context;F)F
    .locals 1

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 687
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 688
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    div-float/2addr p1, p0

    return p1
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 286
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs post(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 291
    new-instance v0, Lcom/androidquery/util/AQUtility$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androidquery/util/AQUtility$1;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 282
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postAsync(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 327
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Lcom/androidquery/util/AQUtility;->postAsync(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs postAsync(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 332
    new-instance v0, Lcom/androidquery/util/AQUtility$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androidquery/util/AQUtility$3;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->postAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 304
    new-instance v0, Lcom/androidquery/util/AQUtility$2;

    invoke-direct {v0, p0}, Lcom/androidquery/util/AQUtility$2;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 321
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 348
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removePost(Ljava/lang/Runnable;)V
    .locals 1

    .line 344
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static report(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "reporting"

    .line 132
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 248
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .locals 0

    .line 517
    sput-object p0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    .line 518
    sget-object p0, Lcom/androidquery/util/AQUtility;->cacheDir:Ljava/io/File;

    if-eqz p0, :cond_0

    .line 519
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static setContext(Landroid/app/Application;)V
    .locals 0

    .line 695
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/androidquery/util/AQUtility;->context:Landroid/content/Context;

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 65
    sput-boolean p0, Lcom/androidquery/util/AQUtility;->debug:Z

    return-void
.end method

.method public static setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 146
    sput-object p0, Lcom/androidquery/util/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static store(Ljava/io/File;[B)V
    .locals 0

    if-eqz p0, :cond_0

    .line 574
    :try_start_0
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->write(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 577
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static storeAsync(Ljava/io/File;[BJ)V
    .locals 4

    .line 478
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 480
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v1, p0, v2}, Lcom/androidquery/util/Common;->method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;

    move-result-object p0

    .line 481
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p2, p3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static testCleanNeeded([Ljava/io/File;J)Z
    .locals 7

    .line 643
    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v5, p0, v2

    .line 644
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static time(Ljava/lang/String;)V
    .locals 3

    .line 152
    sget-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static timeEnd(Ljava/lang/String;J)J
    .locals 7

    .line 159
    sget-object v0, Lcom/androidquery/util/AQUtility;->times:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 162
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 164
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    cmp-long v0, v3, p1

    if-lez v0, :cond_2

    .line 167
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-wide v3
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .locals 1

    .line 418
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 421
    :try_start_0
    invoke-static {p0, v0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 422
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 427
    :goto_0
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static transparent(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 236
    :goto_0
    invoke-static {p0, p1}, Lcom/androidquery/util/AQUtility;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public static warn(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AQuery"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static write(Ljava/io/File;[B)V
    .locals 2

    .line 437
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 439
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "file create fail"

    .line 441
    invoke-static {v1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 446
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 447
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 448
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 450
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
