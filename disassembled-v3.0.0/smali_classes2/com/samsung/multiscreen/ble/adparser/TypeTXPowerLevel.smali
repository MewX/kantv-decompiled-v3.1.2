.class public Lcom/samsung/multiscreen/ble/adparser/TypeTXPowerLevel;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeTXPowerLevel.java"


# instance fields
.field txpower:B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 26
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeTXPowerLevel;->txpower:B

    return-void
.end method


# virtual methods
.method public getTXPowerLevel()B
    .locals 1

    .line 37
    iget-byte v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeTXPowerLevel;->txpower:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TX Power Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeTXPowerLevel;->txpower:B

    .line 32
    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dBm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
