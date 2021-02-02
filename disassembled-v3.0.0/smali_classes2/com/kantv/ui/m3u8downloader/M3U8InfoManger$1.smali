.class Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;
.super Ljava/lang/Thread;
.source "M3U8InfoManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->getM3U8Info(Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->parseIndex(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    invoke-static {v2, v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->access$000(Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    invoke-static {v1, v0}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->access$100(Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
