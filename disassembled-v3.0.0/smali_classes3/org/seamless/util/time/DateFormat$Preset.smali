.class public final enum Lorg/seamless/util/time/DateFormat$Preset;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/time/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Preset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/util/time/DateFormat$Preset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;


# instance fields
.field protected dateFormat:Lorg/seamless/util/time/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 27
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v2, "31.12.2010"

    const-string v3, "dd.MM.yyyy"

    invoke-direct {v1, v2, v3}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "DD_MM_YYYY_DOT"

    invoke-direct {v0, v3, v2, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 28
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v3, "12.31.2010"

    const-string v4, "MM.dd.yyyy"

    invoke-direct {v1, v3, v4}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "MM_DD_YYYY_DOT"

    invoke-direct {v0, v4, v3, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 29
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v4, "2010.12.31"

    const-string v5, "yyyy.MM.dd"

    invoke-direct {v1, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const-string v5, "YYYY_MM_DD_DOT"

    invoke-direct {v0, v5, v4, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 30
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v5, "2010.31.12"

    const-string v6, "yyyy.dd.MM"

    invoke-direct {v1, v5, v6}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    const-string v6, "YYYY_DD_MM_DOT"

    invoke-direct {v0, v6, v5, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 31
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v6, "31/12/2010"

    const-string v7, "dd/MM/yyyy"

    invoke-direct {v1, v6, v7}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    const-string v7, "DD_MM_YYYY_SLASH"

    invoke-direct {v0, v7, v6, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 32
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v7, "12/31/2010"

    const-string v8, "MM/dd/yyyy"

    invoke-direct {v1, v7, v8}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    const-string v8, "MM_DD_YYYY_SLASH"

    invoke-direct {v0, v8, v7, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 33
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v8, "2010/12/31"

    const-string v9, "yyyy/MM/dd"

    invoke-direct {v1, v8, v9}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x6

    const-string v9, "YYYY_MM_DD_SLASH"

    invoke-direct {v0, v9, v8, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 34
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v9, "2010/31/12"

    const-string v10, "yyyy/dd/MM"

    invoke-direct {v1, v9, v10}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x7

    const-string v10, "YYYY_DD_MM_SLASH"

    invoke-direct {v0, v10, v9, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 35
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v10, "2010 Dec 31"

    const-string v11, "yyyy MMM dd"

    invoke-direct {v1, v10, v11}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x8

    const-string v11, "YYYY_MMM_DD"

    invoke-direct {v0, v11, v10, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

    .line 36
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v11, "31 Dec 2010"

    const-string v12, "dd MMM yyyy"

    invoke-direct {v1, v11, v12}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x9

    const-string v12, "DD_MMM_YYYY"

    invoke-direct {v0, v12, v11, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    .line 37
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v12, "Dec 31 2010"

    const-string v13, "MMM dd yyyy"

    invoke-direct {v1, v12, v13}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xa

    const-string v13, "MMM_DD_YYYY"

    invoke-direct {v0, v13, v12, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    const/16 v0, 0xb

    .line 26
    new-array v0, v0, [Lorg/seamless/util/time/DateFormat$Preset;

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v3

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v4

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v5

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v6

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v7

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v8

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v9

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v10

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v11

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v12

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->$VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/util/time/DateFormat;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lorg/seamless/util/time/DateFormat$Preset;->dateFormat:Lorg/seamless/util/time/DateFormat;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/util/time/DateFormat$Preset;
    .locals 1

    .line 26
    const-class v0, Lorg/seamless/util/time/DateFormat$Preset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/util/time/DateFormat$Preset;

    return-object p0
.end method

.method public static values()[Lorg/seamless/util/time/DateFormat$Preset;
    .locals 1

    .line 26
    sget-object v0, Lorg/seamless/util/time/DateFormat$Preset;->$VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

    invoke-virtual {v0}, [Lorg/seamless/util/time/DateFormat$Preset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/util/time/DateFormat$Preset;

    return-object v0
.end method


# virtual methods
.method public getDateFormat()Lorg/seamless/util/time/DateFormat;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/seamless/util/time/DateFormat$Preset;->dateFormat:Lorg/seamless/util/time/DateFormat;

    return-object v0
.end method
