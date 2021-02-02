.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 47
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 52
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 73
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5

    .line 85
    array-length v0, p2

    add-int v1, v0, p1

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 91
    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static checkDate(CCCCCCII)Z
    .locals 4

    const/16 v0, 0x32

    const/16 v1, 0x31

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_d

    const/16 v3, 0x39

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p0, :cond_d

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, p0, :cond_d

    if-le p3, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p4, p0, :cond_5

    if-lt p5, v1, :cond_4

    if-le p5, v3, :cond_6

    :cond_4
    return v2

    :cond_5
    if-ne p4, v1, :cond_d

    if-eq p5, p0, :cond_6

    if-eq p5, v1, :cond_6

    if-eq p5, v0, :cond_6

    return v2

    :cond_6
    if-ne p6, p0, :cond_8

    if-lt p7, v1, :cond_7

    if-le p7, v3, :cond_c

    :cond_7
    return v2

    :cond_8
    if-eq p6, v1, :cond_b

    if-ne p6, v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x33

    if-ne p6, p1, :cond_a

    if-eq p7, p0, :cond_c

    if-eq p7, v1, :cond_c

    :cond_a
    return v2

    :cond_b
    :goto_0
    if-lt p7, p0, :cond_d

    if-le p7, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v2
.end method

.method private checkTime(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_1

    if-lt p2, v2, :cond_0

    if-le p2, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p1, v3, :cond_3

    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p1, v3, :cond_b

    if-lt p2, v2, :cond_b

    const/16 p1, 0x34

    if-le p2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x35

    const/16 p2, 0x36

    if-lt p3, v2, :cond_6

    if-gt p3, p1, :cond_6

    if-lt p4, v2, :cond_5

    if-le p4, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p3, p2, :cond_b

    if-eq p4, v2, :cond_7

    return v1

    :cond_7
    if-lt p5, v2, :cond_9

    if-gt p5, p1, :cond_9

    if-lt p6, v2, :cond_8

    if-le p6, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p5, p2, :cond_b

    if-eq p6, v2, :cond_a

    return v1

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_0
    return v1
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 701
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p3, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 702
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 703
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final arrayCopy(I[CII)V
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p4, p1

    invoke-virtual {v0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public bytesValue()[B
    .locals 9

    .line 112
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_4

    .line 113
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 114
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    .line 118
    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 119
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 121
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    const/16 v6, 0x37

    const/16 v7, 0x39

    if-gt v3, v7, :cond_0

    const/16 v8, 0x30

    goto :goto_1

    :cond_0
    const/16 v8, 0x37

    :goto_1
    sub-int/2addr v3, v8

    if-gt v4, v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x37

    :goto_2
    sub-int/2addr v4, v5

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 125
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 115
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result p1

    return p1
.end method

.method public final charAt(I)C
    .locals 1

    .line 58
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    return p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method protected final copyTo(II[C)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 6

    .line 183
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 185
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 190
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 191
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v2, v0, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 193
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v0, v2, v3, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 195
    :cond_2
    new-array v2, v1, [C

    .line 196
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr v1, v0

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 197
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0
.end method

.method public final indexOf(CI)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1793
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1795
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEOF()Z
    .locals 3

    .line 753
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1038
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1041
    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1046
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1049
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final next()C
    .locals 2

    .line 66
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 67
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .line 172
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 174
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 179
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanDouble(C)D
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1548
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1550
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 1551
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    add-int/lit8 v2, v3, 0x1

    .line 1554
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    add-int/lit8 v2, v3, 0x1

    .line 1559
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    :cond_3
    const/16 v9, 0x10

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_13

    const/16 v14, 0x39

    if-gt v2, v14, :cond_13

    sub-int/2addr v2, v13

    int-to-long v1, v2

    :goto_2
    add-int/lit8 v15, v3, 0x1

    .line 1566
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const-wide/16 v17, 0xa

    if-lt v3, v13, :cond_4

    if-gt v3, v14, :cond_4

    mul-long v1, v1, v17

    add-int/lit8 v3, v3, -0x30

    int-to-long v4, v3

    add-long/2addr v1, v4

    move v3, v15

    const/16 v4, 0x22

    goto :goto_2

    :cond_4
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    add-int/lit8 v3, v15, 0x1

    .line 1578
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_7

    if-gt v4, v14, :cond_7

    mul-long v1, v1, v17

    sub-int/2addr v4, v13

    int-to-long v4, v4

    add-long/2addr v1, v4

    move-wide/from16 v4, v17

    :goto_4
    add-int/lit8 v15, v3, 0x1

    .line 1583
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_6

    if-gt v3, v14, :cond_6

    mul-long v1, v1, v17

    add-int/lit8 v3, v3, -0x30

    move/from16 v19, v15

    int-to-long v14, v3

    add-long/2addr v1, v14

    mul-long v4, v4, v17

    move/from16 v3, v19

    const/16 v14, 0x39

    goto :goto_4

    :cond_6
    move/from16 v19, v15

    move/from16 v15, v19

    goto :goto_5

    .line 1593
    :cond_7
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10

    :cond_8
    const-wide/16 v4, 0x1

    :goto_5
    const/16 v14, 0x65

    if-eq v3, v14, :cond_a

    const/16 v14, 0x45

    if-ne v3, v14, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v16, 0x1

    :goto_7
    if-eqz v16, :cond_d

    add-int/lit8 v3, v15, 0x1

    .line 1600
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_c

    if-ne v14, v7, :cond_b

    goto :goto_9

    :cond_b
    :goto_8
    move v15, v3

    move v3, v14

    goto :goto_a

    :cond_c
    :goto_9
    add-int/lit8 v7, v3, 0x1

    .line 1602
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v7

    :goto_a
    if-lt v3, v13, :cond_d

    const/16 v7, 0x39

    if-gt v3, v7, :cond_d

    add-int/lit8 v3, v15, 0x1

    .line 1606
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    goto :goto_8

    :cond_d
    if-eqz v6, :cond_f

    const/16 v6, 0x22

    if-eq v3, v6, :cond_e

    .line 1616
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10

    :cond_e
    add-int/lit8 v3, v15, 0x1

    .line 1619
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 1621
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v10, 0x1

    add-int/2addr v7, v10

    sub-int v10, v3, v7

    add-int/lit8 v10, v10, -0x2

    move v15, v3

    move v3, v6

    goto :goto_b

    :cond_f
    const/4 v10, 0x1

    .line 1624
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v6, v15, v7

    add-int/lit8 v10, v6, -0x1

    :goto_b
    if-nez v16, :cond_10

    const/16 v6, 0x14

    if-ge v10, v6, :cond_10

    long-to-double v1, v1

    long-to-double v4, v4

    .line 1629
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    if-eqz v8, :cond_11

    neg-double v1, v1

    goto :goto_c

    .line 1634
    :cond_10
    invoke-virtual {v0, v7, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 1635
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_11
    :goto_c
    move/from16 v4, p1

    if-ne v3, v4, :cond_12

    .line 1676
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1677
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v3, 0x3

    .line 1678
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1679
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v1

    .line 1682
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_13
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_18

    add-int/lit8 v1, v3, 0x1

    .line 1638
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_18

    add-int/lit8 v2, v1, 0x1

    .line 1639
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_18

    add-int/lit8 v1, v2, 0x1

    .line 1640
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_18

    const/4 v2, 0x5

    .line 1641
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v3, v1, 0x1

    .line 1643
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v6, :cond_14

    const/16 v4, 0x22

    if-ne v1, v4, :cond_14

    add-int/lit8 v1, v3, 0x1

    .line 1646
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_d
    move/from16 v20, v3

    move v3, v1

    move/from16 v1, v20

    :cond_14
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_15

    .line 1651
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1652
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1653
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1654
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v10

    :cond_15
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_16

    .line 1657
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1658
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1659
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0xf

    .line 1660
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v10

    .line 1662
    :cond_16
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v1, v3, 0x1

    .line 1663
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_d

    .line 1668
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10

    .line 1671
    :cond_18
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10
.end method

.method public scanFieldBoolean([C)Z
    .locals 9

    const/4 v0, 0x0

    .line 1319
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1321
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 1322
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1326
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .line 1328
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 1332
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_1

    :cond_2
    move v8, v1

    move v1, p1

    move p1, v8

    :goto_1
    const/16 v5, 0x74

    const/16 v6, 0x65

    const/4 v7, -0x1

    if-ne p1, v5, :cond_8

    add-int/lit8 p1, v1, 0x1

    .line 1337
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v5, 0x72

    if-eq v1, v5, :cond_3

    .line 1338
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 1341
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v5, 0x75

    if-eq p1, v5, :cond_4

    .line 1342
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_4
    add-int/lit8 p1, v1, 0x1

    .line 1345
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_5

    .line 1346
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_5
    if-eqz v4, :cond_7

    add-int/lit8 v1, p1, 0x1

    .line 1350
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_6

    .line 1351
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_6
    move p1, v1

    .line 1355
    :cond_7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1356
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_2

    :cond_8
    const/16 v5, 0x66

    if-ne p1, v5, :cond_f

    add-int/lit8 p1, v1, 0x1

    .line 1359
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v5, 0x61

    if-eq v1, v5, :cond_9

    .line 1360
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_9
    add-int/lit8 v1, p1, 0x1

    .line 1363
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v5, 0x6c

    if-eq p1, v5, :cond_a

    .line 1364
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_a
    add-int/lit8 p1, v1, 0x1

    .line 1367
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v5, 0x73

    if-eq v1, v5, :cond_b

    .line 1368
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_b
    add-int/lit8 v1, p1, 0x1

    .line 1371
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v6, :cond_c

    .line 1372
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_c
    if-eqz v4, :cond_d

    add-int/lit8 p1, v1, 0x1

    .line 1376
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_e

    .line 1377
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_d
    move p1, v1

    .line 1381
    :cond_e
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1382
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_3

    :cond_f
    const/16 v5, 0x31

    if-ne p1, v5, :cond_12

    if-eqz v4, :cond_10

    add-int/lit8 p1, v1, 0x1

    .line 1385
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_11

    .line 1386
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_10
    move p1, v1

    .line 1390
    :cond_11
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1391
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_12
    const/16 v5, 0x30

    if-ne p1, v5, :cond_1d

    if-eqz v4, :cond_13

    add-int/lit8 p1, v1, 0x1

    .line 1394
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_14

    .line 1395
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_13
    move p1, v1

    .line 1399
    :cond_14
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1400
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_3
    const/4 v1, 0x0

    :goto_4
    const/16 v2, 0x10

    const/16 v4, 0x2c

    if-ne p1, v4, :cond_15

    .line 1409
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1410
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1411
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_7

    :cond_15
    const/16 v5, 0x7d

    if-ne p1, v5, :cond_1b

    .line 1414
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v4, :cond_16

    .line 1417
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1418
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_16
    const/16 v6, 0x5d

    if-ne p1, v6, :cond_17

    const/16 p1, 0xf

    .line 1420
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1421
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_17
    if-ne p1, v5, :cond_18

    const/16 p1, 0xd

    .line 1423
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1424
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_18
    const/16 v6, 0x1a

    if-ne p1, v6, :cond_19

    const/16 p1, 0x14

    .line 1426
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_6
    const/4 p1, 0x4

    .line 1436
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    :goto_7
    return v1

    .line 1427
    :cond_19
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1428
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_5

    .line 1431
    :cond_1a
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1438
    :cond_1b
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1439
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto/16 :goto_4

    .line 1441
    :cond_1c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1403
    :cond_1d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0
.end method

.method public scanFieldInt([C)I
    .locals 13

    const/4 v0, 0x0

    .line 757
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 758
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 759
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 761
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, -0x2

    .line 762
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 766
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v3, p1

    add-int/lit8 p1, v3, 0x1

    .line 768
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    add-int/lit8 v3, p1, 0x1

    .line 773
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_1

    :cond_2
    move v12, v3

    move v3, p1

    move p1, v12

    :goto_1
    const/16 v7, 0x2d

    if-ne p1, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    add-int/lit8 p1, v3, 0x1

    .line 778
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v12, v3

    move v3, p1

    move p1, v12

    :cond_4
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt p1, v8, :cond_16

    const/16 v10, 0x39

    if-gt p1, v10, :cond_16

    sub-int/2addr p1, v8

    :goto_3
    add-int/lit8 v11, v3, 0x1

    .line 785
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v8, :cond_5

    if-gt v3, v10, :cond_5

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr p1, v3

    move v3, v11

    goto :goto_3

    :cond_5
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_6

    .line 789
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_6
    if-gez p1, :cond_7

    .line 797
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_7
    if-eqz v6, :cond_9

    if-eq v3, v4, :cond_8

    .line 803
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_8
    add-int/lit8 v3, v11, 0x1

    .line 806
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    :goto_4
    move v11, v3

    move v3, v4

    :cond_9
    const/16 v4, 0x7d

    const/16 v6, 0x2c

    if-eq v3, v6, :cond_c

    if-ne v3, v4, :cond_a

    goto :goto_5

    .line 814
    :cond_a
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v3, v11, 0x1

    .line 815
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_4

    .line 818
    :cond_b
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_c
    :goto_5
    sub-int/2addr v11, v5

    .line 812
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v8, 0x10

    if-ne v3, v6, :cond_e

    .line 828
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x3

    .line 829
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 830
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v7, :cond_d

    neg-int p1, p1

    :cond_d
    return p1

    :cond_e
    if-ne v3, v4, :cond_14

    .line 835
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 836
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_6
    if-ne v3, v6, :cond_f

    .line 839
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 840
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    :cond_f
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_10

    const/16 v0, 0xf

    .line 843
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 844
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    :cond_10
    if-ne v3, v4, :cond_11

    const/16 v0, 0xd

    .line 847
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 848
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    :cond_11
    const/16 v10, 0x1a

    if-ne v3, v10, :cond_12

    const/16 v0, 0x14

    .line 851
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_7
    const/4 v0, 0x4

    .line 863
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_8

    .line 853
    :cond_12
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 854
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_6

    .line 857
    :cond_13
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 858
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 859
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_14
    :goto_8
    if-eqz v7, :cond_15

    neg-int p1, p1

    :cond_15
    return p1

    .line 823
    :cond_16
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0
.end method

.method public scanFieldLong([C)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1206
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1207
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1208
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1210
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    const/4 v1, -0x2

    .line 1211
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    .line 1215
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 1217
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v8, 0x22

    if-ne v5, v8, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    add-int/lit8 v5, v1, 0x1

    .line 1221
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_2
    move/from16 v18, v5

    move v5, v1

    move/from16 v1, v18

    :goto_1
    const/16 v11, 0x2d

    if-ne v1, v11, :cond_3

    add-int/lit8 v1, v5, 0x1

    .line 1226
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v5, v1

    move v1, v2

    const/4 v2, 0x1

    :cond_3
    const/16 v11, 0x30

    const/4 v12, -0x1

    if-lt v1, v11, :cond_15

    const/16 v13, 0x39

    if-gt v1, v13, :cond_15

    sub-int/2addr v1, v11

    int-to-long v14, v1

    :goto_2
    add-int/lit8 v1, v5, 0x1

    .line 1234
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-lt v5, v11, :cond_4

    if-gt v5, v13, :cond_4

    const-wide/16 v16, 0xa

    mul-long v14, v14, v16

    add-int/lit8 v5, v5, -0x30

    int-to-long v8, v5

    add-long/2addr v14, v8

    move v5, v1

    const/16 v8, 0x22

    goto :goto_2

    :cond_4
    const/16 v8, 0x2e

    if-ne v5, v8, :cond_5

    .line 1238
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_5
    if-eqz v10, :cond_7

    const/16 v8, 0x22

    if-eq v5, v8, :cond_6

    .line 1243
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_6
    add-int/lit8 v5, v1, 0x1

    .line 1246
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_3

    :cond_7
    move/from16 v18, v5

    move v5, v1

    move/from16 v1, v18

    :goto_3
    const/16 v8, 0x7d

    const/16 v9, 0x2c

    if-eq v1, v9, :cond_8

    if-ne v1, v8, :cond_9

    :cond_8
    add-int/lit8 v10, v5, -0x1

    .line 1251
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :cond_9
    cmp-long v10, v14, v6

    if-gez v10, :cond_a

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v13, v14, v10

    if-eqz v13, :cond_a

    .line 1258
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1259
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1260
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_a
    :goto_4
    const/16 v10, 0x10

    if-ne v1, v9, :cond_c

    .line 1272
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1273
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1274
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v2, :cond_b

    neg-long v14, v14

    :cond_b
    return-wide v14

    :cond_c
    if-ne v1, v8, :cond_13

    .line 1277
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_5
    if-ne v1, v9, :cond_d

    .line 1280
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1281
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_d
    const/16 v11, 0x5d

    if-ne v1, v11, :cond_e

    const/16 v1, 0xf

    .line 1284
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1285
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_e
    if-ne v1, v8, :cond_f

    const/16 v1, 0xd

    .line 1288
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1289
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_f
    const/16 v5, 0x1a

    if-ne v1, v5, :cond_11

    const/16 v1, 0x14

    .line 1292
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_6
    const/4 v1, 0x4

    .line 1303
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    if-eqz v2, :cond_10

    neg-long v14, v14

    :cond_10
    return-wide v14

    .line 1294
    :cond_11
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1295
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v11, 0x1

    add-int/2addr v1, v11

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/4 v5, 0x1

    goto :goto_5

    .line 1297
    :cond_12
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1298
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1299
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_13
    const/4 v11, 0x1

    .line 1305
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1306
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v5, 0x1

    .line 1307
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move/from16 v18, v5

    move v5, v1

    move/from16 v1, v18

    goto/16 :goto_4

    .line 1310
    :cond_14
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    .line 1264
    :cond_15
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1265
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1266
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 870
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 871
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 872
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 874
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, -0x2

    .line 875
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 876
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 879
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    .line 881
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v6, -0x1

    if-eq v3, v5, :cond_1

    .line 883
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 885
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 891
    :cond_1
    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    if-eq v3, v6, :cond_d

    sub-int v7, v3, v4

    .line 896
    invoke-virtual {p0, v4, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x5c

    .line 897
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v6, :cond_4

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v8, 0x0

    :goto_1
    if-ltz v4, :cond_2

    .line 901
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_2

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 907
    :cond_2
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_3

    .line 913
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    sub-int v0, v3, v0

    .line 914
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object p1

    .line 916
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 910
    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    goto :goto_0

    :cond_4
    :goto_2
    add-int/lit8 p1, v3, 0x1

    .line 919
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v0, 0x7d

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_7

    if-ne p1, v0, :cond_5

    goto :goto_4

    .line 927
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, v3, 0x1

    .line 929
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_3

    .line 931
    :cond_6
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 933
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 923
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 924
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v5, :cond_8

    .line 939
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 940
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 944
    :cond_8
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_9

    const/16 p1, 0x10

    .line 946
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 947
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_9
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_a

    const/16 p1, 0xf

    .line 949
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 950
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_a
    if-ne p1, v0, :cond_b

    const/16 p1, 0xd

    .line 952
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 953
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_b
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_c

    const/16 p1, 0x14

    .line 955
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_5
    const/4 p1, 0x4

    .line 962
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 957
    :cond_c
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 958
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 959
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 960
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 893
    :cond_d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1056
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1058
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v1, -0x2

    .line 1059
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_0
    move-object/from16 v3, p2

    .line 1063
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 1077
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 1079
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    const-string v7, "ull"

    const/16 v8, 0x5d

    const/16 v9, 0x2c

    const/4 v10, 0x3

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x1

    .line 1082
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_0
    const/16 v6, 0x22

    if-ne v1, v6, :cond_5

    .line 1087
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    if-eq v1, v11, :cond_4

    sub-int v13, v1, v5

    .line 1092
    invoke-virtual {v0, v5, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5c

    .line 1093
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v15, v11, :cond_3

    :goto_1
    add-int/lit8 v13, v1, -0x1

    const/4 v15, 0x0

    :goto_2
    if-ltz v13, :cond_1

    .line 1097
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_1

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, -0x1

    const/4 v2, 0x0

    goto :goto_2

    .line 1103
    :cond_1
    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_2

    sub-int v2, v1, v5

    .line 1110
    invoke-virtual {v0, v5, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v5

    .line 1112
    invoke-static {v5, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1106
    invoke-virtual {v0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_3
    add-int/2addr v1, v12

    add-int/lit8 v2, v1, 0x1

    .line 1116
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1118
    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1089
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_8

    .line 1119
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v2, v5, 0x1

    .line 1121
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1122
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_4
    if-ne v1, v9, :cond_6

    add-int/lit8 v5, v2, 0x1

    .line 1132
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    if-ne v1, v8, :cond_7

    add-int/lit8 v1, v2, 0x1

    .line 1137
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1138
    :goto_5
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v2, v1, 0x1

    .line 1139
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto :goto_5

    .line 1144
    :cond_7
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_8
    if-ne v1, v8, :cond_9

    .line 1123
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v1, v5, 0x1

    .line 1124
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_6

    .line 1127
    :cond_9
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1147
    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/2addr v1, v10

    add-int/lit8 v2, v1, 0x1

    .line 1149
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object v3, v4

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    .line 1156
    :cond_b
    :goto_6
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ne v2, v9, :cond_c

    .line 1158
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1159
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    :cond_c
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_13

    .line 1162
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    :goto_7
    if-ne v2, v9, :cond_d

    const/16 v1, 0x10

    .line 1165
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1166
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    :cond_d
    if-ne v2, v8, :cond_e

    const/16 v1, 0xf

    .line 1169
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1170
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    :cond_e
    if-ne v2, v5, :cond_f

    const/16 v1, 0xd

    .line 1173
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1174
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    :cond_f
    const/16 v6, 0x1a

    if-ne v2, v6, :cond_10

    const/16 v1, 0x14

    .line 1177
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1178
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_8
    const/4 v1, 0x4

    .line 1196
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    :cond_10
    move v6, v1

    const/4 v1, 0x0

    .line 1182
    :goto_9
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_11

    add-int/lit8 v1, v6, 0x1

    .line 1183
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1184
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v6, v1

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    if-eqz v1, :cond_12

    move v1, v6

    goto :goto_7

    .line 1191
    :cond_12
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1198
    :cond_13
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1152
    :cond_14
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4
.end method

.method public scanFieldSymbol([C)J
    .locals 9

    const/4 v0, 0x0

    .line 968
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 970
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    .line 971
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 975
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 977
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    const/4 v4, -0x1

    if-eq v0, v3, :cond_1

    .line 979
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_1
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 985
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_9

    .line 987
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 988
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_1
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_2

    .line 1001
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1002
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v5

    :cond_2
    const/16 v3, 0x7d

    if-ne p1, v3, :cond_7

    .line 1005
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1006
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1007
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result p1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x10

    .line 1009
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1010
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_3
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_4

    const/16 p1, 0xf

    .line 1012
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1013
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_4
    if-ne p1, v3, :cond_5

    const/16 p1, 0xd

    .line 1015
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1016
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_5
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_6

    const/16 p1, 0x14

    .line 1018
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_2
    const/4 p1, 0x4

    .line 1023
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v5

    .line 1020
    :cond_6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 1025
    :cond_7
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1026
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_1

    .line 1029
    :cond_8
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 990
    :cond_9
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v0, v7, :cond_a

    .line 991
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_a
    int-to-long v7, p1

    xor-long/2addr v5, v7

    const-wide v7, 0x100000001b3L

    mul-long v5, v5, v7

    move p1, v0

    goto/16 :goto_0
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 35

    move-object/from16 v9, p0

    .line 206
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v10, v0, v1

    const/16 v11, 0x39

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v8, 0x30

    const/4 v7, 0x0

    if-nez p1, :cond_4

    const/16 v0, 0xd

    if-le v10, v0, :cond_4

    .line 209
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 210
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 211
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v14

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 212
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v13

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 213
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 214
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v15

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 216
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 217
    iget v13, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v13, v10

    sub-int/2addr v13, v14

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    const/16 v14, 0x2f

    if-ne v0, v14, :cond_4

    const/16 v0, 0x44

    if-ne v1, v0, :cond_4

    const/16 v0, 0x61

    if-ne v2, v0, :cond_4

    const/16 v0, 0x74

    if-ne v3, v0, :cond_4

    const/16 v0, 0x65

    if-ne v4, v0, :cond_4

    const/16 v0, 0x28

    if-ne v5, v0, :cond_4

    const/16 v0, 0x2f

    if-ne v6, v0, :cond_4

    const/16 v0, 0x29

    if-ne v13, v0, :cond_4

    const/4 v0, -0x1

    const/4 v0, 0x6

    const/4 v1, -0x1

    :goto_0
    if-ge v0, v10, :cond_2

    .line 222
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v0

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    if-lt v2, v8, :cond_2

    if-le v2, v11, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    return v7

    .line 232
    :cond_3
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v12

    sub-int/2addr v1, v0

    .line 233
    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 236
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 237
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 239
    iput v15, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16

    :cond_4
    const/16 v13, 0x3a

    const/16 v14, 0x8

    const/16 v6, 0x9

    const/16 v5, 0xe

    const/16 v4, 0x2d

    const/16 v19, 0xa

    if-eq v10, v14, :cond_3e

    if-eq v10, v5, :cond_3e

    const/16 v0, 0x10

    if-ne v10, v0, :cond_5

    .line 245
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xa

    .line 247
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3e

    :cond_5
    const/16 v0, 0x11

    if-ne v10, v0, :cond_6

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v12

    .line 248
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_6

    goto/16 :goto_18

    :cond_6
    if-ge v10, v6, :cond_7

    return v7

    .line 368
    :cond_7
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 369
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 370
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 371
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v17, 0x3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 372
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 373
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v15

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 374
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 375
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 376
    iget v15, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v15, v14

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 377
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v14, v6

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    if-ne v5, v4, :cond_8

    if-eq v12, v4, :cond_9

    :cond_8
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_a

    const/16 v6, 0x2f

    if-ne v12, v6, :cond_a

    :cond_9
    move v12, v1

    move v6, v11

    move/from16 v33, v14

    move/from16 v32, v15

    const/16 v34, 0xa

    :goto_3
    move v11, v0

    move v15, v2

    move v14, v3

    goto/16 :goto_e

    :cond_a
    if-ne v5, v4, :cond_c

    if-ne v11, v4, :cond_c

    const/16 v5, 0x20

    if-ne v15, v5, :cond_b

    move v11, v0

    move v15, v2

    move v14, v3

    move v6, v8

    move/from16 v33, v12

    const/16 v8, 0x30

    const/16 v32, 0x30

    const/16 v34, 0x8

    :goto_4
    move v12, v1

    goto/16 :goto_e

    :cond_b
    move v11, v0

    move v14, v3

    move v6, v8

    move/from16 v32, v12

    move/from16 v33, v15

    const/16 v8, 0x30

    const/16 v34, 0x9

    :goto_5
    move v12, v1

    :goto_6
    move v15, v2

    goto/16 :goto_e

    :cond_c
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_d

    const/16 v6, 0x2e

    if-eq v8, v6, :cond_e

    :cond_d
    if-ne v2, v4, :cond_f

    if-ne v8, v4, :cond_f

    :cond_e
    move/from16 v32, v0

    move/from16 v33, v1

    move v8, v3

    move v6, v5

    const/16 v34, 0xa

    goto/16 :goto_e

    :cond_f
    const/16 v6, 0x5e74

    if-eq v5, v6, :cond_11

    const v6, 0xb144

    if-ne v5, v6, :cond_10

    goto :goto_7

    :cond_10
    return v7

    :cond_11
    :goto_7
    const/16 v5, 0x6708

    if-eq v12, v5, :cond_19

    const v5, 0xc6d4

    if-ne v12, v5, :cond_12

    goto :goto_b

    :cond_12
    const/16 v5, 0x6708

    if-eq v11, v5, :cond_14

    const v5, 0xc6d4

    if-ne v11, v5, :cond_13

    goto :goto_8

    :cond_13
    return v7

    :cond_14
    :goto_8
    const/16 v5, 0x65e5

    if-eq v15, v5, :cond_18

    const v5, 0xc77c

    if-ne v15, v5, :cond_15

    goto :goto_a

    :cond_15
    const/16 v5, 0x65e5

    if-eq v14, v5, :cond_17

    const v5, 0xc77c

    if-ne v14, v5, :cond_16

    goto :goto_9

    :cond_16
    return v7

    :cond_17
    :goto_9
    move v11, v0

    move v14, v3

    move v6, v8

    move/from16 v32, v12

    move/from16 v33, v15

    const/16 v8, 0x30

    const/16 v34, 0xa

    goto :goto_5

    :cond_18
    :goto_a
    move v11, v0

    move v15, v2

    move v14, v3

    move v6, v8

    move/from16 v33, v12

    const/16 v8, 0x30

    const/16 v32, 0x30

    const/16 v34, 0xa

    goto :goto_4

    :cond_19
    :goto_b
    const/16 v5, 0x65e5

    if-eq v14, v5, :cond_1d

    const v5, 0xc77c

    if-ne v14, v5, :cond_1a

    goto :goto_d

    .line 434
    :cond_1a
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x65e5

    if-eq v5, v6, :cond_1c

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const v6, 0xc77c

    if-ne v5, v6, :cond_1b

    goto :goto_c

    :cond_1b
    return v7

    :cond_1c
    :goto_c
    const/16 v5, 0xb

    move v12, v1

    move v6, v11

    move/from16 v33, v14

    move/from16 v32, v15

    const/16 v34, 0xb

    goto/16 :goto_3

    :cond_1d
    :goto_d
    move v12, v1

    move v14, v3

    move v6, v11

    move/from16 v33, v15

    const/16 v32, 0x30

    const/16 v34, 0xa

    move v11, v0

    goto/16 :goto_6

    :goto_e
    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v15

    move/from16 v27, v14

    move/from16 v28, v8

    move/from16 v29, v6

    move/from16 v30, v32

    move/from16 v31, v33

    .line 461
    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_1e

    return v7

    :cond_1e
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v15

    const/16 v11, 0x2d

    move v4, v14

    const/16 v12, 0xe

    move v5, v8

    const/16 v14, 0x9

    const/4 v15, 0x0

    move/from16 v7, v32

    const/16 v14, 0x30

    move/from16 v8, v33

    .line 465
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 467
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v0, 0x54

    if-eq v7, v0, :cond_26

    const/16 v0, 0x20

    if-ne v7, v0, :cond_1f

    if-nez p1, :cond_1f

    goto/16 :goto_12

    :cond_1f
    const/16 v0, 0x22

    if-eq v7, v0, :cond_25

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_25

    const/16 v0, 0x65e5

    if-eq v7, v0, :cond_25

    const v0, 0xc77c

    if-ne v7, v0, :cond_20

    goto :goto_11

    :cond_20
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_22

    if-ne v7, v11, :cond_21

    goto :goto_f

    :cond_21
    return v15

    .line 483
    :cond_22
    :goto_f
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v1, v34, 0x6

    if-ne v0, v1, :cond_24

    .line 484
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_24

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    add-int/lit8 v0, v0, 0x4

    .line 485
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-ne v0, v14, :cond_24

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 486
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v14, :cond_23

    goto :goto_10

    :cond_23
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    .line 490
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 491
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v12, v15}, Ljava/util/Calendar;->set(II)V

    .line 492
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v1, v1, v34

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v7, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    return v16

    :cond_24
    :goto_10
    return v15

    .line 473
    :cond_25
    :goto_11
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 474
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 475
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 476
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v12, v15}, Ljava/util/Calendar;->set(II)V

    .line 478
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x5

    .line 480
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16

    :cond_26
    :goto_12
    add-int/lit8 v7, v34, 0x9

    if-ge v10, v7, :cond_27

    return v15

    .line 500
    :cond_27
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v13, :cond_28

    return v15

    .line 503
    :cond_28
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/4 v1, 0x6

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v13, :cond_29

    return v15

    .line 507
    :cond_29
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 508
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 509
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v21

    .line 510
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/4 v1, 0x5

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v24

    .line 511
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v25

    .line 512
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v23

    .line 514
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_2a

    return v15

    :cond_2a
    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v23

    .line 518
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 520
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3c

    add-int/lit8 v0, v34, 0xb

    if-ge v10, v0, :cond_2b

    return v15

    .line 545
    :cond_2b
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v1, v1, v34

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-lt v1, v14, :cond_3b

    const/16 v2, 0x39

    if-le v1, v2, :cond_2c

    goto/16 :goto_17

    :cond_2c
    sub-int/2addr v1, v14

    if-le v10, v0, :cond_2d

    .line 553
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-lt v0, v14, :cond_2d

    if-gt v0, v2, :cond_2d

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v14

    add-int/2addr v1, v0

    const/4 v0, 0x2

    goto :goto_13

    :cond_2d
    const/4 v0, 0x1

    :goto_13
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    .line 561
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v34

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_2e

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2e

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v14

    add-int/2addr v1, v2

    const/4 v0, 0x3

    .line 568
    :cond_2e
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 571
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v1, v1, v34

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_32

    if-ne v1, v11, :cond_2f

    goto :goto_14

    :cond_2f
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_31

    .line 609
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_30

    .line 610
    invoke-static {v15}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 611
    array-length v2, v1

    if-lez v2, :cond_30

    .line 612
    aget-object v1, v1, v15

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 613
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_30
    const/16 v17, 0x1

    goto/16 :goto_16

    :cond_31
    const/16 v17, 0x0

    goto/16 :goto_16

    .line 573
    :cond_32
    :goto_14
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v34

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_3b

    const/16 v3, 0x31

    if-le v2, v3, :cond_33

    goto/16 :goto_17

    .line 578
    :cond_33
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v3, v34

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_3b

    const/16 v4, 0x39

    if-le v3, v4, :cond_34

    goto/16 :goto_17

    .line 583
    :cond_34
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v4, v34

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    const/4 v5, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v13, :cond_37

    .line 585
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v4, v34

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v14, :cond_35

    return v15

    .line 590
    :cond_35
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v4, v34

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    const/4 v5, 0x5

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v14, :cond_36

    return v15

    :cond_36
    const/16 v17, 0x6

    goto :goto_15

    :cond_37
    if-ne v4, v14, :cond_39

    .line 596
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v4, v34

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eq v4, v14, :cond_38

    return v15

    :cond_38
    const/16 v17, 0x5

    goto :goto_15

    :cond_39
    const/16 v17, 0x3

    .line 605
    :goto_15
    invoke-virtual {v9, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 618
    :goto_16
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v34, v34, 0xa

    add-int v34, v34, v0

    add-int v34, v34, v17

    add-int v1, v1, v34

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3a

    return v15

    .line 622
    :cond_3a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v0, v0, v34

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x5

    .line 624
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16

    :cond_3b
    :goto_17
    return v15

    .line 526
    :cond_3c
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    .line 528
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v7

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x5

    .line 530
    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3d

    .line 534
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 535
    invoke-static {v15}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 536
    array-length v1, v0

    if-lez v1, :cond_3d

    .line 537
    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 538
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3d
    return v16

    :cond_3e
    :goto_18
    const/16 v11, 0x2d

    const/16 v12, 0xe

    const/16 v14, 0x30

    const/4 v15, 0x0

    if-eqz p1, :cond_3f

    return v15

    .line 255
    :cond_3f
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 256
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v21

    .line 257
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .line 258
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 259
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 260
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 261
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v3, 0x6

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 262
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 263
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v22

    if-ne v0, v11, :cond_40

    if-ne v3, v11, :cond_40

    const/4 v4, 0x1

    goto :goto_19

    :cond_40
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_41

    const/16 v5, 0x10

    if-ne v10, v5, :cond_41

    const/4 v11, 0x1

    goto :goto_1a

    :cond_41
    const/4 v11, 0x0

    :goto_1a
    if-eqz v4, :cond_42

    const/16 v4, 0x11

    if-ne v10, v4, :cond_42

    const/16 v24, 0x1

    goto :goto_1b

    :cond_42
    const/16 v24, 0x0

    :goto_1b
    if-nez v24, :cond_44

    if-eqz v11, :cond_43

    goto :goto_1c

    :cond_43
    move/from16 v25, v0

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v28, v3

    goto :goto_1d

    .line 276
    :cond_44
    :goto_1c
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v3, 0x9

    add-int/2addr v0, v3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move/from16 v28, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v22

    :goto_1d
    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v17

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v7, v27

    move/from16 v8, v28

    .line 289
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_45

    return v15

    :cond_45
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v17

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v7, v27

    move/from16 v8, v28

    .line 293
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v0, 0x8

    if-eq v10, v0, :cond_50

    .line 297
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 298
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 299
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 300
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 301
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xd

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eqz v24, :cond_46

    const/16 v5, 0x54

    if-ne v1, v5, :cond_46

    if-ne v4, v13, :cond_46

    .line 305
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_48

    :cond_46
    if-eqz v11, :cond_49

    const/16 v5, 0x20

    if-eq v1, v5, :cond_47

    const/16 v5, 0x54

    if-ne v1, v5, :cond_49

    :cond_47
    if-ne v4, v13, :cond_49

    .line 309
    :cond_48
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 310
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v8, v0

    move v11, v1

    move/from16 v22, v2

    move v7, v3

    const/16 v13, 0x30

    const/16 v17, 0x30

    goto :goto_1e

    :cond_49
    move v7, v0

    move v8, v1

    move v11, v2

    move v13, v3

    move/from16 v17, v4

    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v7

    move v3, v8

    move v4, v11

    move v5, v13

    move/from16 v6, v17

    .line 322
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_4a

    return v15

    :cond_4a
    const/16 v0, 0x11

    if-ne v10, v0, :cond_4f

    if-nez v24, :cond_4f

    .line 327
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 328
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 329
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v0, v14, :cond_4e

    const/16 v3, 0x39

    if-le v0, v3, :cond_4b

    goto :goto_1f

    :cond_4b
    if-lt v1, v14, :cond_4e

    if-le v1, v3, :cond_4c

    goto :goto_1f

    :cond_4c
    if-lt v2, v14, :cond_4e

    if-le v2, v3, :cond_4d

    goto :goto_1f

    :cond_4d
    sub-int/2addr v0, v14

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v14

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int/2addr v2, v14

    add-int/2addr v0, v2

    move v15, v0

    goto :goto_20

    :cond_4e
    :goto_1f
    return v15

    :cond_4f
    :goto_20
    add-int/lit8 v22, v22, -0x30

    mul-int/lit8 v22, v22, 0xa

    sub-int/2addr v7, v14

    add-int v7, v22, v7

    sub-int/2addr v8, v14

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v11, v14

    add-int v0, v8, v11

    sub-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v17, v17, -0x30

    add-int v1, v13, v17

    move v2, v15

    move v15, v7

    goto :goto_21

    :cond_50
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 355
    :goto_21
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v15}, Ljava/util/Calendar;->set(II)V

    .line 356
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 357
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 358
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v12, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 360
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v16
.end method

.method public final scanInt(C)I
    .locals 12

    const/4 v0, 0x0

    .line 1450
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1452
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v1, 0x1

    .line 1453
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 1457
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v11, v2

    move v2, v1

    move v1, v11

    :cond_1
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 1462
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v11, v2

    move v2, v1

    move v1, v11

    :cond_3
    const/16 v6, 0x10

    const/16 v7, 0x30

    const/4 v8, -0x1

    if-lt v1, v7, :cond_d

    const/16 v9, 0x39

    if-gt v1, v9, :cond_d

    sub-int/2addr v1, v7

    :goto_2
    add-int/lit8 v10, v2, 0x1

    .line 1469
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_4

    if-gt v2, v9, :cond_4

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    move v2, v10

    goto :goto_2

    :cond_4
    const/16 v7, 0x2e

    if-ne v2, v7, :cond_5

    .line 1473
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_5
    if-eqz v5, :cond_7

    if-eq v2, v3, :cond_6

    .line 1478
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_6
    add-int/lit8 v2, v10, 0x1

    .line 1481
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v2

    move v2, v10

    :goto_3
    if-gez v1, :cond_8

    .line 1488
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_8
    :goto_4
    if-ne v3, p1, :cond_a

    .line 1531
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1532
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1533
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1534
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v4, :cond_9

    neg-int v1, v1

    :cond_9
    return v1

    .line 1537
    :cond_a
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v2, 0x1

    .line 1538
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v2, v0

    goto :goto_4

    .line 1541
    :cond_b
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    if-eqz v4, :cond_c

    neg-int v1, v1

    :cond_c
    return v1

    :cond_d
    const/16 p1, 0x6e

    if-ne v1, p1, :cond_12

    add-int/lit8 p1, v2, 0x1

    .line 1492
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_12

    add-int/lit8 v1, p1, 0x1

    .line 1493
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v2, 0x6c

    if-ne p1, v2, :cond_12

    add-int/lit8 p1, v1, 0x1

    .line 1494
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_12

    const/4 v1, 0x5

    .line 1495
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v2, p1, 0x1

    .line 1497
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eqz v5, :cond_e

    if-ne p1, v3, :cond_e

    add-int/lit8 p1, v2, 0x1

    .line 1500
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    :goto_5
    move v11, v2

    move v2, p1

    move p1, v11

    :cond_e
    const/16 v3, 0x2c

    if-ne p1, v3, :cond_f

    .line 1505
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1506
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1507
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1508
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v0

    :cond_f
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_10

    .line 1511
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1512
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1513
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 p1, 0xf

    .line 1514
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v0

    .line 1516
    :cond_10
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_11

    add-int/lit8 p1, v2, 0x1

    .line 1517
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_5

    .line 1522
    :cond_11
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1525
    :cond_12
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0
.end method

.method public scanLong(C)J
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1688
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1690
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 1691
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    add-int/lit8 v2, v3, 0x1

    .line 1695
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v2, v3, 0x1

    .line 1700
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :cond_3
    const/16 v5, 0x10

    const/16 v7, 0x30

    const/4 v8, -0x1

    const-wide/16 v9, 0x0

    if-lt v2, v7, :cond_c

    const/16 v11, 0x39

    if-gt v2, v11, :cond_c

    sub-int/2addr v2, v7

    int-to-long v12, v2

    :goto_1
    add-int/lit8 v2, v3, 0x1

    .line 1707
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_4

    if-gt v3, v11, :cond_4

    const-wide/16 v14, 0xa

    mul-long v12, v12, v14

    add-int/lit8 v3, v3, -0x30

    int-to-long v14, v3

    add-long/2addr v12, v14

    move v3, v2

    goto :goto_1

    :cond_4
    const/16 v7, 0x2e

    if-ne v3, v7, :cond_5

    .line 1711
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    :cond_5
    if-eqz v6, :cond_7

    if-eq v3, v4, :cond_6

    .line 1716
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 1719
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :cond_7
    cmp-long v4, v12, v9

    if-gez v4, :cond_8

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v12, v6

    if-eqz v4, :cond_8

    .line 1726
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    :cond_8
    move v4, v2

    move/from16 v2, p1

    :goto_2
    if-ne v3, v2, :cond_a

    .line 1769
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1770
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x3

    .line 1771
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1772
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v1, :cond_9

    neg-long v12, v12

    :cond_9
    return-wide v12

    .line 1775
    :cond_a
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v3, v4, 0x1

    .line 1776
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_2

    .line 1780
    :cond_b
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v12

    :cond_c
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_11

    add-int/lit8 v1, v3, 0x1

    .line 1730
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_11

    add-int/lit8 v2, v1, 0x1

    .line 1731
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_11

    add-int/lit8 v1, v2, 0x1

    .line 1732
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_11

    const/4 v2, 0x5

    .line 1733
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v3, v1, 0x1

    .line 1735
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v6, :cond_d

    if-ne v1, v4, :cond_d

    add-int/lit8 v1, v3, 0x1

    .line 1738
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_3
    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    :cond_d
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_e

    .line 1743
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1744
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1745
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1746
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v9

    :cond_e
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_f

    .line 1749
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1750
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1751
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0xf

    .line 1752
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v9

    .line 1754
    :cond_f
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v1, v3, 0x1

    .line 1755
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_3

    .line 1760
    :cond_10
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    .line 1763
    :cond_11
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9
.end method

.method protected setTime(CCCCCC)V
    .locals 0

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    .line 632
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    .line 633
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 634
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 0

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0xe10

    mul-int/lit16 p2, p2, 0x3e8

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_0

    neg-int p2, p2

    .line 643
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 644
    invoke-static {p2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object p1

    .line 645
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 646
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 647
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .line 138
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 4

    .line 146
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 149
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 151
    :cond_0
    new-array v0, p2, [C

    .line 152
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 153
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final sub_chars(II)[C
    .locals 3

    .line 161
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 163
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-object p1

    .line 165
    :cond_0
    new-array v0, p2, [C

    .line 166
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method
