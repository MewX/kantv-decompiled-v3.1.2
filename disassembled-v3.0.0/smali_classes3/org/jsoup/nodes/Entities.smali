.class public Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Entities$CoreCharset;,
        Lorg/jsoup/nodes/Entities$EscapeMode;
    }
.end annotation


# static fields
.field static final codepointRadix:I = 0x24

.field static final empty:I = -0x1

.field static final emptyName:Ljava/lang/String; = ""

.field private static entityPattern:Ljava/util/regex/Pattern;

.field private static final multipoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\w+)=(\\w+)(?:,(\\w+))?;(\\w+)$"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities;->entityPattern:Ljava/util/regex/Pattern;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lorg/jsoup/nodes/Entities;->load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private static appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3b

    const-string v1, ""

    if-eq p1, v1, :cond_0

    const/16 p2, 0x26

    .line 225
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const-string p1, "&#x"

    .line 227
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method private static canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 2

    .line 259
    sget-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    invoke-virtual {p0}, Lorg/jsoup/nodes/Entities$CoreCharset;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 265
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x80

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 3

    .line 122
    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    .line 128
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 130
    aput p0, p1, v2

    return v1

    :cond_1
    return v2
.end method

.method static escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 7

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    .line 139
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 141
    new-instance p1, Lorg/jsoup/SerializationException;

    invoke-direct {p1, p0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$CoreCharset;->access$100(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$CoreCharset;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_12

    .line 159
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    const/4 v8, 0x1

    if-eqz p4, :cond_3

    .line 162
    invoke-static {v7}, Lorg/jsoup/helper/StringUtil;->isWhitespace(I)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p5, :cond_0

    if-eqz v5, :cond_11

    :cond_0
    if-eqz v6, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v6, 0x20

    .line 165
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    :cond_3
    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_f

    int-to-char v8, v7

    const/16 v9, 0x22

    if-eq v8, v9, :cond_d

    const/16 v9, 0x26

    if-eq v8, v9, :cond_c

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_9

    const/16 v9, 0x3e

    if-eq v8, v9, :cond_7

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_5

    .line 207
    invoke-static {v1, v8, p2}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 208
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 210
    :cond_4
    invoke-static {p0, v0, v7}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    goto :goto_2

    .line 182
    :cond_5
    sget-object v8, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v0, v8, :cond_6

    const-string v8, "&nbsp;"

    .line 183
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_6
    const-string v8, "&#xa0;"

    .line 185
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_7
    if-nez p3, :cond_8

    const-string v8, "&gt;"

    .line 196
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 198
    :cond_8
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_b

    .line 189
    sget-object v9, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-ne v0, v9, :cond_a

    goto :goto_1

    .line 192
    :cond_a
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_b
    :goto_1
    const-string v8, "&lt;"

    .line 190
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_c
    const-string v8, "&amp;"

    .line 179
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_d
    if-eqz p3, :cond_e

    const-string v8, "&quot;"

    .line 202
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 204
    :cond_e
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 213
    :cond_f
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 214
    invoke-virtual {p2, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 215
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 217
    :cond_10
    invoke-static {p0, v0, v7}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 158
    :cond_11
    :goto_2
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 112
    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 115
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([III)V

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getCharacterByName(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    .line 103
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 93
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 83
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 11

    .line 282
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 283
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 284
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 285
    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p0, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$502(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 287
    const-class p2, Lorg/jsoup/nodes/Entities;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 290
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 294
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 296
    sget-object v3, Lorg/jsoup/nodes/Entities;->entityPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 298
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 299
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x24

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x3

    .line 300
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    if-eqz v9, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, -0x1

    :goto_1
    const/4 v9, 0x4

    .line 301
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 303
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v7

    aput-object v4, v7, v1

    .line 304
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v7

    aput v6, v7, v1

    .line 305
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v7

    aput v6, v7, v2

    .line 306
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$500(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v7

    aput-object v4, v7, v2

    if-eq v8, v10, :cond_2

    .line 309
    sget-object v2, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    new-array v9, v5, [I

    aput v6, v9, p2

    aput v8, v9, v3

    invoke-direct {v7, v9, p2, v5}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 317
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error reading resource "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not read resource "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure you copy resources for "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lorg/jsoup/nodes/Entities;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static unescape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 241
    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
