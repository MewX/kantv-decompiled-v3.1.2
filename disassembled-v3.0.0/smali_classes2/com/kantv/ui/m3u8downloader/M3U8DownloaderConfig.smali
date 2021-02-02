.class public Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;
.super Ljava/lang/Object;
.source "M3U8DownloaderConfig.java"


# static fields
.field private static final TAG_CONN_TIMEOUT:Ljava/lang/String; = "TAG_CONN_TIMEOUT_M3U8"

.field private static final TAG_DEBUG:Ljava/lang/String; = "TAG_DEBUG_M3U8"

.field private static final TAG_READ_TIMEOUT:Ljava/lang/String; = "TAG_READ_TIMEOUT_M3U8"

.field private static final TAG_SAVE_DIR:Ljava/lang/String; = "TAG_SAVE_DIR_M3U8"

.field private static final TAG_THREAD_COUNT:Ljava/lang/String; = "TAG_THREAD_COUNT_M3U8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->init(Landroid/content/Context;)V

    .line 19
    new-instance p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;

    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;-><init>()V

    return-object p0
.end method

.method public static getConnTimeout()I
    .locals 2

    const-string v0, "getConnTimeout"

    const-string v1, "ddd"

    .line 52
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TAG_CONN_TIMEOUT_M3U8"

    const/16 v1, 0x2710

    .line 53
    invoke-static {v0, v1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getReadTimeout()I
    .locals 2

    const-string v0, "TAG_READ_TIMEOUT_M3U8"

    const v1, 0x1b7740

    .line 62
    invoke-static {v0, v1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSaveDir()Ljava/lang/String;
    .locals 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    const-string v3, "TAG_SAVE_DIR_M3U8"

    invoke-static {v3, v2}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getSaveDir"

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSaveDir222"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getThreadCount()I
    .locals 2

    const-string v0, "TAG_THREAD_COUNT_M3U8"

    const/4 v1, 0x3

    .line 43
    invoke-static {v0, v1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isDebugMode()Z
    .locals 2

    const-string v0, "TAG_DEBUG_M3U8"

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public setConnTimeout(I)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;
    .locals 1

    const-string v0, "TAG_CONN_TIMEOUT_M3U8"

    .line 47
    invoke-static {v0, p1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setDebugMode(Z)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;
    .locals 1

    const-string v0, "TAG_DEBUG_M3U8"

    .line 67
    invoke-static {v0, p1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setReadTimeout(I)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;
    .locals 1

    const-string v0, "TAG_READ_TIMEOUT_M3U8"

    .line 57
    invoke-static {v0, p1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSaveDir(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;
    .locals 1

    const-string v0, "TAG_SAVE_DIR_M3U8"

    .line 23
    invoke-static {v0, p1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setThreadCount(I)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;
    .locals 1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/4 p1, 0x5

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    const-string v0, "TAG_THREAD_COUNT_M3U8"

    .line 38
    invoke-static {v0, p1}, Lcom/kantv/ui/m3u8downloader/utils/SPHelper;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
