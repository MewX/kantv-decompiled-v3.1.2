.class public final enum Lorg/msgpack/value/ValueType;
.super Ljava/lang/Enum;
.source "ValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/msgpack/value/ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/msgpack/value/ValueType;

.field public static final enum ARRAY:Lorg/msgpack/value/ValueType;

.field public static final enum BINARY:Lorg/msgpack/value/ValueType;

.field public static final enum BOOLEAN:Lorg/msgpack/value/ValueType;

.field public static final enum EXTENSION:Lorg/msgpack/value/ValueType;

.field public static final enum FLOAT:Lorg/msgpack/value/ValueType;

.field public static final enum INTEGER:Lorg/msgpack/value/ValueType;

.field public static final enum MAP:Lorg/msgpack/value/ValueType;

.field public static final enum NIL:Lorg/msgpack/value/ValueType;

.field public static final enum STRING:Lorg/msgpack/value/ValueType;


# instance fields
.field private final numberType:Z

.field private final rawType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v1, 0x0

    const-string v2, "NIL"

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->NIL:Lorg/msgpack/value/ValueType;

    .line 30
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v2, 0x1

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v2, v1, v1}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->BOOLEAN:Lorg/msgpack/value/ValueType;

    .line 31
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v3, 0x2

    const-string v4, "INTEGER"

    invoke-direct {v0, v4, v3, v2, v1}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->INTEGER:Lorg/msgpack/value/ValueType;

    .line 32
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v4, 0x3

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4, v2, v1}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->FLOAT:Lorg/msgpack/value/ValueType;

    .line 33
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v5, 0x4

    const-string v6, "STRING"

    invoke-direct {v0, v6, v5, v1, v2}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->STRING:Lorg/msgpack/value/ValueType;

    .line 34
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v6, 0x5

    const-string v7, "BINARY"

    invoke-direct {v0, v7, v6, v1, v2}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->BINARY:Lorg/msgpack/value/ValueType;

    .line 35
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v7, 0x6

    const-string v8, "ARRAY"

    invoke-direct {v0, v8, v7, v1, v1}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->ARRAY:Lorg/msgpack/value/ValueType;

    .line 36
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/4 v8, 0x7

    const-string v9, "MAP"

    invoke-direct {v0, v9, v8, v1, v1}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->MAP:Lorg/msgpack/value/ValueType;

    .line 37
    new-instance v0, Lorg/msgpack/value/ValueType;

    const/16 v9, 0x8

    const-string v10, "EXTENSION"

    invoke-direct {v0, v10, v9, v1, v1}, Lorg/msgpack/value/ValueType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/msgpack/value/ValueType;->EXTENSION:Lorg/msgpack/value/ValueType;

    const/16 v0, 0x9

    .line 27
    new-array v0, v0, [Lorg/msgpack/value/ValueType;

    sget-object v10, Lorg/msgpack/value/ValueType;->NIL:Lorg/msgpack/value/ValueType;

    aput-object v10, v0, v1

    sget-object v1, Lorg/msgpack/value/ValueType;->BOOLEAN:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/msgpack/value/ValueType;->INTEGER:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/msgpack/value/ValueType;->FLOAT:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/msgpack/value/ValueType;->STRING:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/msgpack/value/ValueType;->BINARY:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/msgpack/value/ValueType;->ARRAY:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/msgpack/value/ValueType;->MAP:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/msgpack/value/ValueType;->EXTENSION:Lorg/msgpack/value/ValueType;

    aput-object v1, v0, v9

    sput-object v0, Lorg/msgpack/value/ValueType;->$VALUES:[Lorg/msgpack/value/ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-boolean p3, p0, Lorg/msgpack/value/ValueType;->numberType:Z

    .line 45
    iput-boolean p4, p0, Lorg/msgpack/value/ValueType;->rawType:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/msgpack/value/ValueType;
    .locals 1

    .line 27
    const-class v0, Lorg/msgpack/value/ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/msgpack/value/ValueType;

    return-object p0
.end method

.method public static values()[Lorg/msgpack/value/ValueType;
    .locals 1

    .line 27
    sget-object v0, Lorg/msgpack/value/ValueType;->$VALUES:[Lorg/msgpack/value/ValueType;

    invoke-virtual {v0}, [Lorg/msgpack/value/ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/msgpack/value/ValueType;

    return-object v0
.end method


# virtual methods
.method public isArrayType()Z
    .locals 1

    .line 90
    sget-object v0, Lorg/msgpack/value/ValueType;->ARRAY:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinaryType()Z
    .locals 1

    .line 85
    sget-object v0, Lorg/msgpack/value/ValueType;->BINARY:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBooleanType()Z
    .locals 1

    .line 55
    sget-object v0, Lorg/msgpack/value/ValueType;->BOOLEAN:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExtensionType()Z
    .locals 1

    .line 100
    sget-object v0, Lorg/msgpack/value/ValueType;->EXTENSION:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFloatType()Z
    .locals 1

    .line 70
    sget-object v0, Lorg/msgpack/value/ValueType;->FLOAT:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntegerType()Z
    .locals 1

    .line 65
    sget-object v0, Lorg/msgpack/value/ValueType;->INTEGER:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMapType()Z
    .locals 1

    .line 95
    sget-object v0, Lorg/msgpack/value/ValueType;->MAP:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNilType()Z
    .locals 1

    .line 50
    sget-object v0, Lorg/msgpack/value/ValueType;->NIL:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumberType()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/msgpack/value/ValueType;->numberType:Z

    return v0
.end method

.method public isRawType()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/msgpack/value/ValueType;->rawType:Z

    return v0
.end method

.method public isStringType()Z
    .locals 1

    .line 80
    sget-object v0, Lorg/msgpack/value/ValueType;->STRING:Lorg/msgpack/value/ValueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
