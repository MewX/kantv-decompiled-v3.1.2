.class final enum Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayerQueueSubEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

.field public static final enum clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

.field public static final enum dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

.field public static final enum enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

.field public static final enum fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 115
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    const/4 v1, 0x0

    const-string v2, "enqueue"

    invoke-direct {v0, v2, v1}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    .line 116
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    const/4 v2, 0x1

    const-string v3, "dequeue"

    invoke-direct {v0, v3, v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    .line 117
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    const/4 v3, 0x2

    const-string v4, "clear"

    invoke-direct {v0, v4, v3}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    .line 118
    new-instance v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    const/4 v4, 0x3

    const-string v5, "fetch"

    invoke-direct {v0, v5, v4}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    const/4 v0, 0x4

    .line 114
    new-array v0, v0, [Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    sget-object v5, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    aput-object v5, v0, v1

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;
    .locals 1

    .line 114
    const-class v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    return-object p0
.end method

.method public static values()[Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;
    .locals 1

    .line 114
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->$VALUES:[Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v0}, [Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    return-object v0
.end method
