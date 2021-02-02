.class public Lcom/samsung/multiscreen/ble/adparser/TypeString;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeString.java"


# instance fields
.field s:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 26
    iput p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeString;->type:I

    .line 27
    new-array p1, p4, [B

    const/4 v0, 0x0

    .line 28
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeString;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeString;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeString;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeString;->type:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown string type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeString;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "Local name: "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "Short local name: "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "\'"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    iget-object v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeString;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
