.class final enum Lcom/samsung/multiscreen/Player$ContentType;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Player$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Player$ContentType;

.field public static final enum audio:Lcom/samsung/multiscreen/Player$ContentType;

.field public static final enum bgImage:Lcom/samsung/multiscreen/Player$ContentType;

.field public static final enum logo:Lcom/samsung/multiscreen/Player$ContentType;

.field public static final enum photo:Lcom/samsung/multiscreen/Player$ContentType;

.field public static final enum video:Lcom/samsung/multiscreen/Player$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 72
    new-instance v0, Lcom/samsung/multiscreen/Player$ContentType;

    const/4 v1, 0x0

    const-string v2, "audio"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Player$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    .line 73
    new-instance v0, Lcom/samsung/multiscreen/Player$ContentType;

    const/4 v2, 0x1

    const-string v3, "video"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Player$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    .line 74
    new-instance v0, Lcom/samsung/multiscreen/Player$ContentType;

    const/4 v3, 0x2

    const-string v4, "photo"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/Player$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    .line 75
    new-instance v0, Lcom/samsung/multiscreen/Player$ContentType;

    const/4 v4, 0x3

    const-string v5, "bgImage"

    invoke-direct {v0, v5, v4}, Lcom/samsung/multiscreen/Player$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$ContentType;->bgImage:Lcom/samsung/multiscreen/Player$ContentType;

    .line 76
    new-instance v0, Lcom/samsung/multiscreen/Player$ContentType;

    const/4 v5, 0x4

    const-string v6, "logo"

    invoke-direct {v0, v6, v5}, Lcom/samsung/multiscreen/Player$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$ContentType;->logo:Lcom/samsung/multiscreen/Player$ContentType;

    const/4 v0, 0x5

    .line 71
    new-array v0, v0, [Lcom/samsung/multiscreen/Player$ContentType;

    sget-object v6, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/multiscreen/Player$ContentType;->bgImage:Lcom/samsung/multiscreen/Player$ContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/multiscreen/Player$ContentType;->logo:Lcom/samsung/multiscreen/Player$ContentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/multiscreen/Player$ContentType;->$VALUES:[Lcom/samsung/multiscreen/Player$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Player$ContentType;
    .locals 1

    .line 71
    const-class v0, Lcom/samsung/multiscreen/Player$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Player$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Player$ContentType;
    .locals 1

    .line 71
    sget-object v0, Lcom/samsung/multiscreen/Player$ContentType;->$VALUES:[Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Player$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Player$ContentType;

    return-object v0
.end method
