.class public Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;
.super Ljava/lang/Object;
.source "M3U8Task.java"


# instance fields
.field private m3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

.field private name:Ljava/lang/String;

.field private progress:F

.field private speed:J

.field private state:I

.field public tag:I

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->state:I

    .line 14
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->state:I

    .line 14
    iput v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 19
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 24
    instance-of v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    if-eqz v0, :cond_0

    .line 25
    check-cast p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    .line 26
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFormatSpeed()Ljava/lang/String;
    .locals 5

    .line 32
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->speed:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, ""

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->speed:J

    invoke-static {v1, v2}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormatTotalSize()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->m3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getFormatFileSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getM3U8()Lcom/kantv/ui/m3u8downloader/bean/M3U8;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->m3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->progress:F

    return v0
.end method

.method public getSpeed()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->speed:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->state:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setM3U8(Lcom/kantv/ui/m3u8downloader/bean/M3U8;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->m3U8:Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->name:Ljava/lang/String;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->progress:F

    return-void
.end method

.method public setSpeed(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->speed:J

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->state:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->url:Ljava/lang/String;

    return-void
.end method
