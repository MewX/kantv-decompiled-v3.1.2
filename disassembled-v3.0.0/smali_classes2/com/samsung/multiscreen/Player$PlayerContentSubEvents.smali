.class final enum Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayerContentSubEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

.field public static final enum ADDITIONALMEDIAINFO:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

.field public static final enum CHANGEPLAYINGCONTENT:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 122
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    const/4 v1, 0x0

    const-string v2, "ADDITIONALMEDIAINFO"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->ADDITIONALMEDIAINFO:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    .line 123
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    const/4 v2, 0x1

    const-string v3, "CHANGEPLAYINGCONTENT"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->CHANGEPLAYINGCONTENT:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    sget-object v3, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->ADDITIONALMEDIAINFO:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    aput-object v3, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->CHANGEPLAYINGCONTENT:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;
    .locals 1

    .line 121
    const-class v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;
    .locals 1

    .line 121
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    return-object v0
.end method
