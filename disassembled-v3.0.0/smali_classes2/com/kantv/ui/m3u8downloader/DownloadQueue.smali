.class Lcom/kantv/ui/m3u8downloader/DownloadQueue;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# instance fields
.field public queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DownloadQueue"

    const-string v1, "2222"

    .line 14
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public contains(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getTask(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
    .locals 2

    const/4 v0, 0x0

    .line 85
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-virtual {v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHead(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->peek()Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isHead(Ljava/lang/String;)Z
    .locals 1

    .line 105
    new-instance v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-direct {v0, p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->isHead(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    move-result p1

    return p1
.end method

.method public offer(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public peek()Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
    .locals 3

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z
    .locals 1

    .line 63
    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->contains(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/DownloadQueue;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
