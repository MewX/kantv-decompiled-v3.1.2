.class Lcom/kantv/ui/download/VideoDownloadManager$1;
.super Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;
.source "VideoDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/download/VideoDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/download/VideoDownloadManager;


# direct methods
.method constructor <init>(Lcom/kantv/ui/download/VideoDownloadManager;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/kantv/ui/download/VideoDownloadManager$1;->this$0:Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-direct {p0}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;Ljava/lang/Throwable;)V
    .locals 3

    .line 393
    invoke-super {p0, p1, p2}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadError(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;Ljava/lang/Throwable;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnM3U8DownloadListeneronDownloadError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4e0b\u8f7d\u51fa\u9519"

    .line 395
    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->currentState:Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadError"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 398
    iput p2, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 399
    invoke-static {p1}, Lcom/kantv/ui/download/VideoDownloadManager;->notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 400
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadItem(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;JII)V
    .locals 0

    .line 338
    invoke-super/range {p0 .. p5}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadItem(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;JII)V

    return-void
.end method

.method public onDownloadPause(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2

    .line 363
    invoke-super {p0, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadPause(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    const-string v0, "VideoDownloadManager"

    const-string v1, "OnM3U8DownloadListeneronDownloadPause"

    .line 364
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u6682\u505c\u4e2d"

    .line 365
    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->currentState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 366
    iput v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 367
    invoke-static {p1}, Lcom/kantv/ui/download/VideoDownloadManager;->notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 368
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadPending(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2

    .line 353
    invoke-super {p0, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadPending(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    const-string v0, "VideoDownloadManager"

    const-string v1, "OnM3U8DownloadListeneronDownloadPending"

    .line 354
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 355
    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->currentState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 356
    iput v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 357
    invoke-static {p1}, Lcom/kantv/ui/download/VideoDownloadManager;->notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 358
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadPrepare(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2

    .line 383
    invoke-super {p0, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadPrepare(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    const-string v0, "VideoDownloadManager"

    const-string v1, "OnM3U8DownloadListeneronDownloadPrepare"

    .line 384
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u51c6\u5907\u4e2d"

    .line 385
    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->currentState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 386
    iput v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 387
    invoke-static {p1}, Lcom/kantv/ui/download/VideoDownloadManager;->notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 388
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadProgress(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2

    .line 373
    invoke-super {p0, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadProgress(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    const-string v0, "VideoDownloadManager"

    const-string v1, "OnM3U8DownloadListeneronDownloadProgress"

    .line 374
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 375
    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->currentState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 376
    iput v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 377
    invoke-static {p1}, Lcom/kantv/ui/download/VideoDownloadManager;->notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 378
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2

    .line 343
    invoke-super {p0, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    const-string v0, "VideoDownloadManager"

    const-string v1, "OnM3U8DownloadListeneronDownloadSuccess"

    .line 344
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {p1}, Lcom/kantv/ui/download/VideoDownloadManager;->notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    const/16 v0, 0x2713

    .line 346
    iput v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 347
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/download/VideoDownloadManager;->onFinishDownload(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
