.class public Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeByteDump.java"


# instance fields
.field b:[B

.field type:I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 27
    iput p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->type:I

    .line 28
    new-array p1, p4, [B

    iput-object p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->b:[B

    .line 29
    iget-object p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->b:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->b:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "TK Value: "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v1, "Simple Pairing Randomizer R: "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v1, "Simple Pairing Hash C: "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v1, "Class of device: "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v1, 0x0

    .line 52
    :goto_1
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->b:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 56
    invoke-static {v2}, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;->hex8(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
