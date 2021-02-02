.class Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;
.super Ljava/lang/Object;
.source "M3U8DownloadTask.java"

# interfaces
.implements Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->getM3U8Info(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;->onStart()V

    return-void
.end method

.method public onSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$700(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$602(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Lcom/kantv/ui/m3u8downloader/bean/M3U8;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentM3U8"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$2$1;->start()V

    :cond_0
    return-void
.end method
