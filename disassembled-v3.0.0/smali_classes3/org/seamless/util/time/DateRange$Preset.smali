.class public final enum Lorg/seamless/util/time/DateRange$Preset;
.super Ljava/lang/Enum;
.source "DateRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/time/DateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Preset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/util/time/DateRange$Preset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum ALL:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum LAST_MONTH:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum LAST_YEAR:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum MONTH_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum YEAR_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;


# instance fields
.field dateRange:Lorg/seamless/util/time/DateRange;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 27
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    new-instance v1, Lorg/seamless/util/time/DateRange;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;)V

    const/4 v2, 0x0

    const-string v3, "ALL"

    invoke-direct {v0, v3, v2, v1}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->ALL:Lorg/seamless/util/time/DateRange$Preset;

    .line 28
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    new-instance v1, Lorg/seamless/util/time/DateRange;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Ljava/util/Date;-><init>(III)V

    invoke-direct {v1, v3}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;)V

    const-string v3, "YEAR_TO_DATE"

    invoke-direct {v0, v3, v5, v1}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->YEAR_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    .line 29
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    new-instance v1, Lorg/seamless/util/time/DateRange;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v4

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentMonth()I

    move-result v6

    invoke-direct {v3, v4, v6, v5}, Ljava/util/Date;-><init>(III)V

    invoke-direct {v1, v3}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;)V

    const/4 v3, 0x2

    const-string v4, "MONTH_TO_DATE"

    invoke-direct {v0, v4, v3, v1}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->MONTH_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    .line 30
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v4

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentMonth()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-direct {v1, v4, v6, v5}, Ljava/util/Date;-><init>(III)V

    invoke-static {v1}, Lorg/seamless/util/time/DateRange;->getMonthOf(Ljava/util/Date;)Lorg/seamless/util/time/DateRange;

    move-result-object v1

    const/4 v4, 0x3

    const-string v6, "LAST_MONTH"

    invoke-direct {v0, v6, v4, v1}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->LAST_MONTH:Lorg/seamless/util/time/DateRange$Preset;

    .line 31
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    new-instance v1, Lorg/seamless/util/time/DateRange;

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {v6, v7, v2, v5}, Ljava/util/Date;-><init>(III)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v8

    sub-int/2addr v8, v5

    const/16 v9, 0xb

    const/16 v10, 0x1f

    invoke-direct {v7, v8, v9, v10}, Ljava/util/Date;-><init>(III)V

    invoke-direct {v1, v6, v7}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    const/4 v6, 0x4

    const-string v7, "LAST_YEAR"

    invoke-direct {v0, v7, v6, v1}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->LAST_YEAR:Lorg/seamless/util/time/DateRange$Preset;

    const/4 v0, 0x5

    .line 25
    new-array v0, v0, [Lorg/seamless/util/time/DateRange$Preset;

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->ALL:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->YEAR_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v5

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->MONTH_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v3

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->LAST_MONTH:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v4

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->LAST_YEAR:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v6

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->$VALUES:[Lorg/seamless/util/time/DateRange$Preset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/util/time/DateRange;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lorg/seamless/util/time/DateRange$Preset;->dateRange:Lorg/seamless/util/time/DateRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/util/time/DateRange$Preset;
    .locals 1

    .line 25
    const-class v0, Lorg/seamless/util/time/DateRange$Preset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/util/time/DateRange$Preset;

    return-object p0
.end method

.method public static values()[Lorg/seamless/util/time/DateRange$Preset;
    .locals 1

    .line 25
    sget-object v0, Lorg/seamless/util/time/DateRange$Preset;->$VALUES:[Lorg/seamless/util/time/DateRange$Preset;

    invoke-virtual {v0}, [Lorg/seamless/util/time/DateRange$Preset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/util/time/DateRange$Preset;

    return-object v0
.end method


# virtual methods
.method public getDateRange()Lorg/seamless/util/time/DateRange;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/seamless/util/time/DateRange$Preset;->dateRange:Lorg/seamless/util/time/DateRange;

    return-object v0
.end method
