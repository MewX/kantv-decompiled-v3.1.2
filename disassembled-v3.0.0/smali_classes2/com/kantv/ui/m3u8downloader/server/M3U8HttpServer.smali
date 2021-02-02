.class public Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;
.super Lorg/nanohttpd/protocols/http/NanoHTTPD;
.source "M3U8HttpServer.java"


# static fields
.field private static final DEFAULT_PORT:I = 0x21ee


# instance fields
.field public filesDir:Ljava/lang/String;

.field private fis:Ljava/io/FileInputStream;

.field private server:Lorg/nanohttpd/protocols/http/NanoHTTPD;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x21ee

    .line 25
    invoke-direct {p0, v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;-><init>(I)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->filesDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/nanohttpd/protocols/http/NanoHTTPD;-><init>(I)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->filesDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createLocalHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "/"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->filesDir:Ljava/lang/String;

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->myPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const-string p1, "http://127.0.0.1:%d%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public execute()V
    .locals 4

    const/4 v0, -0x1

    .line 52
    :try_start_0
    const-class v1, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nanohttpd/protocols/http/NanoHTTPD;

    iput-object v1, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->server:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    .line 53
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->server:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    const/16 v2, 0x1388

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->start(IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 55
    :catch_1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->server:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->stop()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->server:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    :cond_0
    return-void
.end method

.method public handle(Lorg/nanohttpd/protocols/http/IHTTPSession;)Lorg/nanohttpd/protocols/http/response/Response;
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->handle(Lorg/nanohttpd/protocols/http/IHTTPSession;)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object p1

    return-object p1
.end method

.method public serve(Lorg/nanohttpd/protocols/http/IHTTPSession;)Lorg/nanohttpd/protocols/http/response/Response;
    .locals 5

    .line 79
    invoke-interface {p1}, Lorg/nanohttpd/protocols/http/IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lorg/nanohttpd/protocols/http/response/Status;->NOT_FOUND:Lorg/nanohttpd/protocols/http/response/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    invoke-static {v1, v4, v2}, Lorg/nanohttpd/protocols/http/response/Response;->newFixedLengthResponse(Lorg/nanohttpd/protocols/http/response/IStatus;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->fis:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ".m3u8"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "video/x-mpegURL"

    goto :goto_0

    :cond_0
    const-string p1, "video/mpeg"

    .line 100
    :goto_0
    :try_start_1
    sget-object v0, Lorg/nanohttpd/protocols/http/response/Status;->OK:Lorg/nanohttpd/protocols/http/response/Status;

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->fis:Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/server/M3U8HttpServer;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, p1, v2, v3, v4}, Lorg/nanohttpd/protocols/http/response/Response;->newFixedLengthResponse(Lorg/nanohttpd/protocols/http/response/IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 90
    sget-object v0, Lorg/nanohttpd/protocols/http/response/Status;->NOT_FOUND:Lorg/nanohttpd/protocols/http/response/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lorg/nanohttpd/protocols/http/response/Response;->newFixedLengthResponse(Lorg/nanohttpd/protocols/http/response/IStatus;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/protocols/http/response/Response;

    move-result-object p1

    return-object p1

    :catch_1
    :cond_1
    :goto_1
    return-object v1
.end method
