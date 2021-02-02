.class public final enum Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;
.super Ljava/lang/Enum;
.source "AVOSCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVOSCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SERVER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

.field public static final enum API:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

.field public static final enum ENGINE:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

.field public static final enum PUSH:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

.field public static final enum RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

.field public static final enum STATS:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 61
    new-instance v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    const/4 v1, 0x0

    const-string v2, "API"

    const-string v3, "api"

    invoke-direct {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->API:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    new-instance v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    const/4 v2, 0x1

    const-string v3, "PUSH"

    const-string v4, "push"

    invoke-direct {v0, v3, v2, v4}, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->PUSH:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    new-instance v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    const/4 v3, 0x2

    const-string v4, "RTM"

    const-string v5, "rtm"

    invoke-direct {v0, v4, v3, v5}, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    new-instance v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    const/4 v4, 0x3

    const-string v5, "STATS"

    const-string v6, "stats"

    invoke-direct {v0, v5, v4, v6}, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->STATS:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    new-instance v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    const/4 v5, 0x4

    const-string v6, "ENGINE"

    const-string v7, "engine"

    invoke-direct {v0, v6, v5, v7}, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->ENGINE:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    sget-object v6, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->API:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    aput-object v6, v0, v1

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->PUSH:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->RTM:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->STATS:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->ENGINE:Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->$VALUES:[Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;
    .locals 1

    .line 60
    const-class v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;
    .locals 1

    .line 60
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->$VALUES:[Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSCloud$SERVER_TYPE;->name:Ljava/lang/String;

    return-object v0
.end method
