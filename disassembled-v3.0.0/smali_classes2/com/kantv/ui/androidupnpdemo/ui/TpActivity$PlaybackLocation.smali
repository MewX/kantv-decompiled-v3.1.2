.class public final enum Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;
.super Ljava/lang/Enum;
.source "TpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

.field public static final enum LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

.field public static final enum REMOTE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    const/4 v1, 0x0

    const-string v2, "LOCAL"

    invoke-direct {v0, v2, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    .line 73
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    const/4 v2, 0x1

    const-string v3, "REMOTE"

    invoke-direct {v0, v3, v2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->REMOTE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    sget-object v3, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    aput-object v3, v0, v1

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->REMOTE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->$VALUES:[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;
    .locals 1

    .line 71
    const-class v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    return-object p0
.end method

.method public static values()[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;
    .locals 1

    .line 71
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->$VALUES:[Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-virtual {v0}, [Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    return-object v0
.end method
