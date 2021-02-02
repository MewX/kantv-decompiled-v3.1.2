.class final enum Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;
.super Ljava/lang/Enum;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/protocols/http/response/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GzipUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

.field public static final enum ALWAYS:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

.field public static final enum DEFAULT:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

.field public static final enum NEVER:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 120
    new-instance v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->DEFAULT:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    .line 121
    new-instance v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    const/4 v2, 0x1

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v2}, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->ALWAYS:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    .line 122
    new-instance v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    const/4 v3, 0x2

    const-string v4, "NEVER"

    invoke-direct {v0, v4, v3}, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->NEVER:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    sget-object v4, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->DEFAULT:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    aput-object v4, v0, v1

    sget-object v1, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->ALWAYS:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    aput-object v1, v0, v2

    sget-object v1, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->NEVER:Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    aput-object v1, v0, v3

    sput-object v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->$VALUES:[Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;
    .locals 1

    .line 119
    const-class v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    return-object p0
.end method

.method public static values()[Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;
    .locals 1

    .line 119
    sget-object v0, Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->$VALUES:[Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    invoke-virtual {v0}, [Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nanohttpd/protocols/http/response/Response$GzipUsage;

    return-object v0
.end method
