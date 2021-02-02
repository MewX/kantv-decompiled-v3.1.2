.class public Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;
.super Ljava/lang/Object;
.source "M3U8Ts.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/lang/String;

.field private fileSize:J

.field private seconds:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->seconds:F

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)I
    .locals 1
    .param p1    # Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    iget-object p1, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    check-cast p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->compareTo(Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)I

    move-result p1

    return p1
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->fileSize:J

    return-wide v0
.end method

.method public getLongDate()J
    .locals 4

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSeconds()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->seconds:F

    return v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->fileSize:J

    return-void
.end method

.method public setSeconds(F)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->seconds:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->seconds:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "sec)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
