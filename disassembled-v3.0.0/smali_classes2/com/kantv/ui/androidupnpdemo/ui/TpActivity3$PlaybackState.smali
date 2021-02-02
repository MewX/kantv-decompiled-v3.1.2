.class public final enum Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;
.super Ljava/lang/Enum;
.source "TpActivity3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

.field public static final enum BUFFERING:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

.field public static final enum IDLE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

.field public static final enum PAUSED:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

.field public static final enum PLAYING:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 77
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    const/4 v1, 0x0

    const-string v2, "PLAYING"

    invoke-direct {v0, v2, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->PLAYING:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    const/4 v2, 0x1

    const-string v3, "PAUSED"

    invoke-direct {v0, v3, v2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->PAUSED:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    const/4 v3, 0x2

    const-string v4, "BUFFERING"

    invoke-direct {v0, v4, v3}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->BUFFERING:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    const/4 v4, 0x3

    const-string v5, "IDLE"

    invoke-direct {v0, v5, v4}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->IDLE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    const/4 v0, 0x4

    .line 76
    new-array v0, v0, [Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    sget-object v5, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->PLAYING:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->PAUSED:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->BUFFERING:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->IDLE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->$VALUES:[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;
    .locals 1

    .line 76
    const-class v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;
    .locals 1

    .line 76
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->$VALUES:[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    invoke-virtual {v0}, [Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    return-object v0
.end method
