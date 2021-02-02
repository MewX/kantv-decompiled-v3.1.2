.class public Lcom/samsung/multiscreen/ble/adparser/TypeFlags;
.super Lcom/samsung/multiscreen/ble/adparser/AdElement;
.source "TypeFlags.java"


# static fields
.field public static FLAGS_BR_EDR_NOT_SUPPORTED:I = 0x4

.field public static FLAGS_LE_GENERAL_DISCOVERABLE_MODE:I = 0x2

.field public static FLAGS_LE_LIMITED_DISCOVERABLE_MODE:I = 0x1

.field public static FLAGS_SIMULTANEOUS_LE_CONTROLLER:I = 0x8

.field public static FLAGS_SIMULTANEOUS_LE_HOST:I = 0x10


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;-><init>()V

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->flags:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->flags:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "flags:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 37
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->flags:I

    sget v2, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->FLAGS_LE_LIMITED_DISCOVERABLE_MODE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "LE Limited Discoverable Mode"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_0
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->flags:I

    sget v2, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->FLAGS_LE_GENERAL_DISCOVERABLE_MODE:I

    and-int/2addr v1, v2

    const-string v2, ","

    const/4 v3, 0x6

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "LE General Discoverable Mode"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_2
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->flags:I

    sget v4, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->FLAGS_BR_EDR_NOT_SUPPORTED:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, "BR/EDR Not Supported"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_4
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->flags:I

    sget v4, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->FLAGS_SIMULTANEOUS_LE_CONTROLLER:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "Simultaneous LE and BR/EDR to Same Device Capable (Controller)"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_6
    iget v1, p0, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->flags:I

    sget v4, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;->FLAGS_SIMULTANEOUS_LE_HOST:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const-string v1, "Simultaneous LE and BR/EDR to Same Device Capable (Host)"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
