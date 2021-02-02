.class public final enum Lcom/avos/avoscloud/AVLiveQuery$EventType;
.super Ljava/lang/Enum;
.source "AVLiveQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVLiveQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/AVLiveQuery$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/AVLiveQuery$EventType;

.field public static final enum CREATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

.field public static final enum DELETE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

.field public static final enum ENTER:Lcom/avos/avoscloud/AVLiveQuery$EventType;

.field public static final enum LEAVE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

.field public static final enum LOGIN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

.field public static final enum UNKONWN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

.field public static final enum UPDATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;


# instance fields
.field private event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 48
    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v1, 0x0

    const-string v2, "CREATE"

    const-string v3, "create"

    invoke-direct {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVLiveQuery$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->CREATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v2, 0x1

    const-string v3, "UPDATE"

    const-string v4, "update"

    invoke-direct {v0, v3, v2, v4}, Lcom/avos/avoscloud/AVLiveQuery$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UPDATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v3, 0x2

    const-string v4, "ENTER"

    const-string v5, "enter"

    invoke-direct {v0, v4, v3, v5}, Lcom/avos/avoscloud/AVLiveQuery$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ENTER:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v4, 0x3

    const-string v5, "LEAVE"

    const-string v6, "leave"

    invoke-direct {v0, v5, v4, v6}, Lcom/avos/avoscloud/AVLiveQuery$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LEAVE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v5, 0x4

    const-string v6, "DELETE"

    const-string v7, "delete"

    invoke-direct {v0, v6, v5, v7}, Lcom/avos/avoscloud/AVLiveQuery$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->DELETE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v6, 0x5

    const-string v7, "LOGIN"

    const-string v8, "login"

    invoke-direct {v0, v7, v6, v8}, Lcom/avos/avoscloud/AVLiveQuery$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LOGIN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v7, 0x6

    const-string v8, "UNKONWN"

    const-string v9, "unknown"

    invoke-direct {v0, v8, v7, v9}, Lcom/avos/avoscloud/AVLiveQuery$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UNKONWN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    const/4 v0, 0x7

    .line 47
    new-array v0, v0, [Lcom/avos/avoscloud/AVLiveQuery$EventType;

    sget-object v8, Lcom/avos/avoscloud/AVLiveQuery$EventType;->CREATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UPDATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ENTER:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LEAVE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->DELETE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LOGIN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UNKONWN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->$VALUES:[Lcom/avos/avoscloud/AVLiveQuery$EventType;

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

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->event:Ljava/lang/String;

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/avos/avoscloud/AVLiveQuery$EventType;
    .locals 1

    .line 53
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->CREATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->CREATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0

    .line 55
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UPDATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UPDATE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0

    .line 57
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ENTER:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-object p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ENTER:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0

    .line 59
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LEAVE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    sget-object p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LEAVE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0

    .line 61
    :cond_3
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->DELETE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    sget-object p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->DELETE:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0

    .line 63
    :cond_4
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LOGIN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 64
    sget-object p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->LOGIN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0

    .line 66
    :cond_5
    sget-object p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->UNKONWN:Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/AVLiveQuery$EventType;
    .locals 1

    .line 47
    const-class v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/AVLiveQuery$EventType;
    .locals 1

    .line 47
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->$VALUES:[Lcom/avos/avoscloud/AVLiveQuery$EventType;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/AVLiveQuery$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/AVLiveQuery$EventType;

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/avos/avoscloud/AVLiveQuery$EventType;->event:Ljava/lang/String;

    return-object v0
.end method
