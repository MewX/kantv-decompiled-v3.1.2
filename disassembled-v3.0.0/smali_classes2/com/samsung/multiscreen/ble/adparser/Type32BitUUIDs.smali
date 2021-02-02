.class public Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "Type32BitUUIDs.java"


# instance fields
.field type:I

.field uuids:[I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 26
    iput p1, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->type:I

    .line 27
    div-int/lit8 p4, p4, 0x4

    .line 28
    new-array p1, p4, [I

    iput-object p1, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->uuids:[I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    .line 31
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p3, p3, 0x1

    .line 33
    aget-byte v1, p2, p3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p3, p3, 0x1

    .line 35
    aget-byte v1, p2, p3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p3, p3, 0x1

    .line 37
    aget-byte v1, p2, p3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    add-int/lit8 p3, p3, 0x1

    .line 39
    iget-object v1, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->uuids:[I

    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->type:I

    return v0
.end method

.method public getUUIDs()[I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->uuids:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "flags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown 32Bit UUIDs type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "Service UUIDs: "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "Complete list of 32-bit UUIDs: "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "More 32-bit UUIDs: "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v1, 0x0

    .line 60
    :goto_1
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->uuids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_3

    const-string v2, ","

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->uuids:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;->hex32(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
