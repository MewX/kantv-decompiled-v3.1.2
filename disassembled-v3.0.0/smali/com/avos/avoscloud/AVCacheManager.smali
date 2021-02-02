.class public Lcom/avos/avoscloud/AVCacheManager;
.super Ljava/lang/Object;
.source "AVCacheManager.java"


# static fields
.field private static instance:Lcom/avos/avoscloud/AVCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCache()Z
    .locals 1

    const/4 v0, -0x1

    .line 115
    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    move-result v0

    return v0
.end method

.method public static clearCacheMoreThanDays(I)Z
    .locals 11

    .line 123
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->keyValueCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    int-to-long v7, p0

    const-wide/16 v9, 0x18

    mul-long v7, v7, v9

    const-wide/16 v9, 0xe10

    mul-long v7, v7, v9

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 127
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    .line 132
    :cond_0
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Cache Directory Failure"

    .line 138
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static clearCacheMoreThanOneDay()Z
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Lcom/avos/avoscloud/AVCacheManager;->clearCacheMoreThanDays(I)Z

    move-result v0

    return v0
.end method

.method public static clearFileCacheMoreThanDays(I)Z
    .locals 11

    .line 144
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 145
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return v1

    .line 148
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    int-to-long v7, p0

    const-wide/16 v9, 0x18

    mul-long v7, v7, v9

    const-wide/16 v9, 0xe10

    mul-long v7, v7, v9

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    .line 157
    :cond_1
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "File Cache Directory Failure"

    .line 163
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->keyValueCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->fileCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private static keyValueCacheDir()Ljava/io/File;
    .locals 3

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "PaasKeyValueCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static declared-synchronized sharedInstance()Lcom/avos/avoscloud/AVCacheManager;
    .locals 2

    const-class v0, Lcom/avos/avoscloud/AVCacheManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/avos/avoscloud/AVCacheManager;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVCacheManager;-><init>()V

    sput-object v1, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;

    .line 28
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AVCacheManager;->instance:Lcom/avos/avoscloud/AVCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "{}"

    .line 85
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fileCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 5

    .line 67
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p4, p2, v1

    if-lez p4, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long p4, v1, p2

    if-lez p4, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p5, p1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x78

    const-string p2, "Cache Missing"

    .line 71
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p5, p1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public hasCache(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public hasValidCache(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    sub-long/2addr v0, p1

    cmp-long p1, v0, p3

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public haveCache(Ljava/lang/String;)Z
    .locals 0

    .line 111
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "{}"

    .line 103
    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1, p3}, Lcom/avos/avoscloud/AVCacheManager;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 94
    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
