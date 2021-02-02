.class public Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;
.super Ljava/lang/Object;
.source "HttpContent.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceAsHttpContent"
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field final _etag:Lorg/eclipse/jetty/io/Buffer;

.field final _maxBuffer:I

.field final _mimeType:Lorg/eclipse/jetty/io/Buffer;

.field final _resource:Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 81
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_mimeType:Lorg/eclipse/jetty/io/Buffer;

    .line 82
    iput p3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_maxBuffer:I

    if-eqz p4, :cond_0

    .line 83
    new-instance p2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getWeakETag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_etag:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 74
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_mimeType:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getETag()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_etag:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 7

    const-string v0, "Couldn\'t close inputStream. Possible file handle leak"

    const/4 v1, 0x0

    .line 116
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    iget v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_maxBuffer:I

    int-to-long v2, v2

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {v2, v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 119
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 120
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->readFrom(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 133
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 137
    sget-object v3, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    :goto_1
    return-object v1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 125
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_3

    .line 133
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 137
    sget-object v3, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_3
    :goto_3
    throw v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    return-void
.end method
