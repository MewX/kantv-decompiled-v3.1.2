.class public final enum Lorg/fourthline/cling/support/model/Connection$Type;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/Connection$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/Connection$Type;

.field public static final enum IP_Bridged:Lorg/fourthline/cling/support/model/Connection$Type;

.field public static final enum IP_Routed:Lorg/fourthline/cling/support/model/Connection$Type;

.field public static final enum Unconfigured:Lorg/fourthline/cling/support/model/Connection$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 89
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Type;

    const/4 v1, 0x0

    const-string v2, "Unconfigured"

    invoke-direct {v0, v2, v1}, Lorg/fourthline/cling/support/model/Connection$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Type;->Unconfigured:Lorg/fourthline/cling/support/model/Connection$Type;

    .line 94
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Type;

    const/4 v2, 0x1

    const-string v3, "IP_Routed"

    invoke-direct {v0, v3, v2}, Lorg/fourthline/cling/support/model/Connection$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Type;->IP_Routed:Lorg/fourthline/cling/support/model/Connection$Type;

    .line 99
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Type;

    const/4 v3, 0x2

    const-string v4, "IP_Bridged"

    invoke-direct {v0, v4, v3}, Lorg/fourthline/cling/support/model/Connection$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Type;->IP_Bridged:Lorg/fourthline/cling/support/model/Connection$Type;

    const/4 v0, 0x3

    .line 85
    new-array v0, v0, [Lorg/fourthline/cling/support/model/Connection$Type;

    sget-object v4, Lorg/fourthline/cling/support/model/Connection$Type;->Unconfigured:Lorg/fourthline/cling/support/model/Connection$Type;

    aput-object v4, v0, v1

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Type;->IP_Routed:Lorg/fourthline/cling/support/model/Connection$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Type;->IP_Bridged:Lorg/fourthline/cling/support/model/Connection$Type;

    aput-object v1, v0, v3

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Type;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Connection$Type;
    .locals 1

    .line 85
    const-class v0, Lorg/fourthline/cling/support/model/Connection$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/Connection$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/Connection$Type;
    .locals 1

    .line 85
    sget-object v0, Lorg/fourthline/cling/support/model/Connection$Type;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/Connection$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Connection$Type;

    return-object v0
.end method
