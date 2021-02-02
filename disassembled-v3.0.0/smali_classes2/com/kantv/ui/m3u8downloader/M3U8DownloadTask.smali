.class Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;
.super Ljava/lang/Object;
.source "M3U8DownloadTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDownloadManager"

.field private static final WHAT_ON_ERROR:I = 0x3e9

.field private static final WHAT_ON_PROGRESS:I = 0x3ea

.field private static final WHAT_ON_START_DOWNLOAD:I = 0x3ec

.field private static final WHAT_ON_SUCCESS:I = 0x3eb


# instance fields
.field private connTimeout:I

.field private curLength:J

.field private volatile curTs:I

.field private currentM3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

.field private encryptKey:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private isRunning:Z

.field private volatile isStartDownload:Z

.field private volatile itemFileSize:J

.field private m3u8FileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNetworktype:I

.field private netSpeedTimer:Ljava/util/Timer;

.field private onTaskDownloadListener:Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

.field private readTimeout:I

.field private saveDir:Ljava/lang/String;

.field private threadCount:I

.field private volatile totalFileSize:J

.field private volatile totalTs:I

.field private tsFileName:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->encryptKey:Ljava/lang/String;

    const-string v0, "play.m3u8"

    .line 55
    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->m3u8FileName:Ljava/lang/String;

    const-string v0, "test.ts"

    .line 56
    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->tsFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    .line 62
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->totalTs:I

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    .line 66
    iput-wide v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->totalFileSize:J

    const/4 v3, 0x1

    .line 67
    iput-boolean v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isStartDownload:Z

    .line 71
    iput-wide v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curLength:J

    .line 75
    iput-boolean v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning:Z

    const/4 v1, 0x3

    .line 79
    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->threadCount:I

    const v1, 0x1b7740

    .line 83
    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->readTimeout:I

    const/16 v1, 0x2710

    .line 87
    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->connTimeout:I

    .line 94
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mNetworktype:I

    .line 96
    new-instance v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    const-string v0, "M3U8DownloadTask"

    const-string v1, "111"

    .line 124
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->getConnTimeout()I

    move-result v1

    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->connTimeout:I

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->connTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->getReadTimeout()I

    move-result v1

    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->readTimeout:I

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->readTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->getThreadCount()I

    move-result v1

    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->threadCount:I

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threadCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->threadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->onTaskDownloadListener:Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->totalTs:I

    return p0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->netWorkChange()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->saveDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->m3u8FileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curLength:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curLength:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->connTimeout:I

    return p0
.end method

