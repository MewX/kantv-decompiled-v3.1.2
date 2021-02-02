.class final enum Lcom/samsung/multiscreen/Service$SecureModeState;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SecureModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Service$SecureModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Service$SecureModeState;

.field public static final enum NotSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

.field public static final enum Supported:Lcom/samsung/multiscreen/Service$SecureModeState;

.field public static final enum Unknown:Lcom/samsung/multiscreen/Service$SecureModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    new-instance v0, Lcom/samsung/multiscreen/Service$SecureModeState;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Service$SecureModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Service$SecureModeState;->Unknown:Lcom/samsung/multiscreen/Service$SecureModeState;

    .line 109
    new-instance v0, Lcom/samsung/multiscreen/Service$SecureModeState;

    const/4 v2, 0x1

    const-string v3, "NotSupported"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Service$SecureModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Service$SecureModeState;->NotSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    .line 110
    new-instance v0, Lcom/samsung/multiscreen/Service$SecureModeState;

    const/4 v3, 0x2

    const-string v4, "Supported"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/Service$SecureModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Service$SecureModeState;->Supported:Lcom/samsung/multiscreen/Service$SecureModeState;

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Lcom/samsung/multiscreen/Service$SecureModeState;

    sget-object v4, Lcom/samsung/multiscreen/Service$SecureModeState;->Unknown:Lcom/samsung/multiscreen/Service$SecureModeState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Service$SecureModeState;->NotSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Service$SecureModeState;->Supported:Lcom/samsung/multiscreen/Service$SecureModeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/multiscreen/Service$SecureModeState;->$VALUES:[Lcom/samsung/multiscreen/Service$SecureModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Service$SecureModeState;
    .locals 1

    .line 107
    const-class v0, Lcom/samsung/multiscreen/Service$SecureModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Service$SecureModeState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Service$SecureModeState;
    .locals 1

    .line 107
    sget-object v0, Lcom/samsung/multiscreen/Service$SecureModeState;->$VALUES:[Lcom/samsung/multiscreen/Service$SecureModeState;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Service$SecureModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Service$SecureModeState;

    return-object v0
.end method
