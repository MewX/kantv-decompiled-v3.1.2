.class Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;
.super Ljava/lang/Object;
.source "M3U8Downloader.java"

# interfaces
.implements Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/m3u8downloader/M3U8Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downloadProgress:F

.field private lastLength:J

.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloading(JJII)V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$200(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDownloading: "

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p2, p6

    mul-float p2, p2, p1

    int-to-float p1, p5

    div-float/2addr p2, p1

    .line 355
    iput p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->downloadProgress:F

    .line 357
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadItem(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;JII)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 397
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENOSPC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadError(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;Ljava/lang/Throwable;)V

    .line 406
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$200(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->stop()V

    .line 408
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->download(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onProgress(J)V
    .locals 5

    .line 376
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->lastLength:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 377
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    iget v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->downloadProgress:F

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setProgress(F)V

    .line 378
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    iget-wide v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->lastLength:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setSpeed(J)V

    .line 379
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadProgress(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 382
    :cond_0
    iput-wide p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->lastLength:J

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    .line 389
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadPrepare(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadPrepare: "

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartDownload(II)V
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartDownload: "

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 347
    iput p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->downloadProgress:F

    return-void
.end method

.method public onSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$200(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->stop()V

    .line 365
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setM3U8(Lcom/kantv/ui/m3u8downloader/bean/M3U8;)V

    .line 366
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->setState(I)V

    .line 367
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;->onDownloadSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "m3u8 Downloader onSuccess: "

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$3;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->access$400(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;)V

    return-void
.end method
