.class public Lcom/kantv/ui/m3u8downloader/utils/MUtils;
.super Ljava/lang/Object;
.source "MUtils.java"


# static fields
.field private static GB:F = 0.0f

.field private static KB:F = 1024.0f

.field private static MB:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    sget v0, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->KB:F

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float v0, v0, v1

    sput v0, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->MB:F

    .line 84
    sget v0, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->MB:F

    mul-float v0, v0, v1

    sput v0, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->GB:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RecursionDeleteFile(Ljava/io/File;)V
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6267\u884c\u5220\u9664\u6587\u4ef6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MUtils"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 206
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 211
    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->RecursionDeleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 207
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static clearDir(Ljava/io/File;)Z
    .locals 3

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 73
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->clearDir(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static createLocalM3U8(Ljava/io/File;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/bean/M3U8;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-static {p0, p1, p2, v0}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->createLocalM3U8(Ljava/io/File;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static createLocalM3U8(Ljava/io/File;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, "#EXTM3U\n"

    .line 122
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p1, "#EXT-X-VERSION:3\n"

    .line 123
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p1, "#EXT-X-MEDIA-SEQUENCE:0\n"

    .line 124
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p1, "#EXT-X-TARGETDURATION:13\n"

    .line 125
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#EXT-X-KEY:METHOD=AES-128,URI=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#EXTINF:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->getSeconds()F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->getFile()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    :cond_1
    const-string p1, "#EXT-X-ENDLIST"

    .line 140
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 142
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    return-object v0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 6

    long-to-float v0, p0

    .line 90
    sget v1, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->GB:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v4, v0, v1

    if-ltz v4, :cond_0

    .line 91
    new-array p0, v3, [Ljava/lang/Object;

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "%.1f GB"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    sget v1, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->MB:F

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v5, v0, v1

    if-ltz v5, :cond_2

    div-float/2addr v0, v1

    cmpl-float p0, v0, v4

    if-lez p0, :cond_1

    const-string p0, "%.0f MB"

    goto :goto_0

    :cond_1
    const-string p0, "%.1f MB"

    .line 94
    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_2
    sget v1, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->KB:F

    cmpl-float v5, v0, v1

    if-ltz v5, :cond_4

    div-float/2addr v0, v1

    cmpl-float p0, v0, v4

    if-lez p0, :cond_3

    const-string p0, "%.0f KB"

    goto :goto_1

    :cond_3
    const-string p0, "%.1f KB"

    .line 97
    :goto_1
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%d B"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 173
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    const-string v4, "/"

    .line 175
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 178
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string p0, "#"

    .line 179
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "#EXT-X-KEY"

    .line 180
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ","

    .line 181
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v5

    const-string p0, "URI=\""

    .line 182
    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "\""

    .line 183
    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    .line 189
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static getSaveFileDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M3U8DownloaderConfig getSaveFileDir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->getSaveDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSaveFileDir"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->getSaveDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseIndex(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    invoke-direct {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;-><init>()V

    .line 31
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "/"

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->setBasePath(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 39
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "#"

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "#EXTINF:"

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v4, 0x8

    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 46
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_1

    :cond_2
    const-string v6, "m3u8"

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->parseIndex(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object p0

    return-object p0

    .line 53
    :cond_3
    new-instance v6, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    invoke-direct {v6, v5, v4}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v6}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->addTs(Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)V

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 149
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 150
    new-array v0, v0, [B

    .line 151
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 152
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v0
.end method

.method public static saveFile([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 160
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 161
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
