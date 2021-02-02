.class public final enum Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;
.super Ljava/lang/Enum;
.source "ENDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/codeest/enviews/ENDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field public static final enum B:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field public static final enum GB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field public static final enum KB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field public static final enum MB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

.field public static final enum NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 85
    new-instance v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/4 v1, 0x0

    const-string v2, "GB"

    invoke-direct {v0, v2, v1}, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->GB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 86
    new-instance v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/4 v2, 0x1

    const-string v3, "MB"

    invoke-direct {v0, v3, v2}, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->MB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 87
    new-instance v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/4 v3, 0x2

    const-string v4, "KB"

    invoke-direct {v0, v4, v3}, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->KB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 88
    new-instance v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/4 v4, 0x3

    const-string v5, "B"

    invoke-direct {v0, v5, v4}, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->B:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    .line 89
    new-instance v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    const/4 v0, 0x5

    .line 84
    new-array v0, v0, [Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    sget-object v6, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->GB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    aput-object v6, v0, v1

    sget-object v1, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->MB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    aput-object v1, v0, v2

    sget-object v1, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->KB:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    aput-object v1, v0, v3

    sget-object v1, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->B:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    aput-object v1, v0, v4

    sget-object v1, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    aput-object v1, v0, v5

    sput-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->$VALUES:[Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;
    .locals 1

    .line 84
    const-class v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    return-object p0
.end method

.method public static values()[Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;
    .locals 1

    .line 84
    sget-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->$VALUES:[Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    invoke-virtual {v0}, [Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    return-object v0
.end method
