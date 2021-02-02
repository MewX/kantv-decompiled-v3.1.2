.class public Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeSecOOBFlags.java"


# static fields
.field public static FLAGS_LE_SUPPORTED_HOST:I = 0x2

.field public static FLAGS_OOB_DATA_PRESENT:I = 0x1

.field public static FLAGS_RANDOM_ADDRESS:I = 0x8

.field public static FLAGS_SIMULTANEOUS_LE_BR_EDR:I = 0x4


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 31
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->flags:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->flags:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "OOB Flags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->flags:I

    sget v2, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->FLAGS_OOB_DATA_PRESENT:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "OOB data present"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_0
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->flags:I

    sget v2, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->FLAGS_LE_SUPPORTED_HOST:I

    and-int/2addr v1, v2

    const-string v2, ","

    const/16 v3, 0xa

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "LE supported (Host)"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_2
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->flags:I

    sget v4, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->FLAGS_SIMULTANEOUS_LE_BR_EDR:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, "Simultaneous LE and BR/EDR to Same Device Capable (Host)"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_5
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->flags:I

    sget v2, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;->FLAGS_RANDOM_ADDRESS:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    const-string v1, "Random Address"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    const-string v1, "Public Address"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
