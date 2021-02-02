.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONStreamAware;
.implements Lcom/alibaba/fastjson/JSONAware;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static DEFAULT_TYPE_KEY:Ljava/lang/String; = null

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.2.37"

.field private static final bytesLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final charsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;

.field static final emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 86
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    const-string v0, "@type"

    .line 89
    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    sput-object v1, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 93
    sput-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 98
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v1, v0

    .line 99
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 100
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 101
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 103
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 104
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 105
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 106
    sput v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 112
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 113
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 114
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 115
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "fastjson.serializerFeatures.MapSortField"

    .line 118
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    const-string v3, "true"

    .line 120
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const-string v3, "false"

    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit8 v1, v2, -0x1

    and-int/2addr v0, v1

    .line 127
    :cond_1
    :goto_0
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 970
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    .line 988
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateBytes(I)[B
    .locals 2

    .line 972
    sget-object v0, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_0

    .line 976
    new-array v0, v0, [B

    .line 977
    sget-object p0, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 979
    :cond_0
    new-array v0, p0, [B

    goto :goto_0

    .line 981
    :cond_1
    array-length v1, v0

    if-ge v1, p0, :cond_2

    .line 982
    new-array v0, p0, [B

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static allocateChars(I)[C
    .locals 2

    .line 990
    sget-object v0, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_0

    .line 994
    new-array v0, v0, [C

    .line 995
    sget-object p0, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 997
    :cond_0
    new-array v0, p0, [C

    goto :goto_0

    .line 999
    :cond_1
    array-length v1, v0

    if-ge v1, p0, :cond_2

    .line 1000
    new-array v0, p0, [C

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "TT;)V"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 143
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 152
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    .line 206
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 207
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const/4 v4, 0x1

    .line 208
    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 4

    .line 184
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    .line 186
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 187
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v0

    .line 189
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 190
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 191
    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 193
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p0

    .line 195
    new-instance p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    invoke-direct {p1, v0, p0, p2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p0

    .line 198
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    if-eqz p0, :cond_2

    .line 171
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 176
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p4, v2

    const/4 v4, 0x1

    .line 177
    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/JSON;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3

    .line 162
    array-length v0, p0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v0

    .line 163
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeUTF8([BII[C)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 492
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 496
    iget-object p0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 497
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 498
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 500
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p0

    const/16 v2, 0x14

    if-ne p0, v2, :cond_2

    goto :goto_0

    .line 503
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 504
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 506
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 509
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 521
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 522
    iget-object p0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 523
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 525
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 527
    invoke-interface {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 530
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 533
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 536
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 548
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 549
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 556
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object v0
.end method

.method public static parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 219
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 220
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 221
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 225
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 227
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "can not cast to JSONObject."

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 215
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 462
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :cond_0
    move-object v3, p1

    const/high16 p1, 0x10000

    .line 465
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->allocateBytes(I)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 468
    :cond_1
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    const/4 v1, 0x0

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    .line 480
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v2, v1

    .line 473
    array-length v1, p1

    if-ne v2, v1, :cond_1

    .line 474
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 475
    array-length v4, p1

    invoke-static {p1, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    goto :goto_0
.end method

.method public static varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 243
    iget-object p1, p1, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 484
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 270
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 265
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const/4 v3, 0x1

    .line 307
    invoke-static {p2, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {p3, p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 311
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 313
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 329
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p5, :cond_1

    .line 340
    array-length v1, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p5, v2

    .line 341
    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_1
    new-instance p5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {p5, p0, p2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    if-eqz p3, :cond_4

    .line 348
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    if-eqz p0, :cond_2

    .line 349
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraTypeProviders()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_2
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    if-eqz p0, :cond_3

    .line 353
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraProcessors()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_3
    instance-of p0, p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz p0, :cond_4

    .line 357
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    invoke-virtual {p5, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setFieldTypeResolver(Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;)V

    .line 361
    :cond_4
    invoke-virtual {p5, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 363
    invoke-virtual {p5, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 324
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 297
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 381
    sget-object p3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 385
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    .line 386
    array-length p3, p0

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object p3

    .line 387
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson/util/IOUtils;->decodeUTF8([BII[C)I

    move-result p0

    if-gez p0, :cond_1

    return-object v1

    .line 391
    :cond_1
    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2, p0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_2
    if-gez p2, :cond_3

    return-object v1

    .line 396
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object p1, v0

    .line 398
    :goto_0
    invoke-static {p1, p4, p5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 408
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    .line 410
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 411
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v0

    .line 413
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 414
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 415
    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 417
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p0

    .line 419
    invoke-static {v0, p0, p4, p5}, Lcom/alibaba/fastjson/JSON;->parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 372
    array-length v2, p0

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 424
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 428
    :cond_0
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 429
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    const/4 v4, 0x1

    .line 430
    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p3, p0, p1, v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 434
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 436
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setDefaultTypeKey(Ljava/lang/String;)V
    .locals 7

    .line 135
    sput-object p0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    .line 136
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;IIIZ)Ljava/lang/String;

    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 852
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 0

    .line 859
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 868
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_1

    return-object p0

    .line 872
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 873
    check-cast p0, Ljava/util/Map;

    .line 875
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 877
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 878
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 879
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 880
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 881
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p1

    .line 887
    :cond_3
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 888
    check-cast p0, Ljava/util/Collection;

    .line 890
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 892
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 893
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 894
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p1

    .line 900
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 903
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 906
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 907
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 909
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_7

    .line 912
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 913
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 914
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    .line 920
    :cond_8
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object p0

    .line 924
    :cond_9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    .line 925
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_b

    .line 926
    check-cast p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 928
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 930
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 931
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 932
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_a
    return-object v0

    :catch_0
    move-exception p0

    .line 935
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "toJSON error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 940
    :cond_b
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 941
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    .line 618
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2

    .line 688
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 691
    :try_start_0
    new-instance p2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 692
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 693
    sget-object p0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    .line 681
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    .line 611
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 572
    sget-object v0, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 2

    .line 583
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    check-cast v1, Ljava/io/Writer;

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 586
    :try_start_0
    new-instance p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 587
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 588
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 629
    new-array v3, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 2

    .line 649
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 652
    :try_start_0
    new-instance p4, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p4, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    if-eqz p3, :cond_0

    .line 654
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 656
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p3, 0x1

    invoke-virtual {p4, p1, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 660
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget-object p5, p2, p3

    .line 661
    invoke-virtual {p4, p5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 667
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 636
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 622
    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 603
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 701
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 704
    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 607
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    .line 576
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 599
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    .line 677
    sget-object v2, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 945
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p6, p7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 796
    :try_start_0
    new-instance p6, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p6, v0, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    if-eqz p5, :cond_0

    .line 798
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    .line 799
    invoke-virtual {p6, p5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 800
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p5, 0x1

    invoke-virtual {p6, p3, p5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    :cond_0
    if-eqz p4, :cond_1

    .line 804
    array-length p3, p4

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_1

    aget-object p7, p4, p5

    .line 805
    invoke-virtual {p6, p7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p6, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 811
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    .line 730
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 733
    :try_start_0
    new-instance p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 734
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw p0
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    .line 723
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public static varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0

    .line 711
    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .line 825
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 827
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 828
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public toJavaObject(Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/TypeReference;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 967
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 952
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 959
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 821
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 3

    .line 835
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 837
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 840
    :try_start_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw p1
.end method
