.class final enum Lcom/samsung/multiscreen/Player$PlayerMiscEvents;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayerMiscEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Player$PlayerMiscEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

.field public static final enum setWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

.field public static final enum unsetWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 110
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    const/4 v1, 0x0

    const-string v2, "setWatermark"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->setWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    .line 111
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    const/4 v2, 0x1

    const-string v3, "unsetWatermark"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->unsetWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    sget-object v3, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->setWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    aput-object v3, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->unsetWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Player$PlayerMiscEvents;
    .locals 1

    .line 109
    const-class v0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Player$PlayerMiscEvents;
    .locals 1

    .line 109
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    return-object v0
.end method