.method static synthetic access$1700(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->readTimeout:I

    return p0
.end method

.method static synthetic access$1800(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isStartDownload:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isStartDownload:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/io/File;Ljava/io/File;Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mergeFile(Ljava/io/File;Ljava/io/File;Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    return p0
.end method

.method static synthetic access$208(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I
    .locals 2

    .line 45
    iget v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    return v0
.end method

.method static synthetic access$300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->totalFileSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/Timer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->netSpeedTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->currentM3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Lcom/kantv/ui/m3u8downloader/bean/M3U8;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->currentM3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning:Z

    return p0
.end method

.method static synthetic access$702(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->startDownload(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private getM3U8Info(Ljava/lang/String;)V
    .locals 2

    .line 181
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)V

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->getM3U8Info(Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;)V

    return-void
.end method

.method private handlerError(Ljava/lang/Throwable;)V
    .locals 2

    .line 676
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handlerError"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread interrupted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 684
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 685
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3e9

    .line 686
    iput p1, v0, Landroid/os/Message;->what:I

    .line 687
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private merge(Ljava/io/File;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/bean/M3U8;)V
    .locals 6

    .line 284
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 287
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 294
    array-length v0, p1

    if-lez v0, :cond_a

    .line 295
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$4;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 306
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 308
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 311
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 312
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 313
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".ts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 319
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 321
    :try_start_1
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {p2, p3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    :try_start_2
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/high16 v1, 0x200000

    .line 325
    new-array v1, v1, [B

    .line 328
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 329
    invoke-virtual {p2, v1, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 343
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 350
    :catch_0
    :try_start_4
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    goto :goto_b

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_9

    :catch_3
    move-exception p1

    move-object p2, v1

    :goto_3
    move-object v1, v3

    goto :goto_5

    :catch_4
    move-exception p1

    move-object p2, v1

    :goto_4
    move-object v1, v3

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p2, v1

    move-object v3, p2

    goto :goto_9

    :catch_5
    move-exception p1

    move-object p2, v1

    .line 337
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_3

    .line 343
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    nop

    :cond_3
    :goto_6
    if-eqz p2, :cond_4

    .line 350
    :try_start_7
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_4
    return-void

    :catch_8
    move-exception p1

    move-object p2, v1

    .line 333
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 334
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_5

    .line 343
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    nop

    :cond_5
    :goto_8
    if-eqz p2, :cond_6

    .line 350
    :try_start_a
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_6
    return-void

    :catchall_3
    move-exception p1

    move-object v3, v1

    :goto_9
    if-eqz v3, :cond_7

    .line 343
    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_a

    :catch_b
    nop

    :cond_7
    :goto_a
    if-eqz p2, :cond_8

    .line 350
    :try_start_c
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 353
    :catch_c
    :cond_8
    throw p1

    :catch_d
    :cond_9
    :goto_b
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method private mergeFile(Ljava/io/File;Ljava/io/File;Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x3ea

    .line 620
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 621
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v0, 0x200000

    .line 623
    :try_start_2
    new-array v0, v0, [B

    .line 627
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 628
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 644
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 651
    :catch_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 657
    :catch_1
    const-class v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    monitor-enter v0

    .line 658
    :try_start_5
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    .line 659
    iget-wide p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    invoke-virtual {p3, p1, p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->setFileSize(J)V

    .line 660
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    iget p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    .line 662
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string p1, "VideoDownloadManager"

    const-string p2, "OnM3U8DownloadListener\u5408\u5e76\u6210\u529f="

    .line 664
    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 662
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    move-object v5, v2

    move-object v2, p1

    move-object p1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v2

    move-object v2, p1

    move-object p1, v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v5, v2

    move-object v2, p1

    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v5, v2

    move-object v2, v0

    :goto_1
    move-object v0, v5

    goto/16 :goto_9

    :catch_4
    move-exception p1

    move-object v5, v2

    move-object v2, v0

    :goto_2
    move-object v0, v5

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v5, v2

    move-object v2, v0

    :goto_3
    move-object v0, v5

    goto :goto_7

    :catchall_3
    move-exception p1

    move-object v2, v0

    goto/16 :goto_9

    :catch_6
    move-exception p1

    move-object v2, v0

    .line 637
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 638
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V

    .line 639
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v0, :cond_1

    .line 644
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    nop

    :cond_1
    :goto_5
    if-eqz v2, :cond_2

    .line 651
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 657
    :catch_8
    :cond_2
    const-class p1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    monitor-enter p1

    .line 658
    :try_start_a
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    .line 659
    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    invoke-virtual {p3, v2, v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->setFileSize(J)V

    .line 660
    iget-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    iget p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    .line 662
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_6
    const-string p1, "VideoDownloadManager"

    const-string p2, "OnM3U8DownloadListener\u5408\u5e76\u6210\u529f="

    .line 664
    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_4
    move-exception p2

    .line 662
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p2

    :catch_9
    move-exception p1

    move-object v2, v0

    .line 632
    :goto_7
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 633
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V

    .line 634
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v0, :cond_3

    .line 644
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_8

    :catch_a
    nop

    :cond_3
    :goto_8
    if-eqz v2, :cond_4

    .line 651
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 657
    :catch_b
    :cond_4
    const-class p1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    monitor-enter p1

    .line 658
    :try_start_f
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    .line 659
    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    invoke-virtual {p3, v2, v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->setFileSize(J)V

    .line 660
    iget-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    iget p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    .line 662
    monitor-exit p1

    goto :goto_6

    :catchall_5
    move-exception p2

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw p2

    :catchall_6
    move-exception p1

    :goto_9
    if-eqz v0, :cond_5

    .line 644
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_a

    :catch_c
    nop

    :cond_5
    :goto_a
    if-eqz v2, :cond_6

    .line 651
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 657
    :catch_d
    :cond_6
    const-class v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    monitor-enter v0

    .line 658
    :try_start_12
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    .line 659
    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->itemFileSize:J

    invoke-virtual {p3, v2, v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->setFileSize(J)V

    .line 660
    iget-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    iget p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    .line 662
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    const-string p2, "VideoDownloadManager"

    const-string p3, "OnM3U8DownloadListener\u5408\u5e76\u6210\u529f="

    .line 664
    invoke-static {p2, p3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catchall_7
    move-exception p1

    .line 662
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method private netWorkChange()I
    .locals 2

    .line 723
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/utils/NetWorkUtils;->isWrokType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v0
.end method

.method public static orderByName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 264
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 265
    new-instance v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$3;

    invoke-direct {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$3;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 275
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private startDownload(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
    .locals 11

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u89c6\u5c4f\u7684\u8def\u5f84"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->saveDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M3u8DownloadTask"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->saveDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->totalTs:I

    .line 380
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 381
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    const-string v1, "executor is shutDown ! downloading !"

    const-string v2, ""

    .line 395
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 397
    iput v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curTs:I

    .line 398
    iput-boolean v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning:Z

    .line 399
    iput-boolean v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isStartDownload:Z

    const/4 v1, 0x0

    .line 400
    iput-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 403
    iget v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->threadCount:I

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 404
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getBasePath()Ljava/lang/String;

    move-result-object v2

    .line 405
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->netSpeedTimer:Ljava/util/Timer;

    .line 406
    iget-object v4, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->netSpeedTimer:Ljava/util/Timer;

    new-instance v5, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$5;

    invoke-direct {v5, p0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$5;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x5dc

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v3, 0x0

    if-eqz p2, :cond_b

    .line 415
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_b

    .line 430
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 432
    iget v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->connTimeout:I

    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 433
    iget v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->readTimeout:I

    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 434
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_4

    .line 435
    iget-boolean v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isStartDownload:Z

    if-eqz v5, :cond_2

    .line 436
    iput-boolean v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isStartDownload:Z

    .line 437
    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    :cond_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 440
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v1, 0x200000

    .line 442
    :try_start_2
    new-array v1, v1, [B

    .line 443
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 444
    iget-wide v6, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curLength:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->curLength:J

    .line 445
    invoke-virtual {v5, v1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move-object v1, v5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, p2

    move-object p2, v10

    goto/16 :goto_4

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, p2

    move-object p2, v10

    goto/16 :goto_7

    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, p2

    move-object p2, v10

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    move-object v5, v1

    :goto_1
    move-object v1, p2

    goto/16 :goto_b

    :catch_3
    move-exception v4

    move-object v5, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v5, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_7

    :catch_5
    move-exception v4

    move-object v5, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_9

    .line 449
    :cond_4
    :try_start_3
    new-instance v4, Ljava/lang/Throwable;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_5

    .line 460
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    :catch_6
    nop

    :cond_5
    :goto_3
    if-eqz v1, :cond_b

    .line 466
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_d

    :catch_7
    nop

    goto :goto_d

    :catchall_2
    move-exception p1

    move-object v5, v1

    goto :goto_b

    :catch_8
    move-exception p2

    move-object v5, v1

    .line 456
    :goto_4
    :try_start_6
    invoke-direct {p0, p2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_6

    .line 460
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_5

    :catch_9
    nop

    :cond_6
    :goto_5
    if-eqz v5, :cond_b

    .line 466
    :goto_6
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_d

    :catch_a
    move-exception p2

    move-object v5, v1

    .line 454
    :goto_7
    :try_start_9
    invoke-direct {p0, p2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_7

    .line 460
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_8

    :catch_b
    nop

    :cond_7
    :goto_8
    if-eqz v5, :cond_b

    goto :goto_6

    :catch_c
    move-exception p2

    move-object v5, v1

    .line 452
    :goto_9
    :try_start_b
    invoke-direct {p0, p2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v1, :cond_8

    .line 460
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_a

    :catch_d
    nop

    :cond_8
    :goto_a
    if-eqz v5, :cond_b

    goto :goto_6

    :catchall_3
    move-exception p1

    :goto_b
    if-eqz v1, :cond_9

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_c

    :catch_e
    nop

    :cond_9
    :goto_c
    if-eqz v5, :cond_a

    .line 466
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 468
    :catch_f
    :cond_a
    throw p1

    .line 477
    :cond_b
    :goto_d
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_d

    const/4 v1, 0x0

    .line 479
    :goto_e
    array-length v4, p2

    if-ge v1, v4, :cond_d

    .line 480
    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_c

    .line 481
    aget-object v4, p2, v1

    .line 482
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".ts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 492
    :cond_d
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object p1

    .line 494
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_e

    .line 495
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    .line 497
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;

    invoke-direct {v4, p0, v0, p2, v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/io/File;Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_e
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;)V
    .locals 1

    .line 143
    invoke-static {p2}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->getSaveFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->saveDir:Ljava/lang/String;

    .line 144
    iget-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->saveDir:Ljava/lang/String;

    const-string v0, "start download ,SaveDir: "

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->onTaskDownloadListener:Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    .line 146
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 147
    iput-boolean p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning:Z

    .line 148
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->getM3U8Info(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Task running"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->handlerError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getEncryptKey()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->encryptKey:Ljava/lang/String;

    return-object v0
.end method

.method public getM3u8File(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    :try_start_0
    const-string v0, "getM3u8File"

    .line 714
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->getSaveFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->m3u8FileName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 717
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isRunning()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning:Z

    return v0
.end method

.method public setEncryptKey(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->encryptKey:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->netSpeedTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->netSpeedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 697
    iput-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->netSpeedTimer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning:Z

    .line 700
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 702
    iput-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
