.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "NumberDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const-wide/16 v2, -0x8000

    const-wide/16 v4, 0x7fff

    const-string v6, "short overflow : "

    const/16 v7, 0x10

    const/4 v8, 0x2

    if-ne v1, v8, :cond_9

    .line 20
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_8

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_0

    goto/16 :goto_2

    .line 26
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v8

    .line 27
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 29
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_6

    const-class p1, Ljava/lang/Short;

    if-ne p2, p1, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_4

    const-class p1, Ljava/lang/Byte;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/32 p1, -0x80000000

    cmp-long p3, v8, p1

    if-ltz p3, :cond_3

    const-wide/32 p1, 0x7fffffff

    cmp-long p3, v8, p1

    if-gtz p3, :cond_3

    long-to-int p1, v8

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const-wide/16 p1, 0x7f

    cmp-long p3, v8, p1

    if-gtz p3, :cond_5

    const-wide/16 p1, -0x80

    cmp-long p3, v8, p1

    if-ltz p3, :cond_5

    long-to-int p1, v8

    int-to-byte p1, p1

    .line 41
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 38
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    cmp-long p1, v8, v4

    if-gtz p1, :cond_7

    cmp-long p1, v8, v2

    if-ltz p1, :cond_7

    long-to-int p1, v8

    int-to-short p1, p1

    .line 33
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 31
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    :goto_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 23
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 50
    :cond_9
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v8, 0x3

    if-ne v1, v8, :cond_11

    .line 51
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_10

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_a

    goto :goto_5

    .line 57
    :cond_a
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 58
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 60
    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_e

    const-class p3, Ljava/lang/Short;

    if-ne p2, p3, :cond_b

    goto :goto_4

    .line 67
    :cond_b
    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_d

    const-class p3, Ljava/lang/Byte;

    if-ne p2, p3, :cond_c

    goto :goto_3

    :cond_c
    return-object p1

    .line 68
    :cond_d
    :goto_3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 61
    :cond_e
    :goto_4
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-gtz p2, :cond_f

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-ltz p2, :cond_f

    .line 64
    invoke-virtual {p1}, Ljava/math/BigDecimal;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 62
    :cond_f
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_10
    :goto_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 54
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 74
    :cond_11
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_12
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_18

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_13

    goto :goto_8

    .line 88
    :cond_13
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_17

    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_14

    goto :goto_7

    .line 96
    :cond_14
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_16

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_15

    goto :goto_6

    .line 104
    :cond_15
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 98
    :cond_16
    :goto_6
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseByte error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 90
    :cond_17
    :goto_7
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 92
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseShort error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 82
    :cond_18
    :goto_8
    :try_start_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 84
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseDouble error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getFastMatchToken()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
