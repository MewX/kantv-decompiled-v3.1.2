.class public final enum Ljavax/jmdns/impl/JmDNSImpl$Operation;
.super Ljava/lang/Enum;
.source "JmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/jmdns/impl/JmDNSImpl$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 61
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const/4 v1, 0x0

    const-string v2, "Remove"

    invoke-direct {v0, v2, v1}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const/4 v2, 0x1

    const-string v3, "Update"

    invoke-direct {v0, v3, v2}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const/4 v3, 0x2

    const-string v4, "Add"

    invoke-direct {v0, v4, v3}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const/4 v4, 0x3

    const-string v5, "RegisterServiceType"

    invoke-direct {v0, v5, v4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const/4 v5, 0x4

    const-string v6, "Noop"

    invoke-direct {v0, v6, v5}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    sget-object v6, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v6, v0, v1

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 1

    .line 60
    const-class v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 1

    .line 60
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/JmDNSImpl$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-object v0
.end method
