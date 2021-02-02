.class public Lorg/eclipse/jetty/server/CookieCutter;
.super Ljava/lang/Object;
.source "CookieCutter.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _cookies:[Ljavax/servlet/http/Cookie;

.field _fields:I

.field private _lastCookies:[Ljavax/servlet/http/Cookie;

.field _lazyFields:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCookieField(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    return-void

    .line 99
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 103
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    return-void
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_0

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/CookieCutter;->parseFields()V

    .line 65
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    return-object v0
.end method

.method protected parseFields()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 110
    iput-object v2, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 111
    iput-object v2, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 118
    :goto_0
    iget-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v3, v1, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v3, :cond_0

    .line 119
    iget-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 122
    :goto_1
    iget v6, v1, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-ge v4, v6, :cond_1e

    .line 124
    iget-object v6, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v6, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 137
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    move-object v10, v0

    move-object v3, v2

    move-object v15, v3

    move-object/from16 v16, v15

    move v2, v5

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_2
    if-ge v5, v7, :cond_1d

    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v17, v7

    const/16 v7, 0x22

    const-string v18, ""

    const/16 v19, 0x1

    if-eqz v0, :cond_6

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto/16 :goto_11

    :cond_1
    if-eq v9, v7, :cond_3

    const/16 v7, 0x5c

    if-eq v9, v7, :cond_2

    goto/16 :goto_11

    :cond_2
    const/4 v12, 0x1

    goto/16 :goto_11

    :cond_3
    if-ne v5, v8, :cond_5

    if-eqz v11, :cond_4

    add-int/lit8 v0, v5, 0x1

    .line 160
    invoke-virtual {v6, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v5, 0x1

    .line 163
    invoke-virtual {v6, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move v14, v5

    move v9, v13

    move-object/from16 v16, v18

    goto :goto_4

    :cond_5
    :goto_3
    move v14, v5

    move v9, v13

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_6
    const/16 v7, 0x9

    if-eqz v11, :cond_c

    if-eq v9, v7, :cond_1c

    const/16 v7, 0x20

    if-eq v9, v7, :cond_1c

    const/16 v7, 0x22

    if-eq v9, v7, :cond_a

    const/16 v7, 0x3b

    if-eq v9, v7, :cond_8

    if-gez v13, :cond_7

    move v9, v5

    goto :goto_5

    :cond_7
    move v9, v13

    :goto_5
    if-ne v5, v8, :cond_e

    add-int/lit8 v7, v5, 0x1

    .line 218
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :goto_6
    move v7, v0

    move v14, v5

    goto/16 :goto_d

    :cond_8
    if-ltz v13, :cond_9

    add-int/lit8 v7, v14, 0x1

    .line 205
    invoke-virtual {v6, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_7

    :cond_9
    move-object/from16 v16, v18

    :goto_7
    move v7, v0

    const/4 v9, -0x1

    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_a
    if-gez v13, :cond_b

    move v9, v5

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    move v9, v13

    :goto_8
    if-ne v5, v8, :cond_e

    add-int/lit8 v7, v5, 0x1

    .line 197
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :cond_c
    if-eq v9, v7, :cond_1c

    const/16 v7, 0x20

    if-eq v9, v7, :cond_1c

    const/16 v7, 0x22

    if-eq v9, v7, :cond_13

    const/16 v7, 0x3b

    if-eq v9, v7, :cond_11

    const/16 v7, 0x3d

    if-eq v9, v7, :cond_f

    if-gez v13, :cond_d

    move v9, v5

    goto :goto_9

    :cond_d
    move v9, v13

    :goto_9
    if-ne v5, v8, :cond_e

    add-int/lit8 v7, v5, 0x1

    .line 271
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :goto_a
    move v7, v0

    move v14, v5

    move-object/from16 v16, v18

    goto :goto_d

    :cond_e
    move v14, v5

    :goto_b
    move v13, v9

    goto/16 :goto_11

    :cond_f
    if-ltz v13, :cond_10

    add-int/lit8 v7, v14, 0x1

    .line 260
    invoke-virtual {v6, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_10
    const/4 v11, 0x1

    const/4 v13, -0x1

    goto/16 :goto_11

    :cond_11
    if-ltz v13, :cond_12

    add-int/lit8 v7, v14, 0x1

    .line 252
    invoke-virtual {v6, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v18

    :cond_12
    move v7, v0

    const/4 v9, -0x1

    goto :goto_d

    :cond_13
    if-gez v13, :cond_14

    move v9, v5

    const/4 v0, 0x1

    goto :goto_c

    :cond_14
    move v9, v13

    :goto_c
    if-ne v5, v8, :cond_e

    add-int/lit8 v7, v5, 0x1

    .line 242
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    :goto_d
    if-eqz v16, :cond_1b

    if-eqz v15, :cond_1b

    .line 284
    invoke-static {v15}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static/range {v16 .. v16}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :try_start_0
    const-string v15, "$"

    .line 289
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 291
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "$path"

    .line 292
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    if-eqz v3, :cond_18

    .line 295
    invoke-virtual {v3, v13}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    goto :goto_e

    :cond_15
    const-string v15, "$domain"

    .line 297
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    if-eqz v3, :cond_18

    .line 300
    invoke-virtual {v3, v13}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    const-string v15, "$port"

    .line 302
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    if-eqz v3, :cond_18

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "$port="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/servlet/http/Cookie;->setComment(Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    const-string v15, "$version"

    .line 307
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 309
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :cond_18
    :goto_e
    move-object v15, v3

    goto :goto_10

    .line 314
    :cond_19
    new-instance v15, Ljavax/servlet/http/Cookie;

    invoke-direct {v15, v0, v13}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v2, :cond_1a

    .line 316
    :try_start_1
    invoke-virtual {v15, v2}, Ljavax/servlet/http/Cookie;->setVersion(I)V

    .line 317
    :cond_1a
    invoke-static {v10, v15}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v15, v3

    .line 322
    :goto_f
    sget-object v3, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_10
    move v0, v7

    move v13, v9

    move-object v3, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_11

    :cond_1b
    move v0, v7

    goto/16 :goto_b

    :cond_1c
    :goto_11
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v17

    goto/16 :goto_2

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move-object v0, v10

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 331
    :cond_1e
    const-class v2, Ljavax/servlet/http/Cookie;

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/servlet/http/Cookie;

    check-cast v0, [Ljavax/servlet/http/Cookie;

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 332
    iget-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    return-void
.end method
