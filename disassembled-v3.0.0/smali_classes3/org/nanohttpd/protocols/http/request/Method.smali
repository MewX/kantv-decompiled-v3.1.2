.class public final enum Lorg/nanohttpd/protocols/http/request/Method;
.super Ljava/lang/Enum;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nanohttpd/protocols/http/request/Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum CONNECT:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum COPY:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum DELETE:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum GET:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum HEAD:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum LOCK:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum MKCOL:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum MOVE:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum OPTIONS:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum PATCH:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum POST:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum PROPFIND:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum PROPPATCH:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum PUT:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum TRACE:Lorg/nanohttpd/protocols/http/request/Method;

.field public static final enum UNLOCK:Lorg/nanohttpd/protocols/http/request/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->GET:Lorg/nanohttpd/protocols/http/request/Method;

    .line 42
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v2, 0x1

    const-string v3, "PUT"

    invoke-direct {v0, v3, v2}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->PUT:Lorg/nanohttpd/protocols/http/request/Method;

    .line 43
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v3, 0x2

    const-string v4, "POST"

    invoke-direct {v0, v4, v3}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->POST:Lorg/nanohttpd/protocols/http/request/Method;

    .line 44
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v4, 0x3

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->DELETE:Lorg/nanohttpd/protocols/http/request/Method;

    .line 45
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v5, 0x4

    const-string v6, "HEAD"

    invoke-direct {v0, v6, v5}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->HEAD:Lorg/nanohttpd/protocols/http/request/Method;

    .line 46
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v6, 0x5

    const-string v7, "OPTIONS"

    invoke-direct {v0, v7, v6}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->OPTIONS:Lorg/nanohttpd/protocols/http/request/Method;

    .line 47
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v7, 0x6

    const-string v8, "TRACE"

    invoke-direct {v0, v8, v7}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->TRACE:Lorg/nanohttpd/protocols/http/request/Method;

    .line 48
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/4 v8, 0x7

    const-string v9, "CONNECT"

    invoke-direct {v0, v9, v8}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->CONNECT:Lorg/nanohttpd/protocols/http/request/Method;

    .line 49
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v9, 0x8

    const-string v10, "PATCH"

    invoke-direct {v0, v10, v9}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->PATCH:Lorg/nanohttpd/protocols/http/request/Method;

    .line 50
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v10, 0x9

    const-string v11, "PROPFIND"

    invoke-direct {v0, v11, v10}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->PROPFIND:Lorg/nanohttpd/protocols/http/request/Method;

    .line 51
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v11, 0xa

    const-string v12, "PROPPATCH"

    invoke-direct {v0, v12, v11}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->PROPPATCH:Lorg/nanohttpd/protocols/http/request/Method;

    .line 52
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v12, 0xb

    const-string v13, "MKCOL"

    invoke-direct {v0, v13, v12}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->MKCOL:Lorg/nanohttpd/protocols/http/request/Method;

    .line 53
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v13, 0xc

    const-string v14, "MOVE"

    invoke-direct {v0, v14, v13}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->MOVE:Lorg/nanohttpd/protocols/http/request/Method;

    .line 54
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v14, 0xd

    const-string v15, "COPY"

    invoke-direct {v0, v15, v14}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->COPY:Lorg/nanohttpd/protocols/http/request/Method;

    .line 55
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v15, 0xe

    const-string v14, "LOCK"

    invoke-direct {v0, v14, v15}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->LOCK:Lorg/nanohttpd/protocols/http/request/Method;

    .line 56
    new-instance v0, Lorg/nanohttpd/protocols/http/request/Method;

    const-string v14, "UNLOCK"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/nanohttpd/protocols/http/request/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->UNLOCK:Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v0, 0x10

    .line 40
    new-array v0, v0, [Lorg/nanohttpd/protocols/http/request/Method;

    sget-object v14, Lorg/nanohttpd/protocols/http/request/Method;->GET:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v14, v0, v1

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->PUT:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v2

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->POST:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v3

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->DELETE:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v4

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->HEAD:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v5

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->OPTIONS:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v6

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->TRACE:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v7

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->CONNECT:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v8

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->PATCH:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v9

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->PROPFIND:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v10

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->PROPPATCH:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v11

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->MKCOL:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v12

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->MOVE:Lorg/nanohttpd/protocols/http/request/Method;

    aput-object v1, v0, v13

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->COPY:Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->LOCK:Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/nanohttpd/protocols/http/request/Method;->UNLOCK:Lorg/nanohttpd/protocols/http/request/Method;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lorg/nanohttpd/protocols/http/request/Method;->$VALUES:[Lorg/nanohttpd/protocols/http/request/Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lorg/nanohttpd/protocols/http/request/Method;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 63
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/nanohttpd/protocols/http/request/Method;->valueOf(Ljava/lang/String;)Lorg/nanohttpd/protocols/http/request/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nanohttpd/protocols/http/request/Method;
    .locals 1

    .line 40
    const-class v0, Lorg/nanohttpd/protocols/http/request/Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/nanohttpd/protocols/http/request/Method;

    return-object p0
.end method

.method public static values()[Lorg/nanohttpd/protocols/http/request/Method;
    .locals 1

    .line 40
    sget-object v0, Lorg/nanohttpd/protocols/http/request/Method;->$VALUES:[Lorg/nanohttpd/protocols/http/request/Method;

    invoke-virtual {v0}, [Lorg/nanohttpd/protocols/http/request/Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nanohttpd/protocols/http/request/Method;

    return-object v0
.end method
