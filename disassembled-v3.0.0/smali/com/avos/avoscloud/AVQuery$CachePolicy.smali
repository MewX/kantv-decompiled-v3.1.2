.class public final enum Lcom/avos/avoscloud/AVQuery$CachePolicy;
.super Ljava/lang/Enum;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CachePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field public static final enum CACHE_ELSE_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field public static final enum CACHE_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field public static final enum CACHE_THEN_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field public static final enum IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field public static final enum NETWORK_ELSE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field public static final enum NETWORK_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 80
    new-instance v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v1, 0x0

    const-string v2, "CACHE_ELSE_NETWORK"

    invoke-direct {v0, v2, v1}, Lcom/avos/avoscloud/AVQuery$CachePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    new-instance v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v2, 0x1

    const-string v3, "CACHE_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/avos/avoscloud/AVQuery$CachePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    new-instance v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v3, 0x2

    const-string v4, "CACHE_THEN_NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/avos/avoscloud/AVQuery$CachePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    new-instance v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v4, 0x3

    const-string v5, "IGNORE_CACHE"

    invoke-direct {v0, v5, v4}, Lcom/avos/avoscloud/AVQuery$CachePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    new-instance v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v5, 0x4

    const-string v6, "NETWORK_ELSE_CACHE"

    invoke-direct {v0, v6, v5}, Lcom/avos/avoscloud/AVQuery$CachePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->NETWORK_ELSE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 81
    new-instance v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v6, 0x5

    const-string v7, "NETWORK_ONLY"

    invoke-direct {v0, v7, v6}, Lcom/avos/avoscloud/AVQuery$CachePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->NETWORK_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const/4 v0, 0x6

    .line 79
    new-array v0, v0, [Lcom/avos/avoscloud/AVQuery$CachePolicy;

    sget-object v7, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    aput-object v7, v0, v1

    sget-object v1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->NETWORK_ELSE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->NETWORK_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->$VALUES:[Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .line 79
    const-class v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .line 79
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->$VALUES:[Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/AVQuery$CachePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method
