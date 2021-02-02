.class public Lcom/kantv/ui/m3u8downloader/bean/M3U8;
.super Ljava/lang/Object;
.source "M3U8.java"


# instance fields
.field private basePath:Ljava/lang/String;

.field private dirFilePath:Ljava/lang/String;

.field private fileSize:J

.field private m3u8FilePath:Ljava/lang/String;

.field private totalTime:J

.field private tsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->tsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTs(Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->tsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 97
    instance-of v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->basePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->basePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDirFilePath()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->dirFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 6

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    .line 43
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->tsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    .line 44
    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    invoke-virtual {v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->getFileSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    goto :goto_0

    .line 46
    :cond_0
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    return-wide v0
.end method

.method public getFormatFileSize()Ljava/lang/String;
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    .line 51
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, ""

    return-object v0

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getM3u8FilePath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->m3u8FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 6

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->totalTime:J

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->tsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    .line 74
    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->totalTime:J

    invoke-virtual {v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->getSeconds()F

    move-result v1

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->totalTime:J

    goto :goto_0

    .line 76
    :cond_0
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->totalTime:J

    return-wide v0
.end method

.method public getTsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->tsList:Ljava/util/List;

    return-object v0
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->basePath:Ljava/lang/String;

    return-void
.end method

.method public setDirFilePath(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->dirFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    return-void
.end method

.method public setM3u8FilePath(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->m3u8FilePath:Ljava/lang/String;

    return-void
.end method

.method public setTsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->tsList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "basePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nm3u8FilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->m3u8FilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndirFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->dirFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfileFormatSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->fileSize:J

    invoke-static {v2, v3}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ntotalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->totalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->tsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
