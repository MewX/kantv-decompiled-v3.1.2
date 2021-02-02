.class public Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;
.super Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;
.source "EncryptM3U8Server.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;-><init>()V

    return-void
.end method

.method private isEncrypt(Ljava/lang/String;)Z
    .locals 4

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 65
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".ts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public decrypt()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->filesDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->filesDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->isEncrypt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$2;-><init>(Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public encrypt()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->filesDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->filesDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->isEncrypt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$1;-><init>(Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
