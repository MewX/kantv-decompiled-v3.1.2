.class public final enum Lcom/tencent/wxop/stat/event/EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wxop/stat/event/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADDITION:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum CUSTOM:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum ERROR:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum MONITOR_STAT:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum MTA_GAME_USER:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum NETWORK_DETECTOR:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum NETWORK_MONITOR:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum PAGE_VIEW:Lcom/tencent/wxop/stat/event/EventType;

.field public static final enum SESSION_ENV:Lcom/tencent/wxop/stat/event/EventType;

.field private static final synthetic b:[Lcom/tencent/wxop/stat/event/EventType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PAGE_VIEW"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->PAGE_VIEW:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/4 v3, 0x2

    const-string v4, "SESSION_ENV"

    invoke-direct {v0, v4, v2, v3}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->SESSION_ENV:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v3, v4}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->ERROR:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const-string v5, "CUSTOM"

    const/16 v6, 0x3e8

    invoke-direct {v0, v5, v4, v6}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->CUSTOM:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/4 v5, 0x4

    const-string v6, "ADDITION"

    const/16 v7, 0x3e9

    invoke-direct {v0, v6, v5, v7}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->ADDITION:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/4 v6, 0x5

    const-string v7, "MONITOR_STAT"

    const/16 v8, 0x3ea

    invoke-direct {v0, v7, v6, v8}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->MONITOR_STAT:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/4 v7, 0x6

    const-string v8, "MTA_GAME_USER"

    const/16 v9, 0x3eb

    invoke-direct {v0, v8, v7, v9}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->MTA_GAME_USER:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/4 v8, 0x7

    const-string v9, "NETWORK_MONITOR"

    const/16 v10, 0x3ec

    invoke-direct {v0, v9, v8, v10}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_MONITOR:Lcom/tencent/wxop/stat/event/EventType;

    new-instance v0, Lcom/tencent/wxop/stat/event/EventType;

    const/16 v9, 0x8

    const-string v10, "NETWORK_DETECTOR"

    const/16 v11, 0x3ed

    invoke-direct {v0, v10, v9, v11}, Lcom/tencent/wxop/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/wxop/stat/event/EventType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/tencent/wxop/stat/event/EventType;

    sget-object v10, Lcom/tencent/wxop/stat/event/EventType;->PAGE_VIEW:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->SESSION_ENV:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->ERROR:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->CUSTOM:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->ADDITION:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->MONITOR_STAT:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->MTA_GAME_USER:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_MONITOR:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/wxop/stat/event/EventType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/tencent/wxop/stat/event/EventType;->b:[Lcom/tencent/wxop/stat/event/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/wxop/stat/event/EventType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wxop/stat/event/EventType;
    .locals 1

    const-class v0, Lcom/tencent/wxop/stat/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wxop/stat/event/EventType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wxop/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/event/EventType;->b:[Lcom/tencent/wxop/stat/event/EventType;

    invoke-virtual {v0}, [Lcom/tencent/wxop/stat/event/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wxop/stat/event/EventType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/event/EventType;->a:I

    return v0
.end method
