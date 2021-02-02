.class public abstract Lcom/samsung/multiscreen/ble/adparser/AdElement;
.super Ljava/lang/Object;
.source "AdElement.java"


# static fields
.field private static hexDigits:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hex16(I)Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 40
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 41
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 42
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex32(I)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    .line 47
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    .line 48
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    .line 49
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 50
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 51
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 52
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex8(I)Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 34
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 35
    invoke-static {p0, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hexDigit(II)C
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    .line 29
    sget-object p1, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigits:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static uuid128(IIII)Ljava/lang/String;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/2addr p1, v1

    shr-int/lit8 v2, p2, 0x10

    and-int/2addr v1, v2

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hex32(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hex16(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {p1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hex16(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hex16(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xc

    .line 69
    invoke-static {p2, p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    .line 70
    invoke-static {p2, p1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    .line 71
    invoke-static {p2, v0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 72
    invoke-static {p2, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, 0x1c

    .line 73
    invoke-static {p3, p2}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, 0x18

    .line 74
    invoke-static {p3, p2}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, 0x14

    .line 75
    invoke-static {p3, p2}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, 0x10

    .line 76
    invoke-static {p3, p2}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p3, p0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {p3, p1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p3, v0}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {p3, v1}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->hexDigit(II)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract toString()Ljava/lang/String;
.end method
