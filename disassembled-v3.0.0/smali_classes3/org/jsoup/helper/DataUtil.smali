.class public final Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# static fields
.field private static final UNICODE_BOM:I = 0xfeff

.field static final boundaryLength:I = 0x20

.field private static final bufferSize:I = 0x20000

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharset:Ljava/lang/String; = "UTF-8"

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?i)\\bcharset=\\s*(?:\"|\')?([^\\s,;\"\']*)"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000

    .line 84
    new-array v0, v0, [B

    .line 86
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 236
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x4

    .line 237
    new-array v0, v0, [B

    .line 238
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 239
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    const/4 v1, 0x0

    .line 242
    aget-byte v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-nez v2, :cond_1

    aget-byte v2, v0, v7

    if-nez v2, :cond_1

    aget-byte v2, v0, v4

    if-ne v2, v5, :cond_1

    aget-byte v2, v0, v3

    if-eq v2, v6, :cond_2

    :cond_1
    aget-byte v2, v0, v1

    if-ne v2, v6, :cond_3

    aget-byte v2, v0, v7

    if-ne v2, v5, :cond_3

    aget-byte v2, v0, v4

    if-nez v2, :cond_3

    aget-byte v2, v0, v3

    if-nez v2, :cond_3

    :cond_2
    const-string p1, "UTF-32"

    goto :goto_0

    .line 245
    :cond_3
    aget-byte v2, v0, v1

    if-ne v2, v5, :cond_4

    aget-byte v2, v0, v7

    if-eq v2, v6, :cond_5

    :cond_4
    aget-byte v2, v0, v1

    if-ne v2, v6, :cond_6

    aget-byte v2, v0, v7

    if-ne v2, v5, :cond_6

    :cond_5
    const-string p1, "UTF-16"

    goto :goto_0

    .line 248
    :cond_6
    aget-byte v1, v0, v1

    const/16 v2, -0x11

    if-ne v1, v2, :cond_7

    aget-byte v1, v0, v7

    const/16 v2, -0x45

    if-ne v1, v2, :cond_7

    aget-byte v0, v0, v4

    const/16 v1, -0x41

    if-ne v0, v1, :cond_7

    .line 250
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string p1, "UTF-8"

    :cond_7
    :goto_0
    return-object p1
.end method

.method static emptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 201
    :cond_0
    sget-object v1, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "charset="

    const-string v1, ""

    .line 204
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->readFileToByteBuffer(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 47
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 60
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 74
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method static mimeBoundary()Ljava/lang/String;
    .locals 6

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 228
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 230
    sget-object v4, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    array-length v5, v4

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static parseByteData(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 8

    .line 99
    invoke-static {p0, p1}, Lorg/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const-string v1, "UTF-8"

    .line 103
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p3, v2, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    const-string v4, "meta[http-equiv=content-type], meta[charset]"

    .line 105
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "http-equiv"

    .line 108
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "content"

    .line 109
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-nez v5, :cond_1

    const-string v6, "charset"

    .line 111
    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    if-nez v4, :cond_3

    .line 116
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->childNodeSize()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Document;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v6

    instance-of v6, v6, Lorg/jsoup/nodes/XmlDeclaration;

    if-eqz v6, :cond_3

    .line 117
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Document;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/XmlDeclaration;

    .line 118
    invoke-virtual {v5}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "encoding"

    .line 119
    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    :cond_3
    invoke-static {v4}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 128
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_2

    :cond_5
    const-string v1, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 132
    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-nez v0, :cond_6

    .line 136
    invoke-virtual {p3, v2, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;

    :cond_6
    return-object v0
.end method

.method static readFileToByteBuffer(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    .line 181
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 182
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    throw p0
.end method

.method static readToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, v0}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "maxSize must be 0 (unlimited) or larger"

    .line 150
    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/high16 v2, 0x20000

    .line 152
    new-array v3, v2, [B

    .line 153
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 158
    :goto_2
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_4

    if-le v2, p1, :cond_3

    .line 162
    invoke-virtual {v4, v3, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 169
    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    sub-int/2addr p1, v2

    .line 167
    :cond_4
    invoke-virtual {v4, v3, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 215
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method
