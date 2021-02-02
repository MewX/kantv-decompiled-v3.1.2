.class Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;
.super Landroid/os/Handler;
.source "M3U8DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Landroid/os/Looper;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$200(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;->onStartDownload(II)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$500(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$500(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;->onSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;)V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    move-result-object v0

    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v5

    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$200(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;->onDownloading(JJII)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$000(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
