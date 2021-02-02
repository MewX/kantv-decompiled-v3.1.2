.class public Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "Type128BitUUIDs.java"


# instance fields
.field type:I

.field uuids:[Ljava/util/UUID;


# direct methods
.method public constructor <init>(I[BII)V
    .locals 17

    move-object/from16 v0, p0

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    move/from16 v1, p1

    .line 28
    iput v1, v0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->type:I

    const/16 v1, 0x10

    .line 29
    div-int/lit8 v2, p4, 0x10

    .line 30
    new-array v3, v2, [Ljava/util/UUID;

    iput-object v3, v0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->uuids:[Ljava/util/UUID;

    const/4 v3, 0x0

    move/from16 v4, p3

    :goto_0
    if-ge v3, v2, :cond_0

    .line 33
    aget-byte v5, p2, v4

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    .line 35
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v11, 0x8

    shl-long/2addr v9, v11

    or-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    .line 37
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    shl-long/2addr v9, v1

    or-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    .line 39
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v12, 0x18

    shl-long/2addr v9, v12

    or-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    .line 41
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v13, 0x20

    shl-long/2addr v9, v13

    or-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    .line 43
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v14, 0x28

    shl-long/2addr v9, v14

    or-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    .line 45
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v15, 0x30

    shl-long/2addr v9, v15

    or-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    .line 47
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v16, 0x38

    shl-long v9, v9, v16

    or-long/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    .line 49
    aget-byte v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-int/lit8 v4, v4, 0x1

    .line 51
    aget-byte v15, p2, v4

    int-to-long v14, v15

    and-long/2addr v14, v7

    shl-long/2addr v14, v11

    or-long/2addr v9, v14

    add-int/lit8 v4, v4, 0x1

    .line 53
    aget-byte v11, p2, v4

    int-to-long v14, v11

    and-long/2addr v14, v7

    shl-long/2addr v14, v1

    or-long/2addr v9, v14

    add-int/lit8 v4, v4, 0x1

    .line 55
    aget-byte v11, p2, v4

    int-to-long v14, v11

    and-long/2addr v14, v7

    shl-long v11, v14, v12

    or-long/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    .line 57
    aget-byte v11, p2, v4

    int-to-long v11, v11

    and-long/2addr v11, v7

    shl-long/2addr v11, v13

    or-long/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    .line 59
    aget-byte v11, p2, v4

    int-to-long v11, v11

    and-long/2addr v11, v7

    const/16 v13, 0x28

    shl-long/2addr v11, v13

    or-long/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    .line 61
    aget-byte v11, p2, v4

    int-to-long v11, v11

    and-long/2addr v11, v7

    const/16 v13, 0x30

    shl-long/2addr v11, v13

    or-long/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    .line 63
    aget-byte v11, p2, v4

    int-to-long v11, v11

    and-long/2addr v7, v11

    shl-long v7, v7, v16

    or-long/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    .line 65
    iget-object v9, v0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->uuids:[Ljava/util/UUID;

    new-instance v10, Ljava/util/UUID;

    invoke-direct {v10, v7, v8, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->type:I

    return v0
.end method

.method public getUUIDs()[Ljava/util/UUID;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->uuids:[Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "flags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown 32Bit UUIDs type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->type:I

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
    const-string v1, "Complete list of 32-bit UUIDs: "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "More 32-bit UUIDs: "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v1, 0x0

    .line 83
    :goto_1
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->uuids:[Ljava/util/UUID;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_2

    const-string v2, ","

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;->uuids:[Ljava/util/UUID;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
