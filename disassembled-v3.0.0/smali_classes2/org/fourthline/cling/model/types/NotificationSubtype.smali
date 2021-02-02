.class public final enum Lorg/fourthline/cling/model/types/NotificationSubtype;
.super Ljava/lang/Enum;
.source "NotificationSubtype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/NotificationSubtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/NotificationSubtype;

.field public static final enum ALIVE:Lorg/fourthline/cling/model/types/NotificationSubtype;

.field public static final enum ALL:Lorg/fourthline/cling/model/types/NotificationSubtype;

.field public static final enum BYEBYE:Lorg/fourthline/cling/model/types/NotificationSubtype;

.field public static final enum DISCOVER:Lorg/fourthline/cling/model/types/NotificationSubtype;

.field public static final enum PROPCHANGE:Lorg/fourthline/cling/model/types/NotificationSubtype;

.field public static final enum UPDATE:Lorg/fourthline/cling/model/types/NotificationSubtype;


# instance fields
.field private headerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    const/4 v1, 0x0

    const-string v2, "ALIVE"

    const-string v3, "ssdp:alive"

    invoke-direct {v0, v2, v1, v3}, Lorg/fourthline/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALIVE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    .line 26
    new-instance v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    const/4 v2, 0x1

    const-string v3, "UPDATE"

    const-string v4, "ssdp:update"

    invoke-direct {v0, v3, v2, v4}, Lorg/fourthline/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->UPDATE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    const/4 v3, 0x2

    const-string v4, "BYEBYE"

    const-string v5, "ssdp:byebye"

    invoke-direct {v0, v4, v3, v5}, Lorg/fourthline/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    .line 28
    new-instance v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    const/4 v4, 0x3

    const-string v5, "ALL"

    const-string v6, "ssdp:all"

    invoke-direct {v0, v5, v4, v6}, Lorg/fourthline/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALL:Lorg/fourthline/cling/model/types/NotificationSubtype;

    .line 29
    new-instance v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    const/4 v5, 0x4

    const-string v6, "DISCOVER"

    const-string v7, "ssdp:discover"

    invoke-direct {v0, v6, v5, v7}, Lorg/fourthline/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/fourthline/cling/model/types/NotificationSubtype;

    .line 30
    new-instance v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    const/4 v6, 0x5

    const-string v7, "PROPCHANGE"

    const-string v8, "upnp:propchange"

    invoke-direct {v0, v7, v6, v8}, Lorg/fourthline/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    const/4 v0, 0x6

    .line 23
    new-array v0, v0, [Lorg/fourthline/cling/model/types/NotificationSubtype;

    sget-object v7, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALIVE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    aput-object v7, v0, v1

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->UPDATE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALL:Lorg/fourthline/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/fourthline/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v6

    sput-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->$VALUES:[Lorg/fourthline/cling/model/types/NotificationSubtype;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lorg/fourthline/cling/model/types/NotificationSubtype;->headerString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/NotificationSubtype;
    .locals 1

    .line 23
    const-class v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/NotificationSubtype;
    .locals 1

    .line 23
    sget-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->$VALUES:[Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/NotificationSubtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/NotificationSubtype;

    return-object v0
.end method


# virtual methods
.method public getHeaderString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/model/types/NotificationSubtype;->headerString:Ljava/lang/String;

    return-object v0
.end method
