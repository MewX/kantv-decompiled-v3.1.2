.class public final enum Lorg/seamless/swing/logging/LogController$Expiration;
.super Ljava/lang/Enum;
.source "LogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/swing/logging/LogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Expiration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/swing/logging/LogController$Expiration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum FIVE_MINUTES:Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum NEVER:Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum SIXTY_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

.field public static final enum TEN_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;


# instance fields
.field private label:Ljava/lang/String;

.field private seconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 63
    new-instance v0, Lorg/seamless/swing/logging/LogController$Expiration;

    const/4 v1, 0x0

    const-string v2, "TEN_SECONDS"

    const/16 v3, 0xa

    const-string v4, "10 Seconds"

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->TEN_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

    .line 64
    new-instance v0, Lorg/seamless/swing/logging/LogController$Expiration;

    const/4 v2, 0x1

    const-string v3, "SIXTY_SECONDS"

    const/16 v4, 0x3c

    const-string v5, "60 Seconds"

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->SIXTY_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

    .line 65
    new-instance v0, Lorg/seamless/swing/logging/LogController$Expiration;

    const/4 v3, 0x2

    const-string v4, "FIVE_MINUTES"

    const/16 v5, 0x12c

    const-string v6, "5 Minutes"

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->FIVE_MINUTES:Lorg/seamless/swing/logging/LogController$Expiration;

    .line 66
    new-instance v0, Lorg/seamless/swing/logging/LogController$Expiration;

    const/4 v4, 0x3

    const-string v5, "NEVER"

    const v6, 0x7fffffff

    const-string v7, "Never"

    invoke-direct {v0, v5, v4, v6, v7}, Lorg/seamless/swing/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->NEVER:Lorg/seamless/swing/logging/LogController$Expiration;

    const/4 v0, 0x4

    .line 62
    new-array v0, v0, [Lorg/seamless/swing/logging/LogController$Expiration;

    sget-object v5, Lorg/seamless/swing/logging/LogController$Expiration;->TEN_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

    aput-object v5, v0, v1

    sget-object v1, Lorg/seamless/swing/logging/LogController$Expiration;->SIXTY_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/swing/logging/LogController$Expiration;->FIVE_MINUTES:Lorg/seamless/swing/logging/LogController$Expiration;

    aput-object v1, v0, v3

    sget-object v1, Lorg/seamless/swing/logging/LogController$Expiration;->NEVER:Lorg/seamless/swing/logging/LogController$Expiration;

    aput-object v1, v0, v4

    sput-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->$VALUES:[Lorg/seamless/swing/logging/LogController$Expiration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lorg/seamless/swing/logging/LogController$Expiration;->seconds:I

    .line 73
    iput-object p4, p0, Lorg/seamless/swing/logging/LogController$Expiration;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/swing/logging/LogController$Expiration;
    .locals 1

    .line 62
    const-class v0, Lorg/seamless/swing/logging/LogController$Expiration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/swing/logging/LogController$Expiration;

    return-object p0
.end method

.method public static values()[Lorg/seamless/swing/logging/LogController$Expiration;
    .locals 1

    .line 62
    sget-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->$VALUES:[Lorg/seamless/swing/logging/LogController$Expiration;

    invoke-virtual {v0}, [Lorg/seamless/swing/logging/LogController$Expiration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/swing/logging/LogController$Expiration;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$Expiration;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getSeconds()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/seamless/swing/logging/LogController$Expiration;->seconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController$Expiration;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
