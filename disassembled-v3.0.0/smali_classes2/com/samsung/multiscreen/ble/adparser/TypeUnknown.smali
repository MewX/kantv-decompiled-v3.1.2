.class public Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeUnknown.java"


# instance fields
.field unknownData:[B

.field unknownType:I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 27
    iput p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownType:I

    .line 28
    new-array p1, p4, [B

    iput-object p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownData:[B

    .line 29
    iget-object p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownData:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownData:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;->unknownData:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
