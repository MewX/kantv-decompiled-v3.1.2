.class public Lcom/kantv/ui/bean/EntityVideo;
.super Ljava/lang/Object;
.source "EntityVideo.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public duration:I

.field public id:Ljava/lang/String;

.field public isNOtShow:Z

.field public isNotCheck:Z

.field public name:Ljava/lang/String;

.field public part:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public progress:F

.field public size:J

.field public speed:J

.field public state:I

.field public thumbPath:Ljava/lang/String;

.field public time:J

.field public totalpart:I

.field public tsNumble:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/kantv/ui/bean/EntityVideo;->thumbPath:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/kantv/ui/bean/EntityVideo;->path:Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/kantv/ui/bean/EntityVideo;->duration:I

    .line 16
    iput-object v0, p0, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcom/kantv/ui/bean/EntityVideo;->size:J

    .line 18
    iput-object v0, p0, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/kantv/ui/bean/EntityVideo;->photo:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    .line 25
    iput v1, p0, Lcom/kantv/ui/bean/EntityVideo;->tsNumble:I

    .line 26
    iput v1, p0, Lcom/kantv/ui/bean/EntityVideo;->state:I

    .line 27
    iput-boolean v1, p0, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    .line 28
    iput-boolean v1, p0, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    .line 29
    iput-wide v2, p0, Lcom/kantv/ui/bean/EntityVideo;->time:J

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/kantv/ui/bean/EntityVideo;->totalpart:I

    return-void
.end method


# virtual methods
.method public getFormatSpeed()Ljava/lang/String;
    .locals 5

    .line 57
    iget-wide v0, p0, Lcom/kantv/ui/bean/EntityVideo;->speed:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, ""

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/kantv/ui/bean/EntityVideo;->speed:J

    invoke-static {v1, v2}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    return v0
.end method

.method public getState()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/kantv/ui/bean/EntityVideo;->state:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/kantv/ui/bean/EntityVideo;->duration:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kantv/ui/bean/EntityVideo;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/kantv/ui/bean/EntityVideo;->size:J

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/kantv/ui/bean/EntityVideo;->thumbPath:Ljava/lang/String;

    return-void
.end method
