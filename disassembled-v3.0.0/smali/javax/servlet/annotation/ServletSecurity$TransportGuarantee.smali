.class public final enum Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
.super Ljava/lang/Enum;
.source "ServletSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/servlet/annotation/ServletSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportGuarantee"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

.field public static final enum CONFIDENTIAL:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

.field public static final enum NONE:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 90
    new-instance v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->NONE:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    .line 95
    new-instance v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    const/4 v2, 0x1

    const-string v3, "CONFIDENTIAL"

    invoke-direct {v0, v3, v2}, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->CONFIDENTIAL:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    const/4 v0, 0x2

    .line 86
    new-array v0, v0, [Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    sget-object v3, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->NONE:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    aput-object v3, v0, v1

    sget-object v1, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->CONFIDENTIAL:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    aput-object v1, v0, v2

    sput-object v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->$VALUES:[Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
    .locals 1

    .line 86
    const-class v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    return-object p0
.end method

.method public static values()[Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
    .locals 1

    .line 86
    sget-object v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->$VALUES:[Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    invoke-virtual {v0}, [Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    return-object v0
.end method
