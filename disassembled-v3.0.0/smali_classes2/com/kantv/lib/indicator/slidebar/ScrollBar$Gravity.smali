.class public final enum Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;
.super Ljava/lang/Enum;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/slidebar/ScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum BOTTOM:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum BOTTOM_FLOAT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum CENTENT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum CENTENT_BACKGROUND:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum TOP:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum TOP_FLOAT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    const/4 v1, 0x0

    const-string v2, "TOP"

    invoke-direct {v0, v2, v1}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->TOP:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    .line 8
    new-instance v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    const/4 v2, 0x1

    const-string v3, "TOP_FLOAT"

    invoke-direct {v0, v3, v2}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->TOP_FLOAT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    .line 9
    new-instance v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    const/4 v3, 0x2

    const-string v4, "BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    .line 10
    new-instance v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    const/4 v4, 0x3

    const-string v5, "BOTTOM_FLOAT"

    invoke-direct {v0, v5, v4}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->BOTTOM_FLOAT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    .line 11
    new-instance v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    const/4 v5, 0x4

    const-string v6, "CENTENT"

    invoke-direct {v0, v6, v5}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->CENTENT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    .line 12
    new-instance v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    const/4 v6, 0x5

    const-string v7, "CENTENT_BACKGROUND"

    invoke-direct {v0, v7, v6}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    sget-object v7, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->TOP:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    aput-object v7, v0, v1

    sget-object v1, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->TOP_FLOAT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->BOTTOM_FLOAT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->CENTENT:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->$VALUES:[Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 6
    const-class v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    return-object p0
.end method

.method public static values()[Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 6
    sget-object v0, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->$VALUES:[Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v0}, [Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method
