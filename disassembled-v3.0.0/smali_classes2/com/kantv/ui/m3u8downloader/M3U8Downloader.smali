.class public Lcom/kantv/ui/m3u8downloader/M3U8Downloader;
.super Ljava/lang/Object;
.source "M3U8Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/m3u8downloader/M3U8Downloader$SingletonHolder;
    }
.end annotation


# instance fields
.field private currentM3U8Task:Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

.field private currentTime:J

.field public downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

.field private m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

.field private mNetworktype:I

.field private netSpeedTimer:Ljava/util/Timer;

.field private onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

.field private onTaskDownloadListener:Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->mNetworktype:I

    .line 338
    new-instance v0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;

    invoke-direct {v0, p0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onTaskDownloadListener:Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    const-string v0, "M3U8Downloader"

    const-string v1, "111"

    .line 30
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-direct {v0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    .line 32
    new-instance v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-direct {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->currentM3U8Task:Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downloadNextTask()V

    return-void
.end method

.method private downloadNextTask()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->poll()Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->startDownloadTask(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;
    .locals 2

    const-string v0, "M3U8Downloader getInstance"

    const-string v1, "\u521d\u59cb\u5316"

    .line 47
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$SingletonHolder;->instance:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    return-object v0
.end method

.method private isQuicklyClick()Z
    .locals 5

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->currentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    const-string v1, "M3U8DownloaderisQuicklyClick!"

    const-string v2, "\u70b9\u51fb\u8fc7\u5feb"

    .line 61
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->currentTime:J

    return v0
.end method

.method private pendingTask(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 1

    const/4 v0, -0x1

    .line 76
    invoke-virtual {p1, v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadPending(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    :cond_0
    return-void
.end method

.method private startDownloadTask(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pendingTask(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 246
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->isHead(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "start download task, but task is running:"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "start download task, but task has pause: "

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_2
    :try_start_0
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->currentM3U8Task:Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    const-string v0, "====== start downloading ===== "

    .line 257
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onTaskDownloadListener:Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->download(Ljava/lang/String;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "startDownloadTask Error:"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/lang/String;)V

    return-void
.end method

.method public cancel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/util/List;)V

    return-void
.end method

.method public cancelAndDelete(Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V
    .locals 2
    .param p2    # Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 288
    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 290
    invoke-interface {p2}, Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;->onStart()V

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public cancelAndDelete(Ljava/util/List;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V
    .locals 2
    .param p2    # Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;",
            ")V"
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 316
    invoke-interface {p2}, Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;->onStart()V

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;Ljava/util/List;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public checkM3U8IsExist(Ljava/lang/String;)Z
    .locals 1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->getM3u8File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->isQuicklyClick()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 107
    :cond_2
    new-instance p3, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-direct {p3, p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3, p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setName(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u5165\u961f\u5217\u8d70\u8d70"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u52a0\u5165\u961f\u5217"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {v0, p3}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->contains(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    iget-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {p2, p1}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->getTask(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getState()I

    move-result p3

    const/4 v0, 0x5

    if-eq p3, v0, :cond_4

    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getState()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->startDownloadTask(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    goto :goto_1

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {p1, p3}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->offer(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 120
    invoke-direct {p0, p3}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->startDownloadTask(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    :goto_1
    return-void
.end method

.method public getEncryptKey()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getM3U8Path(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "getM3U8Path"

    .line 209
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->getM3u8File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCurrentTask(Ljava/lang/String;)Z
    .locals 1

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    .line 226
    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->peek()Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    .line 227
    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->peek()Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRunning()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 4

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->getTask(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "paude"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 136
    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    .line 138
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    const-string v2, "pause"

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDownloadPause"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadPause(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->currentM3U8Task:Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-virtual {v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->stop()V

    .line 146
    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downloadNextTask()V

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->remove(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public pause(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 160
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 162
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\u5168\u90e8\u6682\u505c"

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnClickListenername  4url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "        "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    new-instance v6, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-direct {v6, v2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->contains(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    new-instance v4, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-direct {v4, v2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->contains(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {v3, v2}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->getTask(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    .line 168
    invoke-virtual {v2, v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    .line 169
    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    invoke-virtual {v3, v2}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadPause(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->currentM3U8Task:Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-virtual {v2, v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->stop()V

    const/4 v0, 0x1

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {v3, v2}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->remove(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    goto :goto_0

    .line 180
    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 181
    :try_start_2
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->downLoadQueue:Lcom/kantv/ui/m3u8downloader/DownloadQueue;

    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->peek()Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->startDownloadTask(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 180
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setEncryptKey(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->m3U8DownLoadTask:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->setEncryptKey(Ljava/lang/String;)V

    return-void
.end method

.method public setOnM3U8DownloadListener(Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    return-void
.end method
