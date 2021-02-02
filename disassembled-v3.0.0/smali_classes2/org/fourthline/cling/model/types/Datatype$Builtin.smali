.class public final enum Lorg/fourthline/cling/model/types/Datatype$Builtin;
.super Ljava/lang/Enum;
.source "Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/types/Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Builtin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/Datatype$Builtin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum BIN_HEX:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum DATE:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum DATETIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum FIXED144:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum NUMBER:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum R8:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum TIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum TIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field public static final enum UUID:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/types/Datatype$Builtin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private datatype:Lorg/fourthline/cling/model/types/Datatype;

.field private descriptorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 100
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedIntegerOneByteDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerOneByteDatatype;-><init>()V

    const/4 v2, 0x0

    const-string v3, "UI1"

    const-string v4, "ui1"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 101
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    const/4 v3, 0x1

    const-string v4, "UI2"

    const-string v5, "ui2"

    invoke-direct {v0, v4, v3, v5, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 102
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytesDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytesDatatype;-><init>()V

    const/4 v4, 0x2

    const-string v5, "UI4"

    const-string v6, "ui4"

    invoke-direct {v0, v5, v4, v6, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 103
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v1, v3}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    const/4 v5, 0x3

    const-string v6, "I1"

    const-string v7, "i1"

    invoke-direct {v0, v6, v5, v7, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 104
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v1, v4}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    const-string v6, "i2"

    const/4 v7, 0x4

    const-string v8, "I2"

    invoke-direct {v0, v8, v7, v6, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 105
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/ShortDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/ShortDatatype;-><init>()V

    const/4 v8, 0x5

    const-string v9, "I2_SHORT"

    invoke-direct {v0, v9, v8, v6, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 106
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v1, v7}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    const/4 v6, 0x6

    const-string v9, "I4"

    const-string v10, "i4"

    invoke-direct {v0, v9, v6, v10, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 107
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/IntegerDatatype;

    invoke-direct {v1, v7}, Lorg/fourthline/cling/model/types/IntegerDatatype;-><init>(I)V

    const/4 v9, 0x7

    const-string v10, "INT"

    const-string v11, "int"

    invoke-direct {v0, v10, v9, v11, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 108
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/FloatDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/FloatDatatype;-><init>()V

    const/16 v10, 0x8

    const-string v11, "R4"

    const-string v12, "r4"

    invoke-direct {v0, v11, v10, v12, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 109
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    const/16 v11, 0x9

    const-string v12, "R8"

    const-string v13, "r8"

    invoke-direct {v0, v12, v11, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R8:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 110
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    const/16 v12, 0xa

    const-string v13, "NUMBER"

    const-string v14, "number"

    invoke-direct {v0, v13, v12, v14, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->NUMBER:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 111
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    const-string v13, "FIXED144"

    const/16 v14, 0xb

    const-string v15, "fixed.14.4"

    invoke-direct {v0, v13, v14, v15, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FIXED144:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 112
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DoubleDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/DoubleDatatype;-><init>()V

    const-string v13, "FLOAT"

    const/16 v14, 0xc

    const-string v15, "float"

    invoke-direct {v0, v13, v14, v15, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 113
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/CharacterDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/CharacterDatatype;-><init>()V

    const-string v13, "CHAR"

    const/16 v14, 0xd

    const-string v15, "char"

    invoke-direct {v0, v13, v14, v15, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 114
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/StringDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/StringDatatype;-><init>()V

    const-string v13, "STRING"

    const/16 v14, 0xe

    const-string v15, "string"

    invoke-direct {v0, v13, v14, v15, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 115
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    new-array v13, v3, [Ljava/lang/String;

    const-string v14, "yyyy-MM-dd"

    aput-object v14, v13, v2

    invoke-direct {v1, v13, v14}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "DATE"

    const/16 v15, 0xf

    const-string v12, "date"

    invoke-direct {v0, v13, v15, v12, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATE:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 119
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    new-array v12, v4, [Ljava/lang/String;

    aput-object v14, v12, v2

    const-string v13, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v13, v12, v3

    invoke-direct {v1, v12, v13}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "DATETIME"

    const/16 v15, 0x10

    const-string v11, "dateTime"

    invoke-direct {v0, v12, v15, v11, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 123
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    new-array v11, v5, [Ljava/lang/String;

    aput-object v14, v11, v2

    aput-object v13, v11, v3

    const-string v12, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v12, v11, v4

    const-string v12, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v11, v12}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "DATETIME_TZ"

    const/16 v12, 0x11

    const-string v13, "dateTime.tz"

    invoke-direct {v0, v11, v12, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 127
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    new-array v11, v3, [Ljava/lang/String;

    const-string v12, "HH:mm:ss"

    aput-object v12, v11, v2

    invoke-direct {v1, v11, v12}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "TIME"

    const/16 v13, 0x12

    const-string v14, "time"

    invoke-direct {v0, v11, v13, v14, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 131
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/DateTimeDatatype;

    new-array v11, v4, [Ljava/lang/String;

    const-string v13, "HH:mm:ssZ"

    aput-object v13, v11, v2

    aput-object v12, v11, v3

    const-string v12, "HH:mm:ssZ"

    invoke-direct {v1, v11, v12}, Lorg/fourthline/cling/model/types/DateTimeDatatype;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "TIME_TZ"

    const/16 v12, 0x13

    const-string v13, "time.tz"

    invoke-direct {v0, v11, v12, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 135
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/BooleanDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/BooleanDatatype;-><init>()V

    const-string v11, "BOOLEAN"

    const/16 v12, 0x14

    const-string v13, "boolean"

    invoke-direct {v0, v11, v12, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 136
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/Base64Datatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/Base64Datatype;-><init>()V

    const-string v11, "BIN_BASE64"

    const/16 v12, 0x15

    const-string v13, "bin.base64"

    invoke-direct {v0, v11, v12, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 137
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/BinHexDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/BinHexDatatype;-><init>()V

    const-string v11, "BIN_HEX"

    const/16 v12, 0x16

    const-string v13, "bin.hex"

    invoke-direct {v0, v11, v12, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_HEX:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 138
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/URIDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/URIDatatype;-><init>()V

    const-string v11, "URI"

    const/16 v12, 0x17

    const-string v13, "uri"

    invoke-direct {v0, v11, v12, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 139
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    new-instance v1, Lorg/fourthline/cling/model/types/StringDatatype;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/StringDatatype;-><init>()V

    const-string v11, "UUID"

    const/16 v12, 0x18

    const-string v13, "uuid"

    invoke-direct {v0, v11, v12, v13, v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UUID:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v0, 0x19

    .line 98
    new-array v0, v0, [Lorg/fourthline/cling/model/types/Datatype$Builtin;

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R8:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->NUMBER:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FIXED144:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATE:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->TIME_TZ:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_HEX:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UUID:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 141
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Builtin$1;

    invoke-direct {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->byName:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/fourthline/cling/model/types/AbstractDatatype;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/types/AbstractDatatype<",
            "TVT;>;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p4, p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;->setBuiltin(Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    .line 155
    iput-object p3, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->descriptorName:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->datatype:Lorg/fourthline/cling/model/types/Datatype;

    return-void
.end method

.method public static getByDescriptorName(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-object p0
.end method

.method public static isNumeric(Lorg/fourthline/cling/model/types/Datatype$Builtin;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 176
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 177
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 178
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 179
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 180
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 181
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 182
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->INT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 183
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 1

    .line 98
    const-class v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 1

    .line 98
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/Datatype$Builtin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-object v0
.end method


# virtual methods
.method public getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->datatype:Lorg/fourthline/cling/model/types/Datatype;

    return-object v0
.end method

.method public getDescriptorName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->descriptorName:Ljava/lang/String;

    return-object v0
.end method
