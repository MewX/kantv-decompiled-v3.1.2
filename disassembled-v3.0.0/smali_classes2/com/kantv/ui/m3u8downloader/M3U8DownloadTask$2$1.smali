.class Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;
.super Ljava/lang/Thread;
.source "M3U8DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->onSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$m3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->val$m3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    iput-object p3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "VideoDownloadManager"

    const/16 v1, 0x3eb

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->val$m3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    iget-object v4, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->val$key:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$800(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$900(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$900(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 196
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$900(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$900(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x64

    .line 199
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$700(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$200(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v2

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v3, v3, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_3

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnM3U8DownloadListenercurTs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v3, v3, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$200(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnM3U8DownloadListenercurrentM3U8.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v3, v3, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v0, v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v0, v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0, v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$702(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Z)Z

    return-void

    .line 208
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v3, v3, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    .line 209
    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1100(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v3, v3, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1200(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v4, v4, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v4}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v4

    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->val$key:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->createLocalM3U8(Ljava/io/File;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v3, v3, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->setM3u8FilePath(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v0, v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v0

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v3, v3, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1100(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->setDirFilePath(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v0, v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getFileSize()J

    .line 216
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v0, v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v0, v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0, v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$702(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Z)Z
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 233
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v1, v1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v1, v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void

    :catch_1
    move-exception v0

    .line 225
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v1, v1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v1, v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 220
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v2, v2, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->this$1:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;

    iget-object v1, v1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v1, v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V

    return-void
.end method
