.class Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$5;
.super Ljava/util/TimerTask;
.source "M3U8DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->startDownload(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
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

    .line 406
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$5;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$5;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$5;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1500(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;->onProgress(J)V

    return-void
.end method
