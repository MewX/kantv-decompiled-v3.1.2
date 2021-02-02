.class public final enum Lcom/samsung/multiscreen/Player$RepeatMode;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RepeatMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Player$RepeatMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Player$RepeatMode;

.field public static final enum repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

.field public static final enum repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

.field public static final enum repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 138
    new-instance v0, Lcom/samsung/multiscreen/Player$RepeatMode;

    const/4 v1, 0x0

    const-string v2, "repeatOff"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Player$RepeatMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    .line 139
    new-instance v0, Lcom/samsung/multiscreen/Player$RepeatMode;

    const/4 v2, 0x1

    const-string v3, "repeatSingle"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Player$RepeatMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    .line 140
    new-instance v0, Lcom/samsung/multiscreen/Player$RepeatMode;

    const/4 v3, 0x2

    const-string v4, "repeatAll"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/Player$RepeatMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    const/4 v0, 0x3

    .line 137
    new-array v0, v0, [Lcom/samsung/multiscreen/Player$RepeatMode;

    sget-object v4, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->$VALUES:[Lcom/samsung/multiscreen/Player$RepeatMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Player$RepeatMode;
    .locals 1

    .line 137
    const-class v0, Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Player$RepeatMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Player$RepeatMode;
    .locals 1

    .line 137
    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->$VALUES:[Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Player$RepeatMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Player$RepeatMode;

    return-object v0
.end method
