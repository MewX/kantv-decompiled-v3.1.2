.class public Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeServiceData.java"


# instance fields
.field b:[B

.field uuid:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 28
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    .line 30
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    .line 32
    iput v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->uuid:I

    add-int/lit8 p3, p3, -0x2

    .line 34
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->b:[B

    .line 35
    iget-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->b:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->b:[B

    return-object v0
.end method

.method public getUUID()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->uuid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service data (uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->uuid:I

    invoke-static {v2}, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->hex16(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->b:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 45
    invoke-static {v2}, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;->hex8(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
