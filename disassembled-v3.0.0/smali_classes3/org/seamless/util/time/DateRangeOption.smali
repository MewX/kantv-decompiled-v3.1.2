.class public final enum Lorg/seamless/util/time/DateRangeOption;
.super Ljava/lang/Enum;
.source "DateRangeOption.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/util/time/DateRangeOption;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/util/time/DateRangeOption;

.field public static final enum ALL:Lorg/seamless/util/time/DateRangeOption;

.field public static final enum CUSTOM:Lorg/seamless/util/time/DateRangeOption;

.field public static final enum LAST_MONTH:Lorg/seamless/util/time/DateRangeOption;

.field public static final enum LAST_YEAR:Lorg/seamless/util/time/DateRangeOption;

.field public static final enum MONTH_TO_DATE:Lorg/seamless/util/time/DateRangeOption;

.field public static final enum YEAR_TO_DATE:Lorg/seamless/util/time/DateRangeOption;


# instance fields
.field dateRange:Lorg/seamless/util/time/DateRange;

.field label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 24
    new-instance v0, Lorg/seamless/util/time/DateRangeOption;

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->ALL:Lorg/seamless/util/time/DateRange$Preset;

    invoke-virtual {v1}, Lorg/seamless/util/time/DateRange$Preset;->getDateRange()Lorg/seamless/util/time/DateRange;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ALL"

    const-string v4, "All dates"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/seamless/util/time/DateRangeOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRangeOption;->ALL:Lorg/seamless/util/time/DateRangeOption;

    .line 25
    new-instance v0, Lorg/seamless/util/time/DateRangeOption;

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->MONTH_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    invoke-virtual {v1}, Lorg/seamless/util/time/DateRange$Preset;->getDateRange()Lorg/seamless/util/time/DateRange;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "MONTH_TO_DATE"

    const-string v5, "Month to date"

    invoke-direct {v0, v4, v3, v5, v1}, Lorg/seamless/util/time/DateRangeOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRangeOption;->MONTH_TO_DATE:Lorg/seamless/util/time/DateRangeOption;

    .line 26
    new-instance v0, Lorg/seamless/util/time/DateRangeOption;

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->YEAR_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    invoke-virtual {v1}, Lorg/seamless/util/time/DateRange$Preset;->getDateRange()Lorg/seamless/util/time/DateRange;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "YEAR_TO_DATE"

    const-string v6, "Year to date"

    invoke-direct {v0, v5, v4, v6, v1}, Lorg/seamless/util/time/DateRangeOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRangeOption;->YEAR_TO_DATE:Lorg/seamless/util/time/DateRangeOption;

    .line 27
    new-instance v0, Lorg/seamless/util/time/DateRangeOption;

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->LAST_MONTH:Lorg/seamless/util/time/DateRange$Preset;

    invoke-virtual {v1}, Lorg/seamless/util/time/DateRange$Preset;->getDateRange()Lorg/seamless/util/time/DateRange;

    move-result-object v1

    const/4 v5, 0x3

    const-string v6, "LAST_MONTH"

    const-string v7, "Last month"

    invoke-direct {v0, v6, v5, v7, v1}, Lorg/seamless/util/time/DateRangeOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRangeOption;->LAST_MONTH:Lorg/seamless/util/time/DateRangeOption;

    .line 28
    new-instance v0, Lorg/seamless/util/time/DateRangeOption;

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->LAST_YEAR:Lorg/seamless/util/time/DateRange$Preset;

    invoke-virtual {v1}, Lorg/seamless/util/time/DateRange$Preset;->getDateRange()Lorg/seamless/util/time/DateRange;

    move-result-object v1

    const/4 v6, 0x4

    const-string v7, "LAST_YEAR"

    const-string v8, "Last year"

    invoke-direct {v0, v7, v6, v8, v1}, Lorg/seamless/util/time/DateRangeOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRangeOption;->LAST_YEAR:Lorg/seamless/util/time/DateRangeOption;

    .line 29
    new-instance v0, Lorg/seamless/util/time/DateRangeOption;

    const/4 v1, 0x5

    const-string v7, "CUSTOM"

    const-string v8, "Custom dates"

    const/4 v9, 0x0

    invoke-direct {v0, v7, v1, v8, v9}, Lorg/seamless/util/time/DateRangeOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRangeOption;->CUSTOM:Lorg/seamless/util/time/DateRangeOption;

    const/4 v0, 0x6

    .line 22
    new-array v0, v0, [Lorg/seamless/util/time/DateRangeOption;

    sget-object v7, Lorg/seamless/util/time/DateRangeOption;->ALL:Lorg/seamless/util/time/DateRangeOption;

    aput-object v7, v0, v2

    sget-object v2, Lorg/seamless/util/time/DateRangeOption;->MONTH_TO_DATE:Lorg/seamless/util/time/DateRangeOption;

    aput-object v2, v0, v3

    sget-object v2, Lorg/seamless/util/time/DateRangeOption;->YEAR_TO_DATE:Lorg/seamless/util/time/DateRangeOption;

    aput-object v2, v0, v4

    sget-object v2, Lorg/seamless/util/time/DateRangeOption;->LAST_MONTH:Lorg/seamless/util/time/DateRangeOption;

    aput-object v2, v0, v5

    sget-object v2, Lorg/seamless/util/time/DateRangeOption;->LAST_YEAR:Lorg/seamless/util/time/DateRangeOption;

    aput-object v2, v0, v6

    sget-object v2, Lorg/seamless/util/time/DateRangeOption;->CUSTOM:Lorg/seamless/util/time/DateRangeOption;

    aput-object v2, v0, v1

    sput-object v0, Lorg/seamless/util/time/DateRangeOption;->$VALUES:[Lorg/seamless/util/time/DateRangeOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/seamless/util/time/DateRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/seamless/util/time/DateRange;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lorg/seamless/util/time/DateRangeOption;->label:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lorg/seamless/util/time/DateRangeOption;->dateRange:Lorg/seamless/util/time/DateRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/util/time/DateRangeOption;
    .locals 1

    .line 22
    const-class v0, Lorg/seamless/util/time/DateRangeOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/util/time/DateRangeOption;

    return-object p0
.end method

.method public static values()[Lorg/seamless/util/time/DateRangeOption;
    .locals 1

    .line 22
    sget-object v0, Lorg/seamless/util/time/DateRangeOption;->$VALUES:[Lorg/seamless/util/time/DateRangeOption;

    invoke-virtual {v0}, [Lorg/seamless/util/time/DateRangeOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/util/time/DateRangeOption;

    return-object v0
.end method


# virtual methods
.method public getDateRange()Lorg/seamless/util/time/DateRange;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/seamless/util/time/DateRangeOption;->dateRange:Lorg/seamless/util/time/DateRange;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/seamless/util/time/DateRangeOption;->label:Ljava/lang/String;

    return-object v0
.end method
