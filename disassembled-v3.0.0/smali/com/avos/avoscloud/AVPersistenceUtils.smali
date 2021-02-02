.class public Lcom/avos/avoscloud/AVPersistenceUtils;
.super Ljava/lang/Object;
.source "AVPersistenceUtils.java"


# static fields
.field private static fileLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/avos/avoscloud/AVPersistenceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 84
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getAnalysisCacheDir()Ljava/io/File;
    .locals 3

    .line 73
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Analysis"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 2

    .line 55
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCommandCacheDir()Ljava/io/File;
    .locals 3

    .line 63
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CommandCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 92
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "null file object."

    .line 173
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 177
    :cond_2
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 178
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    const-string v1, "not file object"

    invoke-static {v1, p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-object v0
.end method

.method public static getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 2

    .line 21
    sget-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 24
    sget-object v1, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static getPaasDocumentDir()Ljava/io/File;
    .locals 3

    .line 47
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Paas"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readContentBytesFromFile(Ljava/io/File;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "null file object."

    .line 187
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 196
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    const/4 v3, 0x0

    .line 203
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    invoke-direct {v4, v5, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_2
    :goto_0
    :try_start_1
    array-length p0, v2

    if-ge v3, p0, :cond_3

    .line 205
    array-length p0, v2

    sub-int/2addr p0, v3

    .line 206
    invoke-virtual {v4, v2, v3, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez p0, :cond_2

    add-int/2addr v3, p0

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v4, v0

    .line 213
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Exception during file read"

    .line 214
    invoke-static {v2, p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    :cond_4
    invoke-static {v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v4

    .line 217
    :goto_2
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    .line 191
    :cond_5
    :goto_3
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method public static readContentFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 163
    invoke-static {p0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 164
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static removeLock(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/avos/avoscloud/AVPersistenceUtils;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    :try_start_0
    const-string v0, "utf-8"

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile([BLjava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static saveContentToFile([BLjava/io/File;)Z
    .locals 4

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 133
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 137
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 141
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    .line 141
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_2
    :goto_2
    const/4 v2, 0x1

    :goto_3
    return v2
.end method

.method public static declared-synchronized sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;
    .locals 2

    const-class v0, Lcom/avos/avoscloud/AVPersistenceUtils;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVPersistenceUtils;->instance:Lcom/avos/avoscloud/AVPersistenceUtils;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/avos/avoscloud/AVPersistenceUtils;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;-><init>()V

    sput-object v1, Lcom/avos/avoscloud/AVPersistenceUtils;->instance:Lcom/avos/avoscloud/AVPersistenceUtils;

    .line 43
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AVPersistenceUtils;->instance:Lcom/avos/avoscloud/AVPersistenceUtils;
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
.method public getFromDocumentDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getFromDocumentDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFromDocumentDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public getPersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2

    .line 241
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 242
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 245
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 247
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getPersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 264
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 265
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return-object p3

    .line 268
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 269
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 270
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getPersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 287
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 288
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return-object p3

    .line 291
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 293
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 309
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 310
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return-object p3

    .line 313
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 315
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeKeyZonePersistentSettings(Ljava/lang/String;)V
    .locals 2

    .line 337
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 339
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 340
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 327
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 328
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 329
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 330
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 331
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p3
.end method

.method public removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 319
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 321
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 322
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public savePersistentSettingBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 225
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 226
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 231
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 232
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public savePersistentSettingInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 251
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 252
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 257
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 258
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public savePersistentSettingLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 274
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 275
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 280
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 281
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 297
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "applicationContext is null, Please call AVOSCloud.initialize first"

    .line 298
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return-void

    .line 301
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 303
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 304
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveToDocumentDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveToDocumentDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveToDocumentDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-static {p2, p3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 114
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method
