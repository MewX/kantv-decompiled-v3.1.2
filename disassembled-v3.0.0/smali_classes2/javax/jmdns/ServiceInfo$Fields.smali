.class public final enum Ljavax/jmdns/ServiceInfo$Fields;
.super Ljava/lang/Enum;
.source "ServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/jmdns/ServiceInfo$Fields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Application:Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Domain:Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Instance:Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Protocol:Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Subtype:Ljavax/jmdns/ServiceInfo$Fields;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    const/4 v1, 0x0

    const-string v2, "Domain"

    invoke-direct {v0, v2, v1}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    .line 51
    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    const/4 v2, 0x1

    const-string v3, "Protocol"

    invoke-direct {v0, v3, v2}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    .line 55
    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    const/4 v3, 0x2

    const-string v4, "Application"

    invoke-direct {v0, v4, v3}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    .line 59
    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    const/4 v4, 0x3

    const-string v5, "Instance"

    invoke-direct {v0, v5, v4}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    .line 63
    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    const/4 v5, 0x4

    const-string v6, "Subtype"

    invoke-direct {v0, v6, v5}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    const/4 v0, 0x5

    .line 43
    new-array v0, v0, [Ljavax/jmdns/ServiceInfo$Fields;

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v6, v0, v1

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->$VALUES:[Ljavax/jmdns/ServiceInfo$Fields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/ServiceInfo$Fields;
    .locals 1

    .line 43
    const-class v0, Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/ServiceInfo$Fields;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/ServiceInfo$Fields;
    .locals 1

    .line 43
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->$VALUES:[Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {v0}, [Ljavax/jmdns/ServiceInfo$Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/ServiceInfo$Fields;

    return-object v0
.end method
