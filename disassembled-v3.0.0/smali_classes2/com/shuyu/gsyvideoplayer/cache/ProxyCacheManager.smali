.class public Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;
.super Ljava/lang/Object;
.source "ProxyCacheManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
.implements Lcom/danikula/videocache/CacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;
    }
.end annotation


# static fields
.field private static proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;


# instance fields
.field private cacheAvailableListener:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;

.field protected mCacheDir:Ljava/io/File;

.field protected mCacheFile:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected proxy:Lcom/danikula/videocache/HttpProxyCacheServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 2

    .line 187
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->newProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 2

    if-nez p1, :cond_0

    .line 200
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    return-object p0

    .line 204
    :cond_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 205
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->shutdown()V

    .line 213
    :cond_1
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->newProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-object p0

    .line 217
    :cond_2
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_3

    .line 219
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->newProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;
    .locals 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    .line 49
    :cond_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;
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
.method public cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->getProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1, p3}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const-string p1, "http"

    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->deleteFiles(Ljava/io/File;)V

    goto/16 :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/danikula/videocache/file/Md5FileNameGenerator;

    invoke-direct {v0}, Lcom/danikula/videocache/file/Md5FileNameGenerator;-><init>()V

    .line 94
    invoke-virtual {v0, p3}, Lcom/danikula/videocache/file/Md5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ".download"

    if-eqz p2, :cond_1

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    .line 99
    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "http"

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ".m3u8"

    if-eqz v1, :cond_1

    const-string v1, "127.0.0.1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->getProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 67
    invoke-virtual {p5, p3}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    .line 70
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p5, p0, p3}, Lcom/danikula/videocache/HttpProxyCacheServer;->registerCacheListener(Lcom/danikula/videocache/CacheListener;Ljava/lang/String;)V

    :cond_0
    move-object p3, v1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "rtmp"

    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "rtsp"

    .line 75
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 76
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    .line 79
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-interface {p2, p1, p3, p4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public hadCached()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    return v0
.end method

.method public newProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 2

    .line 167
    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;-><init>(Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$1;)V

    .line 168
    invoke-virtual {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->headerInjector(Lcom/danikula/videocache/headers/HeaderInjector;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->build()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    return-object p1
.end method

.method public newProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 2

    .line 149
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_0
    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    invoke-direct {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheDirectory(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    .line 154
    new-instance p1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;-><init>(Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$1;)V

    invoke-virtual {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->headerInjector(Lcom/danikula/videocache/headers/HeaderInjector;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    .line 155
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheDir:Ljava/io/File;

    .line 156
    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->build()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    return-object p1
.end method

.method public onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->cacheAvailableListener:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/danikula/videocache/CacheListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCacheAvailableListener(Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->cacheAvailableListener:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;

    return-void
.end method

.method public setProxy(Lcom/danikula/videocache/HttpProxyCacheServer;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-void
.end method
