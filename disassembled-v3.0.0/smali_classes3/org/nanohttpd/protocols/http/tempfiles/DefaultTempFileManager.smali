.class public Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;
.super Ljava/lang/Object;
.source "DefaultTempFileManager.java"

# interfaces
.implements Lorg/nanohttpd/protocols/http/tempfiles/ITempFileManager;


# instance fields
.field private final tempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/nanohttpd/protocols/http/tempfiles/ITempFile;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpdir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tmpdir:Ljava/io/File;

    .line 61
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tempFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 69
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nanohttpd/protocols/http/tempfiles/ITempFile;

    .line 71
    :try_start_0
    invoke-interface {v1}, Lorg/nanohttpd/protocols/http/tempfiles/ITempFile;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 73
    sget-object v2, Lorg/nanohttpd/protocols/http/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "could not delete file "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createTempFile(Ljava/lang/String;)Lorg/nanohttpd/protocols/http/tempfiles/ITempFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    new-instance p1, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFile;

    iget-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-direct {p1, v0}, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFile;-><init>(Ljava/io/File;)V

    .line 82
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
