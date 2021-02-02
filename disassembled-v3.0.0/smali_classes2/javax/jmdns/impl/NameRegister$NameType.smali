.class public final enum Ljavax/jmdns/impl/NameRegister$NameType;
.super Ljava/lang/Enum;
.source "NameRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/jmdns/impl/NameRegister$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/NameRegister$NameType;

.field public static final enum HOST:Ljavax/jmdns/impl/NameRegister$NameType;

.field public static final enum SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Ljavax/jmdns/impl/NameRegister$NameType;

    const/4 v1, 0x0

    const-string v2, "HOST"

    invoke-direct {v0, v2, v1}, Ljavax/jmdns/impl/NameRegister$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/NameRegister$NameType;->HOST:Ljavax/jmdns/impl/NameRegister$NameType;

    .line 27
    new-instance v0, Ljavax/jmdns/impl/NameRegister$NameType;

    const/4 v2, 0x1

    const-string v3, "SERVICE"

    invoke-direct {v0, v3, v2}, Ljavax/jmdns/impl/NameRegister$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljavax/jmdns/impl/NameRegister$NameType;

    sget-object v3, Ljavax/jmdns/impl/NameRegister$NameType;->HOST:Ljavax/jmdns/impl/NameRegister$NameType;

    aput-object v3, v0, v1

    sget-object v1, Ljavax/jmdns/impl/NameRegister$NameType;->SERVICE:Ljavax/jmdns/impl/NameRegister$NameType;

    aput-object v1, v0, v2

    sput-object v0, Ljavax/jmdns/impl/NameRegister$NameType;->$VALUES:[Ljavax/jmdns/impl/NameRegister$NameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/NameRegister$NameType;
    .locals 1

    .line 19
    const-class v0, Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/NameRegister$NameType;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/NameRegister$NameType;
    .locals 1

    .line 19
    sget-object v0, Ljavax/jmdns/impl/NameRegister$NameType;->$VALUES:[Ljavax/jmdns/impl/NameRegister$NameType;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/NameRegister$NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/NameRegister$NameType;

    return-object v0
.end method
