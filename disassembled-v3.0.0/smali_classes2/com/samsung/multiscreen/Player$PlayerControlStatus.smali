.class final enum Lcom/samsung/multiscreen/Player$PlayerControlStatus;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayerControlStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Player$PlayerControlStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Player$PlayerControlStatus;

.field public static final enum mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

.field public static final enum repeat:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

.field public static final enum shuffle:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

.field public static final enum volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 144
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    const/4 v1, 0x0

    const-string v2, "volume"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    .line 145
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    const/4 v2, 0x1

    const-string v3, "mute"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    .line 146
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    const/4 v3, 0x2

    const-string v4, "repeat"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    .line 147
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    const/4 v4, 0x3

    const-string v5, "shuffle"

    invoke-direct {v0, v5, v4}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    const/4 v0, 0x4

    .line 143
    new-array v0, v0, [Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    sget-object v5, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Player$PlayerControlStatus;
    .locals 1

    .line 143
    const-class v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Player$PlayerControlStatus;
    .locals 1

    .line 143
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Player$PlayerControlStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    return-object v0
.end method
