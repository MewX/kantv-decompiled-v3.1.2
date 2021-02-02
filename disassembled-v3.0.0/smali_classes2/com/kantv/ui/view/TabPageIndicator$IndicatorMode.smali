.class public final enum Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;
.super Ljava/lang/Enum;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/view/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

.field public static final enum MODE_NOWEIGHT_EXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

.field public static final enum MODE_NOWEIGHT_EXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

.field public static final enum MODE_NOWEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

.field public static final enum MODE_NOWEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

.field public static final enum MODE_WEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

.field public static final enum MODE_WEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 101
    new-instance v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    const/4 v1, 0x0

    const-string v2, "MODE_WEIGHT_NOEXPAND_SAME"

    invoke-direct {v0, v2, v1, v1}, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_WEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    .line 102
    new-instance v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    const/4 v2, 0x1

    const-string v3, "MODE_WEIGHT_NOEXPAND_NOSAME"

    invoke-direct {v0, v3, v2, v2}, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_WEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    .line 103
    new-instance v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    const/4 v3, 0x2

    const-string v4, "MODE_NOWEIGHT_NOEXPAND_SAME"

    invoke-direct {v0, v4, v3, v3}, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    .line 104
    new-instance v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    const/4 v4, 0x3

    const-string v5, "MODE_NOWEIGHT_NOEXPAND_NOSAME"

    invoke-direct {v0, v5, v4, v4}, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    .line 105
    new-instance v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    const/4 v5, 0x4

    const-string v6, "MODE_NOWEIGHT_EXPAND_SAME"

    invoke-direct {v0, v6, v5, v5}, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_EXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    .line 106
    new-instance v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    const/4 v6, 0x5

    const-string v7, "MODE_NOWEIGHT_EXPAND_NOSAME"

    invoke-direct {v0, v7, v6, v6}, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_EXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    const/4 v0, 0x6

    .line 99
    new-array v0, v0, [Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    sget-object v7, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_WEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    aput-object v7, v0, v1

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_WEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_EXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_EXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->$VALUES:[Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;
    .locals 1

    .line 99
    const-class v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    return-object p0
.end method

.method public static values()[Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;
    .locals 1

    .line 99
    sget-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->$VALUES:[Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    invoke-virtual {v0}, [Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->value:I

    return v0
.end method
