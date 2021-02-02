.class public Lcom/avos/avoscloud/signature/Base64Encoder;
.super Ljava/io/FilterOutputStream;
.source "Base64Encoder.java"


# static fields
.field private static final chars:[C


# instance fields
.field private carryOver:I

.field private charCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 36
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

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

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 149
    :goto_0
    invoke-static {p0}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 5

    .line 159
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    int-to-double v1, v1

    const-wide v3, 0x3ff5eb851eb851ecL    # 1.37

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 160
    new-instance v1, Lcom/avos/avoscloud/signature/Base64Encoder;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/signature/Base64Encoder;-><init>(Ljava/io/OutputStream;)V

    .line 163
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/signature/Base64Encoder;->write([B)V

    .line 164
    invoke-virtual {v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->close()V

    const-string p0, "UTF-8"

    .line 166
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v0, 0x3

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 124
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 125
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 126
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 127
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 128
    :cond_0
    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    .line 130
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 131
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 133
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    .line 71
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-nez v1, :cond_1

    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    .line 73
    iput p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 74
    iget-object p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 78
    :cond_1
    rem-int/lit8 v1, v0, 0x3

    if-ne v1, v2, :cond_2

    .line 79
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    and-int/lit8 p1, p1, 0xf

    .line 80
    iput p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 81
    iget-object p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 85
    :cond_2
    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 86
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x6

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    .line 87
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p1, p1, 0x3f

    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 92
    :cond_3
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    .line 95
    iget p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 p1, p1, 0x39

    if-nez p1, :cond_4

    .line 96
    iget-object p1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_4
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 111
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
