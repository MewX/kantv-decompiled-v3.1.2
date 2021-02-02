.class final enum Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;
.super Ljava/lang/Enum;
.source "BLESearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/BLESearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

.field public static final enum AVDevice:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

.field public static final enum Mobile:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

.field public static final enum PXD:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

.field public static final enum TV:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

.field public static final enum Unknown:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;


# instance fields
.field private final deviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 61
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1, v1}, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->Unknown:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    .line 62
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    const/4 v2, 0x1

    const-string v3, "TV"

    invoke-direct {v0, v3, v2, v2}, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->TV:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    .line 63
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    const/4 v3, 0x2

    const-string v4, "Mobile"

    invoke-direct {v0, v4, v3, v3}, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->Mobile:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    .line 64
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    const/4 v4, 0x3

    const-string v5, "PXD"

    invoke-direct {v0, v5, v4, v4}, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->PXD:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    .line 65
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    const/4 v5, 0x4

    const-string v6, "AVDevice"

    invoke-direct {v0, v6, v5, v5}, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->AVDevice:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    sget-object v6, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->Unknown:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->TV:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->Mobile:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->PXD:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->AVDevice:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->$VALUES:[Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->deviceType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;
    .locals 1

    .line 60
    const-class v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->$VALUES:[Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->deviceType:I

    return v0
.end method
