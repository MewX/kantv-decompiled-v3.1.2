.class public Lorg/eclipse/jetty/util/B64Code;
.super Ljava/lang/Object;
.source "B64Code.java"


# static fields
.field static final __pad:C = '='

.field static final __rfc1421alphabet:[C

.field static final __rfc1421nibbles:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    .line 38
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/16 v1, 0x100

    .line 50
    new-array v2, v1, [B

    sput-object v2, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 52
    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 54
    sget-object v3, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    aget-char v4, v4, v1

    int-to-byte v4, v4

    aput-byte v1, v3, v4

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    .line 55
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    const/16 v1, 0x3d

    aput-byte v2, v0, v1

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 246
    invoke-static {p0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p1, :cond_0

    .line 248
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_9

    const/4 v0, 0x4

    .line 378
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 381
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    add-int/lit8 v5, v3, 0x1

    .line 383
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3d

    if-ne v3, v6, :cond_1

    goto :goto_3

    .line 388
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move v3, v5

    goto :goto_0

    .line 391
    :cond_2
    sget-object v6, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    aget-byte v7, v6, v3

    if-ltz v7, :cond_7

    add-int/lit8 v7, v4, 0x1

    .line 395
    aget-byte v3, v6, v3

    aput-byte v3, v1, v4

    const/4 v3, 0x1

    if-eq v7, v3, :cond_6

    const/4 v4, 0x2

    if-eq v7, v4, :cond_5

    const/4 v6, 0x3

    if-eq v7, v6, :cond_4

    if-eq v7, v0, :cond_3

    goto :goto_2

    .line 408
    :cond_3
    aget-byte v3, v1, v4

    shl-int/lit8 v3, v3, 0x6

    aget-byte v4, v1, v6

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    goto :goto_1

    .line 405
    :cond_4
    aget-byte v3, v1, v3

    shl-int/2addr v3, v0

    aget-byte v6, v1, v4

    ushr-int/lit8 v4, v6, 0x2

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 402
    :cond_5
    aget-byte v6, v1, v2

    shl-int/lit8 v4, v6, 0x2

    aget-byte v3, v1, v3

    ushr-int/2addr v3, v0

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    :goto_2
    move v4, v7

    goto :goto_1

    .line 393
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not B64 encoded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-void

    .line 375
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No outputstream for decoded bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 354
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 355
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([C)[B
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 270
    :cond_0
    array-length v0, p0

    .line 271
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 275
    aget-char v2, p0, v0

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 279
    new-array p0, v2, [B

    return-object p0

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 282
    div-int/lit8 v0, v0, 0x4

    .line 283
    new-array v3, v0, [B

    .line 286
    div-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    :goto_1
    const-string v6, "Not B64 encoded"

    if-ge v2, v4, :cond_4

    .line 292
    :try_start_0
    sget-object v7, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v8, v5, 0x1

    :try_start_1
    aget-char v5, p0, v5

    aget-byte v5, v7, v5

    .line 293
    sget-object v7, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    add-int/lit8 v9, v8, 0x1

    :try_start_2
    aget-char v8, p0, v8

    aget-byte v7, v7, v8

    .line 294
    sget-object v8, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v10, v9, 0x1

    :try_start_3
    aget-char v9, p0, v9

    aget-byte v8, v8, v9

    .line 295
    sget-object v9, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v11, v10, 0x1

    :try_start_4
    aget-char v10, p0, v10

    aget-byte v9, v9, v10

    if-ltz v5, :cond_3

    if-ltz v7, :cond_3

    if-ltz v8, :cond_3

    if-ltz v9, :cond_3

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v10, v7, 0x4

    or-int/2addr v5, v10

    int-to-byte v5, v5

    .line 299
    aput-byte v5, v3, v2

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v5, v7, 0x4

    ushr-int/lit8 v7, v8, 0x2

    or-int/2addr v5, v7

    int-to-byte v5, v5

    .line 300
    aput-byte v5, v3, v6

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v6, v8, 0x6

    or-int/2addr v6, v9

    int-to-byte v6, v6

    .line 301
    aput-byte v6, v3, v2

    move v2, v5

    move v5, v11

    goto :goto_1

    .line 297
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move v8, v11

    goto/16 :goto_2

    :catch_1
    move v8, v10

    goto/16 :goto_2

    :catch_2
    move v8, v9

    goto/16 :goto_2

    :catch_3
    move v8, v5

    goto :goto_2

    :cond_4
    if-eq v0, v2, :cond_9

    .line 306
    :try_start_5
    rem-int/lit8 v0, v0, 0x3

    const/4 v4, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v4, :cond_5

    goto/16 :goto_3

    .line 309
    :cond_5
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v1, v5, 0x1

    :try_start_6
    aget-char v5, p0, v5

    aget-byte v0, v0, v5

    .line 310
    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    add-int/lit8 v7, v1, 0x1

    :try_start_7
    aget-char v1, p0, v1

    aget-byte v1, v5, v1

    .line 311
    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v8, v7, 0x1

    :try_start_8
    aget-char p0, p0, v7

    aget-byte p0, v5, p0

    if-ltz v0, :cond_6

    if-ltz v1, :cond_6

    if-ltz p0, :cond_6

    add-int/lit8 v5, v2, 0x1

    shl-int/2addr v0, v4

    ushr-int/lit8 v6, v1, 0x4

    or-int/2addr v0, v6

    int-to-byte v0, v0

    .line 314
    aput-byte v0, v3, v2

    shl-int/lit8 v0, v1, 0x4

    ushr-int/2addr p0, v4

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 315
    aput-byte p0, v3, v5

    goto :goto_3

    .line 313
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    .line 319
    :cond_7
    :try_start_9
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3

    add-int/lit8 v1, v5, 0x1

    :try_start_a
    aget-char v5, p0, v5

    aget-byte v0, v0, v5

    .line 320
    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    add-int/lit8 v7, v1, 0x1

    :try_start_b
    aget-char p0, p0, v1

    aget-byte p0, v5, p0

    if-ltz v0, :cond_8

    if-ltz p0, :cond_8

    shl-int/2addr v0, v4

    ushr-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 323
    aput-byte p0, v3, v2

    goto :goto_3

    .line 322
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move v8, v7

    goto :goto_2

    :catch_5
    move v8, v1

    .line 333
    :catch_6
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was not B64 encoded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    return-object v3

    .line 272
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input block size is not 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/B64Code;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "ISO-8859-1"

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 95
    :goto_0
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static encode(ILjava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v1, -0x4000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 423
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v1, 0x3f00000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x14

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 424
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const v1, 0xfc000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xe

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 425
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v1, p0, 0x3f00

    shr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 426
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v1, p0, 0xfc

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 427
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v0, p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/16 p0, 0x3d

    .line 428
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public static encode(JLjava/lang/Appendable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, -0x4

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 435
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v2, -0x4000000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v2, v2, 0x3f

    aget-char v0, v0, v2

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 436
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v2, 0x3f00000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0x3f

    aget-char v0, v0, v2

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 437
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const v2, 0xfc000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0xe

    and-int/lit8 v2, v2, 0x3f

    aget-char v0, v0, v2

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 438
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v2, v1, 0x3f00

    shr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x3f

    aget-char v0, v0, v2

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 439
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v2, v1, 0xfc

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v0, v0, v2

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 441
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    const/16 v2, 0x1c

    shr-long v2, p0, v2

    long-to-int v3, v2

    and-int/lit8 v2, v3, 0xf

    add-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    long-to-int p1, p0

    const p0, 0xfffffff

    and-int/2addr p0, p1

    .line 444
    sget-object p1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v0, 0xfc00000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x16

    and-int/lit8 v0, v0, 0x3f

    aget-char p1, p1, v0

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 445
    sget-object p1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v0, 0x3f0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0x3f

    aget-char p1, p1, v0

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 446
    sget-object p1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const v0, 0xfc00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x3f

    aget-char p1, p1, v0

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 447
    sget-object p1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v0, p0, 0x3f0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    aget-char p1, p1, v0

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 448
    sget-object p1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, p1, p0

    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public static encode([B)[C
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x2

    .line 112
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 113
    new-array v1, v1, [C

    .line 117
    div-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v2, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 120
    aget-byte v3, p0, v3

    add-int/lit8 v7, v6, 0x1

    .line 121
    aget-byte v6, p0, v6

    add-int/lit8 v8, v7, 0x1

    .line 122
    aget-byte v7, p0, v7

    add-int/lit8 v9, v4, 0x1

    .line 123
    sget-object v10, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v11, v3, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v10, v11

    aput-char v11, v1, v4

    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v11, v6, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v3, v11

    .line 124
    aget-char v3, v10, v3

    aput-char v3, v1, v9

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v6, 0x2

    and-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v6, v7, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    .line 125
    aget-char v5, v10, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0x3f

    .line 126
    aget-char v5, v10, v5

    aput-char v5, v1, v3

    move v3, v8

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_4

    .line 131
    rem-int/lit8 v0, v0, 0x3

    const/16 v2, 0x3d

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 134
    aget-byte v3, p0, v3

    .line 135
    aget-byte p0, p0, v0

    add-int/lit8 v0, v4, 0x1

    .line 136
    sget-object v6, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v0, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v7, p0, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v3, v7

    .line 137
    aget-char v3, v6, v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v4, 0x1

    shl-int/2addr p0, v5

    and-int/lit8 p0, p0, 0x3f

    .line 138
    aget-char p0, v6, p0

    aput-char p0, v1, v4

    .line 139
    aput-char v2, v1, v0

    goto :goto_1

    .line 143
    :cond_3
    aget-byte p0, p0, v3

    add-int/lit8 v0, v4, 0x1

    .line 144
    sget-object v3, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v5, p0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v3, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v0, 0x1

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    .line 145
    aget-char p0, v3, p0

    aput-char p0, v1, v0

    add-int/lit8 p0, v4, 0x1

    .line 146
    aput-char v2, v1, v4

    .line 147
    aput-char v2, v1, p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static encode([BZ)[C
    .locals 14

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 172
    invoke-static {p0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object p0

    return-object p0

    .line 174
    :cond_1
    array-length p1, p0

    add-int/lit8 v0, p1, 0x2

    .line 175
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 176
    div-int/lit8 v1, v0, 0x4c

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 177
    new-array v0, v0, [C

    .line 181
    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0xa

    const/16 v7, 0xd

    if-ge v3, v1, :cond_3

    add-int/lit8 v8, v3, 0x1

    .line 185
    aget-byte v3, p0, v3

    add-int/lit8 v9, v8, 0x1

    .line 186
    aget-byte v8, p0, v8

    add-int/lit8 v10, v9, 0x1

    .line 187
    aget-byte v9, p0, v9

    add-int/lit8 v11, v4, 0x1

    .line 188
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v13, v3, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v13, v12, v13

    aput-char v13, v0, v4

    add-int/lit8 v4, v11, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v13, v8, 0x4

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v3, v13

    .line 189
    aget-char v3, v12, v3

    aput-char v3, v0, v11

    add-int/lit8 v3, v4, 0x1

    shl-int/2addr v8, v2

    and-int/lit8 v8, v8, 0x3f

    ushr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v8, v11

    .line 190
    aget-char v8, v12, v8

    aput-char v8, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v8, v9, 0x3f

    .line 191
    aget-char v8, v12, v8

    aput-char v8, v0, v3

    add-int/lit8 v5, v5, 0x4

    .line 193
    rem-int/lit8 v3, v5, 0x4c

    if-nez v3, :cond_2

    add-int/lit8 v3, v4, 0x1

    .line 195
    aput-char v7, v0, v4

    add-int/lit8 v4, v3, 0x1

    .line 196
    aput-char v6, v0, v3

    :cond_2
    move v3, v10

    goto :goto_0

    :cond_3
    if-eq p1, v3, :cond_6

    .line 202
    rem-int/lit8 p1, p1, 0x3

    const/16 v1, 0x3d

    const/4 v5, 0x1

    if-eq p1, v5, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, v3, 0x1

    .line 205
    aget-byte v3, p0, v3

    .line 206
    aget-byte p0, p0, p1

    add-int/lit8 p1, v4, 0x1

    .line 207
    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v8, v3, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v5, v8

    aput-char v8, v0, v4

    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v8, p0, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v3, v8

    .line 208
    aget-char v3, v5, v3

    aput-char v3, v0, p1

    add-int/lit8 p1, v4, 0x1

    shl-int/2addr p0, v2

    and-int/lit8 p0, p0, 0x3f

    .line 209
    aget-char p0, v5, p0

    aput-char p0, v0, v4

    add-int/lit8 v4, p1, 0x1

    .line 210
    aput-char v1, v0, p1

    goto :goto_1

    .line 214
    :cond_5
    aget-byte p0, p0, v3

    add-int/lit8 p1, v4, 0x1

    .line 215
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v3, p0, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v2, v3

    aput-char v3, v0, v4

    add-int/lit8 v3, p1, 0x1

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    .line 216
    aget-char p0, v2, p0

    aput-char p0, v0, p1

    add-int/lit8 p0, v3, 0x1

    .line 217
    aput-char v1, v0, v3

    add-int/lit8 v4, p0, 0x1

    .line 218
    aput-char v1, v0, p0

    :cond_6
    :goto_1
    add-int/lit8 p0, v4, 0x1

    .line 226
    aput-char v7, v0, v4

    .line 227
    aput-char v6, v0, p0

    return-object v0
.end method
