.class public Lorg/eclipse/jetty/http/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"

# interfaces
.implements Lorg/eclipse/jetty/http/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpParser$EventHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xd

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SEEKING_EOF:I = 0x7

.field public static final STATE_SPACE1:I = -0xc

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xe

.field public static final STATE_STATUS:I = -0xb

.field public static final STATE_URI:I = -0xa


# instance fields
.field private _body:Lorg/eclipse/jetty/io/Buffer;

.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field private _cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field protected _chunkLength:I

.field protected _chunkPosition:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field protected final _contentView:Lorg/eclipse/jetty/io/View;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _eol:B

.field private _forceContentBuffer:Z

.field private final _handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

.field private _headResponse:Z

.field private _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _length:I

.field private _multiLineValue:Ljava/lang/String;

.field private _persistent:Z

.field private _responseStatus:I

.field protected _state:I

.field private final _tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

.field private final _tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    const/16 v0, -0xe

    .line 80
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 96
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 101
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 102
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    const/16 v0, -0xe

    .line 80
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 115
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 116
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 117
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 118
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    return v0

    .line 1226
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1228
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v2, v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    if-eqz v2, :cond_1

    .line 1229
    check-cast v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1234
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1235
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    :goto_0
    return v1
.end method

.method public blockForContent(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1180
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    return-object p1

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 1187
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1190
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1192
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1194
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1199
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1200
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    const-string p2, "timeout"

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1204
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1214
    :cond_5
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    :cond_6
    return-object v1

    :catch_0
    move-exception p1

    .line 1210
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1211
    throw p1

    :cond_7
    :goto_2
    return-object v1
.end method

.method protected fill()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1011
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1014
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    return v0

    .line 1018
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_5

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_5

    .line 1020
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_4

    .line 1021
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1022
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1026
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_b

    .line 1029
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_7

    .line 1031
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1035
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_9

    .line 1037
    sget-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v3, v1, v2

    const-string v2, "HttpParser Full for {} "

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 1039
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x19d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v3, v4, :cond_8

    const-string v3, "body"

    goto :goto_0

    :cond_8
    const-string v3, "head"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1044
    :cond_9
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1049
    sget-object v1, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1050
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_a

    goto :goto_1

    :cond_a
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    throw v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 1164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .line 1152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1155
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1156
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .line 151
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inHeaderState()Z
    .locals 1

    .line 157
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChunking()Z
    .locals 5

    .line 163
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    const/16 v0, -0xe

    .line 169
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    return v0
.end method

.method public isState(I)Z
    .locals 1

    .line 189
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 216
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-ne v0, v1, :cond_3

    .line 220
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-gez v0, :cond_1

    :cond_2
    return-void

    .line 217
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public parseAvailable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View;->hasContent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method public parseNext()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 257
    :try_start_0
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v4, :cond_0

    return v3

    .line 260
    :cond_0
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v4, :cond_1

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iput-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 264
    :cond_1
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    iget-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v9, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_2

    .line 266
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 267
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v4, v7, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    .line 271
    :cond_2
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v8, -0x1

    if-nez v4, :cond_c

    .line 280
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->fill()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_4

    .line 281
    :try_start_2
    sget-object v9, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "filled {}/{}"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    iget-object v12, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v9, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move v9, v4

    move-object v4, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    const/4 v9, -0x1

    .line 285
    :goto_0
    :try_start_3
    sget-object v10, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v19, v9

    move-object v9, v4

    move/from16 v4, v19

    :goto_1
    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_3
    if-gez v4, :cond_b

    .line 293
    iput-boolean v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 296
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v4, :cond_4

    .line 298
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-boolean v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-nez v4, :cond_4

    .line 300
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 301
    iget-wide v10, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v10, v12

    iput-wide v10, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 302
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 303
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 308
    :cond_4
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v4, :cond_7

    if-eq v4, v6, :cond_6

    if-eq v4, v2, :cond_7

    .line 321
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 322
    iget-boolean v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-nez v4, :cond_5

    .line 323
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->earlyEOF()V

    .line 324
    :cond_5
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_2

    .line 316
    :cond_6
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 317
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_2

    .line 312
    :cond_7
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :goto_2
    if-nez v9, :cond_a

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 331
    :cond_8
    new-instance v4, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v4}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v4

    :cond_9
    :goto_3
    return v8

    .line 328
    :cond_a
    throw v9

    :cond_b
    const/4 v4, 0x0

    .line 335
    :goto_4
    iget-object v9, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v9

    move/from16 v19, v9

    move v9, v4

    move/from16 v4, v19

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    .line 341
    :goto_5
    iget-object v10, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v10

    .line 342
    iget v11, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 343
    :goto_6
    iget v12, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v13, 0xd

    const/16 v2, 0x20

    const/16 v5, 0xa

    if-gez v12, :cond_58

    add-int/lit8 v12, v4, -0x1

    if-lez v4, :cond_58

    .line 345
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v11, v4, :cond_d

    add-int/lit8 v9, v9, 0x1

    .line 348
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v11, v4

    .line 351
    :cond_d
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v4

    .line 353
    iget-byte v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v15, 0x190

    if-ne v14, v13, :cond_f

    if-ne v4, v5, :cond_e

    .line 357
    iput-byte v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    goto/16 :goto_20

    .line 360
    :cond_e
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v15}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    .line 362
    :cond_f
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 364
    iget v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v3, -0x2

    const/16 v15, 0x9

    const/4 v7, -0x5

    packed-switch v14, :pswitch_data_0

    :cond_10
    :goto_7
    :pswitch_0
    const/4 v4, 0x0

    goto/16 :goto_22

    :pswitch_1
    if-eq v4, v15, :cond_15

    if-eq v4, v5, :cond_11

    if-eq v4, v13, :cond_11

    if-eq v4, v2, :cond_15

    .line 798
    :try_start_4
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto :goto_7

    .line 778
    :cond_11
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_14

    .line 780
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 781
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    goto :goto_8

    .line 785
    :cond_12
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 786
    :cond_13
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 790
    :cond_14
    :goto_8
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 791
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_7

    .line 795
    :cond_15
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_7

    :pswitch_2
    if-eq v4, v15, :cond_10

    if-eq v4, v5, :cond_17

    if-eq v4, v13, :cond_17

    if-eq v4, v2, :cond_10

    .line 765
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-ne v2, v8, :cond_16

    .line 766
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 767
    :cond_16
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 768
    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    .line 745
    :cond_17
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_1a

    .line 747
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-nez v2, :cond_18

    .line 748
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    goto :goto_9

    .line 752
    :cond_18
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v2, :cond_19

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 753
    :cond_19
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 757
    :cond_1a
    :goto_9
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 758
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    :pswitch_3
    if-eq v4, v15, :cond_1f

    if-eq v4, v5, :cond_1d

    if-eq v4, v13, :cond_1d

    if-eq v4, v2, :cond_1f

    const/16 v2, 0x3a

    if-eq v4, v2, :cond_1b

    const/4 v2, 0x0

    .line 734
    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 735
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_7

    .line 723
    :cond_1b
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_1c

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v2, :cond_1c

    .line 724
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v4

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v7

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 725
    :cond_1c
    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 726
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    .line 717
    :cond_1d
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_1e

    .line 718
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 719
    :cond_1e
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 720
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    :cond_1f
    const/4 v2, -0x4

    .line 730
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    :pswitch_4
    if-eq v4, v15, :cond_10

    if-eq v4, v5, :cond_23

    if-eq v4, v13, :cond_23

    if-eq v4, v2, :cond_10

    const/16 v2, 0x3a

    if-eq v4, v2, :cond_21

    const/4 v2, 0x0

    .line 702
    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 703
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-ne v2, v8, :cond_20

    .line 704
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 705
    :cond_20
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    const/4 v2, -0x3

    .line 706
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    .line 692
    :cond_21
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_22

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v2, :cond_22

    .line 693
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v4

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v7

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 694
    :cond_22
    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 695
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    .line 686
    :cond_23
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_24

    .line 687
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 688
    :cond_24
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 689
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    :pswitch_5
    if-eq v4, v15, :cond_44

    if-eq v4, v2, :cond_44

    const/16 v2, 0x3a

    if-eq v4, v2, :cond_44

    .line 518
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v2, :cond_26

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-gtz v2, :cond_26

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-gtz v2, :cond_26

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-eqz v2, :cond_25

    goto :goto_a

    :cond_25
    move/from16 v17, v4

    goto/16 :goto_12

    .line 520
    :cond_26
    :goto_a
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v2, :cond_27

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    :goto_b
    const/4 v7, 0x0

    goto :goto_c

    :cond_27
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    goto :goto_b

    .line 521
    :goto_c
    iput-object v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 522
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v7, :cond_28

    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    goto :goto_d

    :cond_28
    new-instance v7, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-direct {v7, v14}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 524
    :goto_d
    sget-object v14, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v14, v2}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v14

    if-ltz v14, :cond_34

    if-eq v14, v6, :cond_2e

    const/4 v15, 0x5

    if-eq v14, v15, :cond_2a

    const/16 v15, 0xc

    if-eq v14, v15, :cond_29

    goto/16 :goto_10

    .line 532
    :cond_29
    iget-wide v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_3

    const-wide/16 v17, -0x2

    cmp-long v16, v14, v17

    if-eqz v16, :cond_34

    .line 536
    :try_start_5
    invoke-static {v7}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v14

    iput-wide v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_3

    .line 543
    :try_start_6
    iget-wide v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move/from16 v17, v4

    const-wide/16 v3, 0x0

    cmp-long v16, v14, v3

    if-gtz v16, :cond_35

    .line 544
    iput-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 540
    sget-object v3, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 541
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    :cond_2a
    move/from16 v17, v4

    .line 549
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v3, v7}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    .line 550
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v3, v7}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_2b

    const-wide/16 v3, -0x2

    .line 552
    iput-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_11

    :cond_2b
    const-string v3, "ISO-8859-1"

    .line 555
    invoke-interface {v7, v3}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "chunked"

    .line 556
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-wide/16 v3, -0x2

    .line 557
    iput-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_11

    :cond_2c
    const-string v4, "chunked"

    .line 559
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2d

    goto :goto_11

    .line 560
    :cond_2d
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    const/16 v3, 0x190

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2e
    move/from16 v17, v4

    .line 565
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v3, v7}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    if-eq v3, v8, :cond_31

    if-eq v3, v6, :cond_30

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2f

    goto :goto_11

    .line 572
    :cond_2f
    iput-boolean v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z
    :try_end_6
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_11

    :cond_30
    const/4 v3, 0x0

    .line 568
    :try_start_7
    iput-boolean v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z
    :try_end_7
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_11

    .line 577
    :cond_31
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v4, :cond_35

    aget-object v15, v3, v14

    .line 579
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_33

    const/4 v15, 0x5

    if-eq v5, v15, :cond_32

    goto :goto_f

    .line 586
    :cond_32
    iput-boolean v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_f

    :cond_33
    const/4 v5, 0x0

    .line 582
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    :goto_f
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa

    goto :goto_e

    :cond_34
    :goto_10
    move/from16 v17, v4

    .line 596
    :cond_35
    :goto_11
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v3, v2, v7}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 597
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 598
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    const/4 v2, 0x0

    .line 599
    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 601
    :goto_12
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v8}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    move/from16 v3, v17

    if-eq v3, v13, :cond_37

    const/16 v2, 0xa

    if-ne v3, v2, :cond_36

    goto :goto_13

    .line 659
    :cond_36
    iput v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 660
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    const/4 v2, -0x4

    .line 661
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v10, :cond_10

    .line 666
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {v2, v10, v3, v4}, Lorg/eclipse/jetty/http/HttpHeaders;->getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 668
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v2, :cond_10

    .line 670
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->length()I

    move-result v2

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 671
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 672
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    const/4 v4, 0x0

    goto/16 :goto_23

    .line 607
    :cond_37
    :goto_13
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v2, :cond_39

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0x130

    if-eq v2, v4, :cond_38

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0xcc

    if-eq v2, v4, :cond_38

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0xc8

    if-ge v2, v4, :cond_39

    :cond_38
    const-wide/16 v4, 0x0

    .line 611
    iput-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_15

    .line 613
    :cond_39
    iget-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v9, -0x3

    cmp-long v2, v4, v9

    if-nez v2, :cond_3c

    .line 615
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-eqz v2, :cond_3b

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0x130

    if-eq v2, v4, :cond_3b

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0xcc

    if-eq v2, v4, :cond_3b

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0xc8

    if-ge v2, v4, :cond_3a

    goto :goto_14

    :cond_3a
    const-wide/16 v4, -0x1

    .line 621
    iput-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_15

    :cond_3b
    :goto_14
    const-wide/16 v4, 0x0

    .line 619
    iput-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_16

    :cond_3c
    :goto_15
    const-wide/16 v4, 0x0

    .line 624
    :goto_16
    iput-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 625
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 626
    iget-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    if-ne v2, v13, :cond_3d

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3d

    .line 627
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 631
    :cond_3d
    iget-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v7, v2, v4

    if-lez v7, :cond_3e

    const v2, 0x7fffffff

    goto :goto_17

    :cond_3e
    iget-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    long-to-int v2, v2

    :goto_17
    const/4 v3, -0x2

    if-eq v2, v3, :cond_43

    if-eq v2, v8, :cond_42

    if-eqz v2, :cond_3f

    const/4 v2, 0x2

    .line 650
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 651
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto :goto_1a

    .line 644
    :cond_3f
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 645
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v2, :cond_41

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_40

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_40

    goto :goto_18

    :cond_40
    const/4 v2, 0x7

    goto :goto_19

    :cond_41
    :goto_18
    const/4 v2, 0x0

    :goto_19
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 646
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    .line 634
    :cond_42
    iput v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 635
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto :goto_1a

    :cond_43
    const/4 v2, 0x3

    .line 639
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 640
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    :goto_1a
    return v6

    .line 510
    :cond_44
    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    const/4 v2, -0x2

    .line 511
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    :pswitch_6
    move v3, v4

    if-eq v3, v13, :cond_45

    const/16 v2, 0xa

    if-ne v3, v2, :cond_10

    .line 488
    :cond_45
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v2, :cond_46

    .line 489
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v4, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iget v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v13

    invoke-virtual {v2, v4, v5, v13}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1b

    .line 491
    :cond_46
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v4, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    sget-object v13, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v14}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v13

    invoke-virtual {v2, v4, v5, v13}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    move-object v4, v13

    .line 492
    :goto_1b
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 493
    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_47

    const/4 v2, 0x1

    goto :goto_1c

    :cond_47
    const/4 v2, 0x0

    :goto_1c
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 494
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 495
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 496
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    const/4 v2, 0x0

    .line 497
    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto/16 :goto_20

    :pswitch_7
    move v3, v4

    if-gt v3, v2, :cond_4a

    if-gez v3, :cond_48

    goto :goto_1d

    :cond_48
    if-ge v3, v2, :cond_10

    .line 462
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v2, :cond_49

    .line 464
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v4, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iget v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v5, v13}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 465
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 466
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 467
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 468
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    const/4 v2, 0x0

    .line 469
    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto/16 :goto_7

    .line 474
    :cond_49
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v3, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    const/4 v2, 0x0

    .line 475
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v2, 0x7

    .line 476
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 477
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 478
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    .line 457
    :cond_4a
    :goto_1d
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    const/4 v2, -0x6

    .line 458
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    :pswitch_8
    move v3, v4

    if-ne v3, v2, :cond_4b

    .line 438
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    const/16 v2, -0x9

    .line 439
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_20

    :cond_4b
    if-ge v3, v2, :cond_10

    if-ltz v3, :cond_10

    .line 445
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v3, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    const/4 v2, 0x0

    .line 446
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v2, 0x7

    .line 447
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 448
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 449
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    :pswitch_9
    move v3, v4

    if-ne v3, v2, :cond_4c

    .line 411
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    const/16 v2, -0x9

    .line 412
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_20

    :cond_4c
    const/16 v4, 0x30

    if-lt v3, v4, :cond_4d

    const/16 v4, 0x39

    if-gt v3, v4, :cond_4d

    .line 417
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v3, -0x30

    add-int/2addr v2, v4

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto/16 :goto_20

    :cond_4d
    if-ge v3, v2, :cond_4e

    if-ltz v3, :cond_4e

    .line 422
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v4, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iget v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v5, v13}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 423
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 424
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 425
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 426
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    const/4 v2, 0x0

    .line 427
    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_20

    :cond_4e
    const/16 v2, -0xa

    .line 431
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 432
    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto/16 :goto_7

    :pswitch_a
    move v3, v4

    if-gt v3, v2, :cond_51

    if-gez v3, :cond_4f

    goto :goto_1e

    :cond_4f
    if-lt v3, v2, :cond_50

    goto/16 :goto_7

    .line 404
    :cond_50
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    .line 393
    :cond_51
    :goto_1e
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 394
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-ltz v2, :cond_52

    const/16 v2, -0xb

    .line 396
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    add-int/lit8 v4, v3, -0x30

    .line 397
    iput v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto/16 :goto_7

    :cond_52
    const/16 v2, -0xa

    .line 400
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_7

    :pswitch_b
    move v3, v4

    if-ne v3, v2, :cond_54

    .line 379
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 380
    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v2

    if-nez v2, :cond_53

    const/4 v2, -0x1

    goto :goto_1f

    :cond_53
    const/4 v2, 0x0

    :goto_1f
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v2, -0xc

    .line 381
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :goto_20
    move v4, v12

    :goto_21
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_6

    :cond_54
    if-ge v3, v2, :cond_10

    if-gez v3, :cond_55

    goto/16 :goto_7

    .line 386
    :cond_55
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    :pswitch_c
    move v3, v4

    const-wide/16 v4, -0x3

    .line 367
    iput-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const/4 v4, 0x0

    .line 368
    iput-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-gt v3, v2, :cond_56

    if-gez v3, :cond_57

    .line 371
    :cond_56
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    const/16 v2, -0xd

    .line 372
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :cond_57
    :goto_22
    move v2, v12

    :goto_23
    move v4, v2

    goto :goto_21

    .line 807
    :cond_58
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v3, :cond_5b

    iget-boolean v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-eqz v3, :cond_5b

    .line 809
    iget-boolean v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v3, :cond_5a

    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_59

    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_59

    goto :goto_24

    :cond_59
    const/4 v3, 0x7

    goto :goto_25

    :cond_5a
    :goto_24
    const/4 v3, 0x0

    :goto_25
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 810
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 817
    :cond_5b
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    .line 819
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 820
    :goto_26
    iget v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v5, :cond_79

    if-lez v3, :cond_79

    .line 822
    iget v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v4, v5, :cond_5c

    add-int/lit8 v9, v9, 0x1

    .line 825
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 828
    :cond_5c
    iget-byte v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    if-ne v5, v13, :cond_5d

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_5d

    .line 830
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 831
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    goto :goto_26

    :cond_5d
    const/4 v5, 0x0

    .line 834
    iput-byte v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 835
    iget v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    packed-switch v7, :pswitch_data_1

    const/16 v5, 0x30

    const/4 v7, 0x2

    :goto_27
    const/16 v8, 0xa

    :goto_28
    const-wide/16 v10, 0x0

    goto/16 :goto_34

    .line 965
    :pswitch_d
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    const/4 v7, 0x2

    if-le v3, v7, :cond_5e

    .line 967
    iput v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 968
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto :goto_2a

    .line 973
    :cond_5e
    :goto_29
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_5f

    .line 974
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3
    :try_end_8
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_8 .. :try_end_8} :catch_3

    if-nez v3, :cond_5e

    const/4 v3, 0x0

    .line 976
    :try_start_9
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I
    :try_end_9
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_9 .. :try_end_9} :catch_4

    .line 977
    :try_start_a
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 978
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_29

    .line 982
    :cond_5f
    :goto_2a
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_2b

    :pswitch_e
    const/4 v7, 0x2

    .line 945
    iget v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    iget v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    sub-int/2addr v5, v8

    if-nez v5, :cond_60

    const/4 v3, 0x3

    .line 948
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_2b

    :cond_60
    if-le v3, v5, :cond_61

    move v3, v5

    .line 953
    :cond_61
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 954
    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 955
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 956
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 957
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    return v6

    :pswitch_f
    const/4 v7, 0x2

    .line 925
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    if-eq v3, v13, :cond_63

    const/16 v5, 0xa

    if-ne v3, v5, :cond_62

    goto :goto_2c

    :cond_62
    :goto_2b
    const/16 v5, 0x30

    goto/16 :goto_27

    .line 928
    :cond_63
    :goto_2c
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 929
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v3, :cond_66

    .line 931
    iget-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    if-ne v2, v13, :cond_64

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_64

    .line 932
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 933
    :cond_64
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_65

    const/4 v2, 0x0

    goto :goto_2d

    :cond_65
    const/4 v2, 0x7

    :goto_2d
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 934
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    :cond_66
    const/4 v3, 0x6

    .line 938
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_2b

    :pswitch_10
    const/4 v7, 0x2

    .line 894
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    if-eq v3, v13, :cond_6d

    const/16 v5, 0xa

    if-ne v3, v5, :cond_67

    goto :goto_2f

    :cond_67
    if-le v3, v2, :cond_6c

    const/16 v5, 0x3b

    if-ne v3, v5, :cond_68

    goto :goto_2e

    :cond_68
    const/16 v5, 0x30

    if-lt v3, v5, :cond_69

    const/16 v8, 0x39

    if-gt v3, v8, :cond_69

    .line 913
    iget v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v8, v3

    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_27

    :cond_69
    const/16 v8, 0x61

    if-lt v3, v8, :cond_6a

    const/16 v8, 0x66

    if-gt v3, v8, :cond_6a

    .line 915
    iget v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, -0x61

    add-int/2addr v8, v3

    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_27

    :cond_6a
    const/16 v8, 0x41

    if-lt v3, v8, :cond_6b

    const/16 v8, 0x46

    if-gt v3, v8, :cond_6b

    .line 917
    iget v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, -0x41

    add-int/2addr v8, v3

    iput v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_27

    .line 919
    :cond_6b
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad chunk char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6c
    :goto_2e
    const/16 v5, 0x30

    const/4 v3, 0x5

    .line 911
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_27

    :cond_6d
    :goto_2f
    const/16 v5, 0x30

    .line 897
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 899
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v3, :cond_70

    .line 901
    iget-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    if-ne v2, v13, :cond_6e

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6e

    .line 902
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 903
    :cond_6e
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_6f

    const/4 v2, 0x0

    goto :goto_30

    :cond_6f
    const/4 v2, 0x7

    :goto_30
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 904
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    :cond_70
    const/4 v3, 0x6

    .line 908
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_27

    :pswitch_11
    const/16 v5, 0x30

    const/4 v7, 0x2

    .line 878
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v3

    if-eq v3, v13, :cond_73

    const/16 v8, 0xa

    if-ne v3, v8, :cond_71

    goto :goto_31

    :cond_71
    if-gt v3, v2, :cond_72

    .line 882
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B
    :try_end_a
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_28

    :cond_72
    const/4 v3, 0x0

    .line 885
    :try_start_b
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    .line 886
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I
    :try_end_b
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_b .. :try_end_b} :catch_4

    const/4 v3, 0x4

    .line 887
    :try_start_c
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_28

    :cond_73
    const/16 v8, 0xa

    .line 880
    :goto_31
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    goto/16 :goto_28

    .line 847
    :pswitch_12
    iget-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v4, v7

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-nez v2, :cond_75

    .line 850
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_74

    const/4 v2, 0x0

    goto :goto_32

    :cond_74
    const/4 v2, 0x7

    :goto_32
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 851
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    :cond_75
    int-to-long v7, v3

    cmp-long v2, v7, v4

    if-lez v2, :cond_76

    long-to-int v3, v4

    .line 862
    :cond_76
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 863
    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 864
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 865
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 867
    iget-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v7, v2, v4

    if-nez v7, :cond_78

    .line 869
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_77

    const/4 v2, 0x0

    goto :goto_33

    :cond_77
    const/4 v2, 0x7

    :goto_33
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 870
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    :cond_78
    return v6

    .line 838
    :pswitch_13
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 839
    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 840
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 841
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    return v6

    .line 987
    :goto_34
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3
    :try_end_c
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_26

    :cond_79
    return v9

    :catch_3
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_35

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 994
    :goto_35
    iput-boolean v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v3, 0x7

    .line 995
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 996
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36

    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public reset()V
    .locals 5

    .line 1061
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 1062
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, -0xe

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const-wide/16 v2, -0x3

    .line 1063
    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, 0x0

    .line 1064
    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 1065
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 1066
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 1069
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1070
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 1072
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1077
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_3

    .line 1078
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    goto :goto_1

    .line 1081
    :cond_3
    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1082
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1084
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    .line 1085
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 1086
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1087
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    .line 1088
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v2, v4, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 1091
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_6

    .line 1093
    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1096
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_7

    .line 1097
    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1099
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1100
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    return-void
.end method

.method public returnBuffers()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v3, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1113
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1116
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_3

    .line 1119
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1120
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1121
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    :cond_4
    return-void
.end method

.method public setForceContentBuffer(Z)V
    .locals 0

    .line 1173
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    return-void
.end method

.method public setHeadResponse(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    return-void
.end method

.method public setPersistent(Z)V
    .locals 1

    .line 201
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 202
    iget-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez p1, :cond_1

    iget p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz p1, :cond_0

    const/16 v0, -0xe

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x7

    .line 203
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 1128
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const-wide/16 v0, -0x3

    .line 1129
    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    .line 1142
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s{s=%d,l=%d,c=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 2

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
