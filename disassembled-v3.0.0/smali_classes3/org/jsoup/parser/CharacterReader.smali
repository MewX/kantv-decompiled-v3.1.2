.class final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field private static final maxCacheLen:I = 0xc


# instance fields
.field private final input:[C

.field private final length:I

.field private mark:I

.field private pos:I

.field private final stringCache:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 18
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    const/16 v0, 0x200

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 24
    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    array-length p1, p1

    iput p1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    return-void
.end method

.method private cacheString(II)Ljava/lang/String;
    .locals 6

    .line 348
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 349
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    const/16 v2, 0xc

    if-le p2, v2, :cond_0

    .line 353
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    move v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    add-int/lit8 v5, v4, 0x1

    .line 359
    aget-char v4, v0, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    .line 363
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    .line 364
    aget-object v3, v1, v2

    if-nez v3, :cond_2

    .line 367
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 368
    aput-object v3, v1, v2

    goto :goto_1

    .line 370
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lorg/jsoup/parser/CharacterReader;->rangeEquals(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 373
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 374
    aput-object v3, v1, v2

    :goto_1
    return-object v3
.end method


# virtual methods
.method advance()V
    .locals 1

    .line 50
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method

.method consume()C
    .locals 2

    .line 40
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v0, v1, v0

    .line 41
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method consumeData()Ljava/lang/String;
    .locals 6

    .line 157
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 158
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 159
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 161
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_1

    .line 162
    aget-char v4, v2, v3

    const/16 v5, 0x26

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 165
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 168
    :cond_1
    :goto_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v1, v0, :cond_2

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .line 239
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 240
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_0

    .line 241
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 243
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 247
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 3

    .line 227
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 228
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 229
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v2, v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x46

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v1, v2, :cond_3

    const/16 v2, 0x66

    if-gt v1, v2, :cond_3

    .line 231
    :cond_2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 235
    :cond_3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 3

    .line 194
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 195
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 196
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 197
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    :cond_2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 203
    :cond_3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 207
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 208
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 209
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 210
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    :cond_2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 215
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-gt v1, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 218
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_1

    .line 223
    :cond_4
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 6

    .line 173
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 174
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 175
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 177
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_1

    .line 178
    aget-char v4, v2, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 181
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 184
    :cond_1
    :goto_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v1, v0, :cond_2

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 2

    .line 104
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 106
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 115
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 117
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 7

    .line 126
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 127
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 128
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 130
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_2

    .line 131
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-char v5, p1, v4

    .line 132
    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v6, v2, v6

    if-ne v6, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    :cond_1
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 138
    :cond_2
    :goto_2
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le p1, v0, :cond_3

    sub-int/2addr p1, v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const-string p1, ""

    :goto_3
    return-object p1
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 4

    .line 142
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 143
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 144
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 146
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v1, :cond_1

    .line 147
    aget-char v3, v2, v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 152
    :cond_1
    :goto_1
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le p1, v0, :cond_2

    sub-int/2addr p1, v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 2

    .line 188
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    .line 330
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 331
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method current()C
    .locals 2

    .line 36
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v0, v1, v0

    :goto_0
    return v0
.end method

.method isEmpty()Z
    .locals 2

    .line 32
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mark()V
    .locals 1

    .line 54
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 1

    .line 311
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 320
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matches(C)Z
    .locals 2

    .line 251
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 257
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method varargs matchesAny([C)Z
    .locals 5

    .line 281
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    .line 285
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method matchesAnySorted([C)Z
    .locals 2

    .line 293
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method matchesDigit()Z
    .locals 3

    .line 304
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 272
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 273
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method matchesLetter()Z
    .locals 3

    .line 297
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    .line 300
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method nextIndexOf(C)I
    .locals 2

    .line 72
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 74
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 8

    const/4 v0, 0x0

    .line 87
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 88
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_3

    .line 90
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    .line 91
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 94
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v1, v5, :cond_2

    if-gt v4, v5, :cond_2

    move v3, v2

    const/4 v5, 0x1

    :goto_2
    if-ge v3, v4, :cond_1

    .line 95
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v7, v7, v3

    if-ne v6, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    if-ne v3, v4, :cond_2

    .line 97
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method pos()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 5

    .line 384
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 385
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p2, -0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 389
    aget-char p1, v0, p1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    move p1, p2

    move p2, v3

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method rewindToMark()V
    .locals 1

    .line 58
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 337
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method unconsume()V
    .locals 1

    .line 46
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return-void
.end method
