.class public Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeSlaveConnectionIntervalRange.java"


# instance fields
.field connIntervalMax:I

.field connIntervalMin:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    const v0, 0xffff

    .line 26
    iput v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMin:I

    .line 27
    iput v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMax:I

    const/4 v0, 0x4

    if-lt p3, v0, :cond_0

    .line 30
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 p2, p2, 0x1

    .line 32
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    .line 34
    iput p3, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMin:I

    .line 35
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 p2, p2, 0x1

    .line 37
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p3

    .line 39
    iput p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMax:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getConnIntervalMax()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMax:I

    return v0
.end method

.method public getConnIntervalMin()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Slave Connection Interval Range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "conn_interval_min: "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMin:I

    const-string v2, "none"

    const-string v3, " msec"

    const/high16 v4, 0x3fa00000    # 1.25f

    const v5, 0xffff

    if-ne v1, v5, :cond_0

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMin:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ",conn_interval_max: "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMax:I

    if-ne v1, v5, :cond_1

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 55
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;->connIntervalMax:I

    int-to-float v2, v2

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :goto_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
