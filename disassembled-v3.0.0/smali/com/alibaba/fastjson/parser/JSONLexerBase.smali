.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    const/16 v0, 0x67

    .line 3942
    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 3946
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    .line 3950
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    .line 3953
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 67
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 68
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 74
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 77
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 79
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 80
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 83
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 85
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-nez p1, :cond_1

    const/16 p1, 0x200

    .line 86
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    :cond_1
    return-void
.end method

.method public static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 12

    .line 3492
    new-array v0, p1, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_9

    .line 3495
    aget-char v4, p0, v2

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 3498
    aput-char v4, v0, v3

    move v3, v5

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 3501
    aget-char v4, p0, v2

    const/16 v7, 0x22

    if-eq v4, v7, :cond_8

    const/16 v7, 0x27

    if-eq v4, v7, :cond_7

    const/16 v7, 0x46

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_5

    const/16 v5, 0x62

    if-eq v4, v5, :cond_4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x72

    if-eq v4, v5, :cond_2

    const/16 v5, 0x78

    const/16 v7, 0x10

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 3570
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "unclosed.str.lit"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    .line 3538
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v4, v3, 0x1

    .line 3563
    new-instance v10, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    aget-char v11, p0, v2

    aput-char v11, v5, v1

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v6

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v9

    add-int/2addr v2, v6

    aget-char v9, p0, v2

    aput-char v9, v5, v8

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 3532
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    .line 3526
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    .line 3523
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x5

    .line 3520
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_6
    add-int/lit8 v4, v3, 0x1

    .line 3517
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_7
    add-int/lit8 v4, v3, 0x1

    .line 3514
    aput-char v8, v0, v3

    goto :goto_1

    :pswitch_8
    add-int/lit8 v4, v3, 0x1

    .line 3511
    aput-char v9, v0, v3

    goto :goto_1

    :pswitch_9
    add-int/lit8 v4, v3, 0x1

    .line 3508
    aput-char v6, v0, v3

    goto :goto_1

    :pswitch_a
    add-int/lit8 v4, v3, 0x1

    .line 3505
    aput-char v1, v0, v3

    goto :goto_1

    :pswitch_b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2f

    .line 3554
    aput-char v5, v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 3560
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v2, 0x1

    aget-char v8, p0, v2

    aget v8, v5, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v2, v6

    aget-char v7, p0, v2

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-char v5, v8

    aput-char v5, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    .line 3545
    aput-char v5, v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    .line 3535
    aput-char v5, v0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    .line 3529
    aput-char v5, v0, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x1

    .line 3557
    aput-char v5, v0, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    .line 3542
    aput-char v5, v0, v3

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v3, 0x1

    .line 3551
    aput-char v7, v0, v3

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 3548
    aput-char v7, v0, v3

    :goto_1
    move v3, v4

    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 3573
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanStringSingleQuote()V
    .locals 9

    .line 3613
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 3614
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 3617
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x27

    if-ne v1, v3, :cond_0

    .line 3729
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3730
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_0
    const-string v4, "unclosed single-quote string"

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_2

    .line 3624
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3625
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 3628
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_d

    .line 3632
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v1, :cond_4

    .line 3633
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 3635
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    if-le v1, v8, :cond_3

    mul-int/lit8 v1, v1, 0x2

    .line 3636
    new-array v1, v1, [C

    .line 3637
    array-length v8, v7

    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3638
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 3642
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v6

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v1, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 3646
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/16 v7, 0x22

    if-eq v1, v7, :cond_c

    if-eq v1, v3, :cond_b

    const/16 v3, 0x46

    if-eq v1, v3, :cond_a

    if-eq v1, v5, :cond_9

    const/16 v3, 0x62

    if-eq v1, v3, :cond_8

    const/16 v3, 0x66

    if-eq v1, v3, :cond_a

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_7

    const/16 v3, 0x72

    if-eq v1, v3, :cond_6

    const/16 v3, 0x78

    const/16 v5, 0x10

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 3711
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3712
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v1, 0xb

    .line 3683
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3708
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x9

    .line 3677
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x7

    .line 3671
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x6

    .line 3668
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, 0x5

    .line 3665
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3662
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3659
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3656
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3653
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3650
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x2f

    .line 3699
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3705
    :cond_5
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xd

    .line 3690
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xa

    .line 3680
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    .line 3674
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3702
    :cond_9
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xc

    .line 3687
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3696
    :cond_b
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3693
    :cond_c
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 3717
    :cond_d
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_e

    .line 3718
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 3722
    :cond_e
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_f

    .line 3723
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v4, v2, 0x1

    .line 3725
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_0

    .line 1090
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 525
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 527
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 528
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 2

    .line 3912
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 3915
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 3919
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 3923
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 3925
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3928
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 4

    .line 509
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 512
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-le v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "float overflow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .line 549
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final intValue()I
    .locals 13

    .line 1033
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1034
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1039
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v0

    .line 1043
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    const/high16 v3, -0x80000000

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    goto :goto_0

    :cond_1
    const v3, -0x7fffffff

    const/4 v3, 0x0

    const v4, -0x7fffffff

    :goto_0
    const-wide/32 v6, -0xccccccc

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 1052
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v12, v1

    move v1, v0

    move v0, v12

    :cond_2
    :goto_1
    if-ge v0, v2, :cond_7

    add-int/lit8 v8, v0, 0x1

    .line 1057
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-ne v0, v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x30

    int-to-long v9, v1

    cmp-long v11, v9, v6

    if-ltz v11, :cond_5

    mul-int/lit8 v1, v1, 0xa

    add-int v9, v4, v0

    if-lt v1, v9, :cond_4

    sub-int/2addr v1, v0

    move v0, v8

    goto :goto_1

    .line 1070
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    move v0, v8

    :cond_7
    if-eqz v3, :cond_9

    .line 1076
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v2, v5

    if-le v0, v2, :cond_8

    return v1

    .line 1079
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-int v0, v1

    return v0
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 418
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 419
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 421
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v3, v1

    const/16 v4, 0x20

    add-int/lit8 v5, v3, -0x1

    .line 428
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x53

    const/16 v7, 0x4c

    const/16 v8, 0x42

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x53

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x4c

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x42

    .line 445
    :goto_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v5, v9, :cond_4

    const-wide/high16 v11, -0x8000000000000000L

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    const-wide v13, -0xcccccccccccccccL

    if-ge v1, v3, :cond_5

    add-int/lit8 v5, v1, 0x1

    .line 454
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v8, v1

    move v1, v5

    goto :goto_2

    :cond_5
    const-wide/16 v8, 0x0

    :goto_2
    if-ge v1, v3, :cond_8

    add-int/lit8 v5, v1, 0x1

    .line 459
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    cmp-long v15, v8, v13

    if-gez v15, :cond_6

    .line 461
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_6
    const-wide/16 v15, 0xa

    mul-long v8, v8, v15

    int-to-long v13, v1

    add-long v17, v11, v13

    cmp-long v1, v8, v17

    if-gez v1, :cond_7

    .line 465
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_7
    sub-long/2addr v8, v13

    move v1, v5

    const-wide v13, -0xcccccccccccccccL

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_d

    .line 471
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v2, v10

    if-le v1, v2, :cond_c

    const-wide/32 v1, -0x80000000

    cmp-long v3, v8, v1

    if-ltz v3, :cond_b

    if-eq v4, v7, :cond_b

    if-ne v4, v6, :cond_9

    long-to-int v1, v8

    int-to-short v1, v1

    .line 474
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_9
    const/16 v1, 0x42

    if-ne v4, v1, :cond_a

    long-to-int v1, v8

    int-to-byte v1, v1

    .line 478
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_a
    long-to-int v1, v8

    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 483
    :cond_b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 485
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    neg-long v1, v8

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v1, v8

    if-gtz v3, :cond_10

    if-eq v4, v7, :cond_10

    if-ne v4, v6, :cond_e

    long-to-int v2, v1

    int-to-short v1, v2

    .line 491
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_e
    const/16 v3, 0x42

    if-ne v4, v3, :cond_f

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 495
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_f
    long-to-int v2, v1

    .line 498
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 500
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public isBlankInput()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3580
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    const/16 v0, 0x14

    .line 3582
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v0, 0x1

    return v0

    .line 3586
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 1

    .line 537
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(II)Z
    .locals 1

    .line 541
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

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

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 0

    .line 533
    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public final isRef()Z
    .locals 5

    .line 1096
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    .line 1100
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x24

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    .line 1101
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x72

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 1102
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v2

    .line 1103
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void
.end method

.method public final longValue()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 3863
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3864
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 3867
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v0

    .line 3869
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    const-wide/high16 v3, -0x8000000000000000L

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const-wide v6, -0xcccccccccccccccL

    if-ge v0, v2, :cond_2

    add-int/lit8 v8, v0, 0x1

    .line 3878
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v9, v0

    :goto_1
    move v0, v8

    goto :goto_2

    :cond_2
    const-wide/16 v9, 0x0

    :goto_2
    if-ge v0, v2, :cond_7

    add-int/lit8 v8, v0, 0x1

    .line 3883
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v11, 0x4c

    if-eq v0, v11, :cond_6

    const/16 v11, 0x53

    if-eq v0, v11, :cond_6

    const/16 v11, 0x42

    if-ne v0, v11, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x30

    cmp-long v11, v9, v6

    if-ltz v11, :cond_5

    const-wide/16 v11, 0xa

    mul-long v9, v9, v11

    int-to-long v11, v0

    add-long v13, v3, v11

    cmp-long v0, v9, v13

    if-ltz v0, :cond_4

    sub-long/2addr v9, v11

    goto :goto_1

    .line 3895
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3891
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    move v0, v8

    :cond_7
    if-eqz v1, :cond_9

    .line 3901
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v5

    if-le v0, v1, :cond_8

    return-wide v9

    .line 3904
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v0, v9

    return-wide v0
.end method

.method public final matchField([C)Z
    .locals 3

    .line 1159
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1163
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1164
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1166
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x7b

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xc

    .line 1168
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_2

    .line 1170
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xe

    .line 1171
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x53

    if-ne p1, v2, :cond_3

    .line 1172
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x74

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_3

    .line 1173
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1174
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0x15

    .line 1175
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1177
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_0
    return v1
.end method

.method public final matchStat()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
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

    .line 1513
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1516
    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1517
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1521
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

    .line 1524
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .line 366
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 369
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_2

    .line 370
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    :goto_2
    return-void
.end method

.method public final nextToken()V
    .locals 3

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 106
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 108
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_1
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 120
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_2
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 129
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 209
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6

    .line 213
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 214
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    goto/16 :goto_1

    .line 185
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 186
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 181
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 182
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 205
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    return-void

    .line 150
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    return-void

    .line 156
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    return-void

    .line 153
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    return-void

    .line 177
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xf

    .line 178
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 173
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 174
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 162
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    return-void

    .line 193
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x18

    .line 194
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 189
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x11

    .line 190
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 197
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x19

    .line 198
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 201
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 169
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xb

    .line 170
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 165
    :sswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xa

    .line 166
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 136
    :sswitch_f
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    return-void

    .line 137
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :sswitch_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_0

    .line 210
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1f

    if-le v1, v2, :cond_9

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    .line 221
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "illegal.char"

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :goto_1
    return-void

    .line 217
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_10
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0x20 -> :sswitch_10
        0x27 -> :sswitch_f
        0x28 -> :sswitch_e
        0x29 -> :sswitch_d
        0x2b -> :sswitch_c
        0x2e -> :sswitch_b
        0x3a -> :sswitch_a
        0x3b -> :sswitch_9
        0x4e -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_8
        0x78 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 9

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    :goto_0
    const/4 v0, 0x2

    const/16 v1, 0xd

    const/16 v2, 0x39

    const/16 v3, 0x22

    const/16 v4, 0x30

    const/16 v5, 0xe

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    const/16 v8, 0xc

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    if-eq p1, v8, :cond_6

    const/16 v0, 0x12

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1a

    const/16 v2, 0x14

    if-eq p1, v2, :cond_4

    const/16 v3, 0xf

    const/16 v4, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 249
    :pswitch_0
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    const/16 p1, 0x10

    .line 250
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_0
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_1

    .line 256
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_1
    if-ne v5, v4, :cond_2

    .line 262
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_2
    if-ne v5, v0, :cond_10

    .line 268
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 337
    :pswitch_1
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v5, v4, :cond_4

    .line 338
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 324
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v6, :cond_3

    .line 325
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_3
    if-ne v0, v7, :cond_10

    .line 331
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 343
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v3, v0, :cond_10

    .line 344
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 349
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    return-void

    .line 237
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v7, :cond_7

    .line 238
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 239
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_7
    if-ne v0, v6, :cond_10

    .line 243
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 299
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_9

    .line 300
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_9
    if-lt v0, v4, :cond_a

    if-gt v0, v2, :cond_a

    .line 306
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 311
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v6, :cond_b

    .line 312
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_b
    if-ne v0, v7, :cond_10

    .line 318
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 273
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_d

    if-gt v0, v2, :cond_d

    .line 274
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 279
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_e

    .line 280
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_e
    if-ne v0, v6, :cond_f

    .line 286
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_f
    if-ne v0, v7, :cond_10

    .line 292
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 293
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 355
    :cond_10
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_12

    const/16 v2, 0xa

    if-eq v0, v2, :cond_12

    if-eq v0, v1, :cond_12

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    if-eq v0, v8, :cond_12

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    goto :goto_2

    .line 360
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    .line 356
    :cond_12
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 384
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    :cond_0
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", info : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    const/16 v0, 0x3a

    .line 377
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 0

    const/16 p1, 0x3a

    .line 505
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4

    .line 3737
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 3738
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 3739
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3740
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 3742
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 814
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    return-void
.end method

.method public scanBoolean(C)Z
    .locals 9

    const/4 v0, 0x0

    .line 1957
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1960
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/16 v4, 0x65

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x74

    if-ne v1, v8, :cond_1

    .line 1964
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x72

    if-ne v1, v8, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v7

    .line 1965
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x75

    if-ne v1, v8, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v6

    .line 1966
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1968
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    const/4 v6, 0x5

    goto :goto_0

    .line 1971
    :cond_0
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_1
    const/16 v8, 0x66

    if-ne v1, v8, :cond_3

    .line 1975
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x61

    if-ne v1, v8, :cond_2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v7

    .line 1976
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x6c

    if-ne v1, v8, :cond_2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v6

    .line 1977
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v6, 0x73

    if-ne v1, v6, :cond_2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 1978
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1980
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x6

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v6, 0x6

    goto :goto_0

    .line 1983
    :cond_2
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_3
    const/16 v3, 0x31

    if-ne v1, v3, :cond_4

    .line 1987
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/16 v3, 0x30

    if-ne v1, v3, :cond_5

    .line 1990
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    :goto_0
    if-ne v1, p1, :cond_6

    .line 1996
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1997
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1998
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2001
    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2002
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v6, v3

    goto :goto_0

    .line 2005
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanDouble(C)D
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2692
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2695
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 2698
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :goto_1
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    .line 2703
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v10

    :cond_3
    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x30

    if-lt v2, v15, :cond_13

    const/16 v1, 0x39

    if-gt v2, v1, :cond_13

    sub-int/2addr v2, v15

    int-to-long v10, v2

    .line 2710
    :goto_3
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const-wide/16 v18, 0xa

    if-lt v2, v15, :cond_4

    if-gt v2, v1, :cond_4

    mul-long v10, v10, v18

    add-int/lit8 v2, v2, -0x30

    int-to-long v6, v2

    add-long/2addr v10, v6

    move/from16 v7, v17

    goto :goto_3

    :cond_4
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    .line 2722
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v15, :cond_7

    if-gt v2, v1, :cond_7

    mul-long v10, v10, v18

    sub-int/2addr v2, v15

    int-to-long v3, v2

    add-long/2addr v10, v3

    move-wide/from16 v2, v18

    .line 2727
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v15, :cond_6

    if-gt v4, v1, :cond_6

    mul-long v10, v10, v18

    add-int/lit8 v4, v4, -0x30

    move/from16 v20, v9

    int-to-long v8, v4

    add-long/2addr v10, v8

    mul-long v2, v2, v18

    move v6, v7

    move/from16 v9, v20

    const/16 v8, 0x2d

    goto :goto_5

    :cond_6
    move/from16 v20, v9

    move/from16 v17, v7

    move-wide/from16 v21, v2

    move v2, v4

    move-wide/from16 v3, v21

    goto :goto_6

    .line 2737
    :cond_7
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    :cond_8
    move/from16 v20, v9

    const-wide/16 v3, 0x1

    :goto_6
    const/16 v7, 0x65

    if-eq v2, v7, :cond_a

    const/16 v7, 0x45

    if-ne v2, v7, :cond_9

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v16, 0x1

    :goto_8
    if-eqz v16, :cond_d

    .line 2744
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v8, 0x2b

    if-eq v2, v8, :cond_c

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v17, v7

    goto :goto_b

    .line 2746
    :cond_c
    :goto_9
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    :goto_a
    move/from16 v17, v6

    :goto_b
    if-lt v2, v15, :cond_d

    if-gt v2, v1, :cond_d

    .line 2750
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_a

    :cond_d
    if-eqz v5, :cond_f

    const/16 v1, 0x22

    if-eq v2, v1, :cond_e

    .line 2760
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    .line 2763
    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v17, 0x1

    add-int v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2765
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v2

    sub-int/2addr v5, v6

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    goto :goto_c

    .line 2768
    :cond_f
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v6, v17

    sub-int/2addr v1, v6

    const/4 v5, 0x1

    add-int/lit8 v5, v1, -0x1

    move v1, v2

    move/from16 v2, v17

    :goto_c
    if-nez v16, :cond_10

    const/16 v7, 0x14

    if-ge v5, v7, :cond_10

    long-to-double v5, v10

    long-to-double v3, v3

    .line 2773
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    if-eqz v20, :cond_11

    neg-double v5, v5

    goto :goto_d

    .line 2778
    :cond_10
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    .line 2779
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    :cond_11
    :goto_d
    move/from16 v3, p1

    if-ne v1, v3, :cond_12

    .line 2818
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2819
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2820
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 2821
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v5

    .line 2824
    :cond_12
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    :cond_13
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_18

    .line 2781
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_18

    const/4 v1, 0x5

    .line 2782
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    add-int/2addr v7, v2

    .line 2785
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_14

    const/16 v4, 0x22

    if-ne v2, v4, :cond_14

    .line 2788
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v4

    :cond_14
    :goto_e
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_15

    .line 2793
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2794
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2795
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0x10

    .line 2796
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v12

    :cond_15
    const/16 v4, 0x10

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_16

    .line 2799
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2800
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2801
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2802
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v12

    .line 2804
    :cond_16
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2805
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    goto :goto_e

    .line 2810
    :cond_17
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    .line 2813
    :cond_18
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1433
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1437
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public final scanFalse()V
    .locals 3

    .line 3417
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse false"

    const/16 v2, 0x66

    if-ne v0, v2, :cond_6

    .line 3420
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3422
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x61

    if-ne v0, v2, :cond_5

    .line 3425
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3427
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    .line 3430
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3432
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x73

    if-ne v0, v2, :cond_3

    .line 3435
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3437
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-ne v0, v2, :cond_2

    .line 3440
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3442
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3446
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x7

    .line 3444
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 3438
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3433
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3428
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3423
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3418
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 9

    const/4 v0, 0x0

    .line 2100
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 2103
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2107
    :cond_0
    array-length p1, p1

    .line 2108
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x74

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne p1, v1, :cond_4

    .line 2112
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x72

    if-eq p1, v2, :cond_1

    .line 2113
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2116
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x75

    if-eq p1, v1, :cond_2

    .line 2117
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2120
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_3

    .line 2121
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x66

    if-ne p1, v1, :cond_f

    .line 2127
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x61

    if-eq p1, v2, :cond_5

    .line 2128
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2131
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x6c

    if-eq p1, v1, :cond_6

    .line 2132
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2135
    :cond_6
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x73

    if-eq p1, v2, :cond_7

    .line 2136
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2139
    :cond_7
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_8

    .line 2140
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_8
    move v1, v2

    const/4 p1, 0x0

    .line 2150
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_9

    .line 2152
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2153
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 2154
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2155
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return p1

    :cond_9
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_e

    .line 2161
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_a

    .line 2163
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2164
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2165
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_a
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_b

    const/16 v0, 0xf

    .line 2167
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2168
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2169
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_b
    if-ne v1, v7, :cond_c

    const/16 v0, 0xd

    .line 2171
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2172
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2173
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_c
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_d

    const/16 v0, 0x14

    .line 2175
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2176
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v5

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2177
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1
    const/4 v0, 0x4

    .line 2182
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return p1

    .line 2179
    :cond_d
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2184
    :cond_e
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2146
    :cond_f
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public final scanFieldDouble([C)D
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3172
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3174
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    const/4 v1, -0x2

    .line 3175
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3179
    :cond_0
    array-length v3, v1

    .line 3180
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v6, 0x22

    if-ne v3, v6, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    .line 3183
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v10

    :cond_2
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_4

    .line 3188
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v12

    :cond_4
    const/16 v14, 0x2c

    const/4 v15, -0x1

    const/16 v2, 0x30

    if-lt v3, v2, :cond_19

    const/16 v13, 0x39

    if-gt v3, v13, :cond_19

    sub-int/2addr v3, v2

    move/from16 v17, v7

    int-to-long v6, v3

    .line 3196
    :goto_2
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const-wide/16 v19, 0xa

    if-lt v3, v2, :cond_5

    if-gt v3, v13, :cond_5

    mul-long v6, v6, v19

    add-int/lit8 v3, v3, -0x30

    move/from16 v21, v9

    int-to-long v8, v3

    add-long/2addr v6, v8

    move/from16 v17, v18

    move/from16 v9, v21

    goto :goto_2

    :cond_5
    move/from16 v21, v9

    const/16 v8, 0x2e

    if-ne v3, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_8

    .line 3208
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v18, 0x1

    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_7

    if-gt v3, v13, :cond_7

    mul-long v6, v6, v19

    sub-int/2addr v3, v2

    move/from16 v22, v11

    int-to-long v10, v3

    add-long/2addr v6, v10

    move-wide/from16 v10, v19

    .line 3213
    :goto_4
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v8, 0x1

    add-int/2addr v3, v8

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_9

    if-gt v3, v13, :cond_9

    mul-long v6, v6, v19

    add-int/lit8 v3, v3, -0x30

    int-to-long v12, v3

    add-long/2addr v6, v12

    mul-long v10, v10, v19

    move/from16 v8, v17

    const/16 v13, 0x39

    goto :goto_4

    .line 3223
    :cond_7
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    :cond_8
    move/from16 v22, v11

    move/from16 v17, v18

    const-wide/16 v10, 0x1

    :cond_9
    const/16 v12, 0x65

    if-eq v3, v12, :cond_b

    const/16 v12, 0x45

    if-ne v3, v12, :cond_a

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/16 v16, 0x1

    :goto_6
    if-eqz v16, :cond_e

    .line 3230
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v13, 0x2b

    if-eq v3, v13, :cond_d

    const/16 v9, 0x2d

    if-ne v3, v9, :cond_c

    goto :goto_8

    :cond_c
    :goto_7
    move/from16 v17, v12

    goto :goto_9

    .line 3232
    :cond_d
    :goto_8
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v12, 0x1

    add-int/2addr v3, v12

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v17, v9

    :goto_9
    if-lt v3, v2, :cond_e

    const/16 v9, 0x39

    if-gt v3, v9, :cond_e

    .line 3236
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_7

    :cond_e
    if-eqz v21, :cond_10

    const/16 v2, 0x22

    if-eq v3, v2, :cond_f

    .line 3246
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3249
    :cond_f
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3251
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v9

    const/4 v12, 0x1

    add-int/2addr v1, v12

    add-int/2addr v9, v3

    sub-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x2

    move/from16 v17, v3

    goto :goto_a

    :cond_10
    const/4 v12, 0x1

    .line 3254
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v2

    add-int v2, v2, v17

    sub-int/2addr v2, v1

    add-int/lit8 v9, v2, -0x1

    move v2, v3

    :goto_a
    if-nez v16, :cond_11

    const/16 v3, 0x14

    if-ge v9, v3, :cond_11

    long-to-double v6, v6

    long-to-double v9, v10

    .line 3259
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v9

    if-eqz v22, :cond_12

    neg-double v6, v6

    goto :goto_b

    .line 3264
    :cond_11
    invoke-virtual {v0, v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3265
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_12
    :goto_b
    if-ne v2, v14, :cond_13

    .line 3304
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3305
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 3306
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 3307
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v6

    :cond_13
    const/16 v1, 0x10

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_18

    .line 3312
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_14

    .line 3314
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3315
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3316
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    :cond_14
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_15

    const/16 v1, 0xf

    .line 3318
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3319
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3320
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    :cond_15
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_16

    const/16 v1, 0xd

    .line 3322
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3323
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3324
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    :cond_16
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_17

    const/16 v1, 0x14

    .line 3326
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3327
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x1a

    .line 3328
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_c
    const/4 v1, 0x4

    .line 3333
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6

    .line 3330
    :cond_17
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3335
    :cond_18
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    :cond_19
    move/from16 v17, v7

    move/from16 v21, v9

    const/16 v1, 0x6e

    if-ne v3, v1, :cond_1e

    .line 3267
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x5

    .line 3268
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v7, v17, 0x3

    .line 3271
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v21, :cond_1a

    const/16 v6, 0x22

    if-ne v2, v6, :cond_1a

    .line 3274
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v6

    :cond_1a
    :goto_d
    if-ne v2, v14, :cond_1b

    .line 3279
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3280
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3281
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 3282
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v4

    :cond_1b
    const/16 v6, 0x10

    const/16 v7, 0x7d

    if-ne v2, v7, :cond_1c

    .line 3285
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3286
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3287
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xd

    .line 3288
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v4

    .line 3290
    :cond_1c
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3291
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v8

    goto :goto_d

    .line 3296
    :cond_1d
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3299
    :cond_1e
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4
.end method

.method public final scanFieldFloat([C)F
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2368
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2370
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v1, -0x2

    .line 2371
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2375
    :cond_0
    array-length v3, v1

    .line 2376
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_2

    .line 2380
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v9

    :cond_2
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_4

    .line 2385
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v11

    :cond_4
    const/4 v14, -0x1

    const/16 v15, 0x30

    if-lt v3, v15, :cond_19

    const/16 v2, 0x39

    if-gt v3, v2, :cond_19

    sub-int/2addr v3, v15

    .line 2392
    :goto_2
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    add-int/2addr v12, v6

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v15, :cond_5

    if-gt v6, v2, :cond_5

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v3, v6

    move/from16 v6, v17

    goto :goto_2

    :cond_5
    const/16 v12, 0x2e

    if-ne v6, v12, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_9

    .line 2404
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v15, :cond_8

    if-gt v6, v2, :cond_8

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v6, v15

    add-int/2addr v3, v6

    const/16 v6, 0xa

    .line 2409
    :goto_4
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v12, 0x1

    add-int/2addr v11, v12

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-lt v11, v15, :cond_7

    if-gt v11, v2, :cond_7

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v11, v11, -0x30

    add-int/2addr v3, v11

    mul-int/lit8 v6, v6, 0xa

    move/from16 v12, v17

    goto :goto_4

    :cond_7
    move/from16 v18, v11

    move v11, v6

    move/from16 v6, v18

    goto :goto_5

    .line 2419
    :cond_8
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    :cond_9
    const/4 v11, 0x1

    :goto_5
    const/16 v12, 0x65

    if-eq v6, v12, :cond_b

    const/16 v12, 0x45

    if-ne v6, v12, :cond_a

    goto :goto_6

    :cond_a
    const/16 v16, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v16, 0x1

    :goto_7
    if-eqz v16, :cond_e

    .line 2426
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v13, 0x2b

    if-eq v6, v13, :cond_d

    if-ne v6, v9, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v17, v12

    goto :goto_a

    .line 2428
    :cond_d
    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v12, 0x1

    add-int/2addr v6, v12

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    :goto_9
    move/from16 v17, v9

    :goto_a
    if-lt v6, v15, :cond_e

    if-gt v6, v2, :cond_e

    .line 2432
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    goto :goto_9

    :cond_e
    if-eqz v8, :cond_10

    if-eq v6, v5, :cond_f

    .line 2442
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2445
    :cond_f
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 2447
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    add-int/2addr v2, v5

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x2

    move/from16 v17, v5

    goto :goto_b

    .line 2450
    :cond_10
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v2

    add-int v2, v2, v17

    sub-int/2addr v2, v1

    sub-int/2addr v2, v7

    :goto_b
    if-nez v16, :cond_11

    const/16 v5, 0x14

    if-ge v2, v5, :cond_11

    int-to-float v1, v3

    int-to-float v2, v11

    div-float/2addr v1, v2

    if-eqz v10, :cond_12

    neg-float v1, v1

    goto :goto_c

    .line 2460
    :cond_11
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2461
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_12
    :goto_c
    const/16 v2, 0x2c

    if-ne v6, v2, :cond_13

    .line 2500
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2501
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2502
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0x10

    .line 2503
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    :cond_13
    const/16 v2, 0x10

    const/16 v3, 0x7d

    if-ne v6, v3, :cond_18

    .line 2508
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_14

    .line 2510
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2511
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2512
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d

    :cond_14
    const/16 v2, 0x5d

    if-ne v3, v2, :cond_15

    const/16 v2, 0xf

    .line 2514
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2515
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2516
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d

    :cond_15
    const/16 v2, 0x7d

    if-ne v3, v2, :cond_16

    const/16 v2, 0xd

    .line 2518
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2519
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2520
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d

    :cond_16
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_17

    .line 2522
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v5, v7

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 2523
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v2, 0x1a

    .line 2524
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_d
    const/4 v2, 0x4

    .line 2529
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    .line 2526
    :cond_17
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2531
    :cond_18
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    :cond_19
    const/16 v1, 0x6e

    if-ne v3, v1, :cond_1e

    .line 2463
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x5

    .line 2464
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v6, v6, 0x3

    .line 2467
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v8, :cond_1a

    if-ne v2, v5, :cond_1a

    .line 2470
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    :cond_1a
    const/16 v5, 0x2c

    :goto_e
    if-ne v2, v5, :cond_1b

    .line 2475
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2476
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2477
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 2478
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v4

    :cond_1b
    const/16 v6, 0x10

    const/16 v7, 0x7d

    if-ne v2, v7, :cond_1c

    .line 2481
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2482
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2483
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xd

    .line 2484
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v4

    .line 2486
    :cond_1c
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2487
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v8

    goto :goto_e

    .line 2492
    :cond_1d
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2495
    :cond_1e
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4
.end method

.method public final scanFieldFloatArray([C)[F
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2830
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2832
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2833
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_0
    move-object/from16 v2, p1

    .line 2837
    array-length v2, v2

    .line 2838
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_1

    .line 2840
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 2843
    :cond_1
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x10

    .line 2845
    new-array v6, v5, [F

    move-object v7, v6

    const/4 v6, 0x0

    .line 2849
    :goto_0
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/16 v10, 0x2d

    if-ne v2, v10, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_3

    .line 2853
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v12

    :cond_3
    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_1a

    const/16 v14, 0x39

    if-gt v2, v14, :cond_1a

    add-int/lit8 v2, v2, -0x30

    .line 2859
    :goto_2
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v3, 0x1

    add-int/2addr v15, v3

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_4

    if-gt v3, v14, :cond_4

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    move/from16 v3, v16

    goto :goto_2

    :cond_4
    const/16 v15, 0x2e

    if-ne v3, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    const/16 v5, 0xa

    if-eqz v15, :cond_7

    .line 2871
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_6

    if-gt v3, v14, :cond_6

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    const/16 v3, 0xa

    .line 2876
    :goto_4
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v15, 0x1

    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-lt v1, v13, :cond_8

    if-gt v1, v14, :cond_8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    mul-int/lit8 v3, v3, 0xa

    move/from16 v15, v16

    goto :goto_4

    .line 2887
    :cond_6
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_7
    move v1, v3

    const/4 v3, 0x1

    :cond_8
    const/16 v15, 0x65

    if-eq v1, v15, :cond_a

    const/16 v15, 0x45

    if-ne v1, v15, :cond_9

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v15, 0x1

    :goto_6
    if-eqz v15, :cond_d

    .line 2894
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_c

    if-ne v1, v10, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v16, v17

    goto :goto_9

    .line 2896
    :cond_c
    :goto_7
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_8
    move/from16 v16, v4

    :goto_9
    if-lt v1, v13, :cond_d

    if-gt v1, v14, :cond_d

    .line 2900
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_8

    .line 2907
    :cond_d
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v16

    sub-int/2addr v4, v8

    sub-int/2addr v4, v9

    if-nez v15, :cond_e

    if-ge v4, v5, :cond_e

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    if-eqz v11, :cond_f

    neg-float v2, v2

    goto :goto_a

    .line 2916
    :cond_e
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 2917
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 2920
    :cond_f
    :goto_a
    array-length v3, v7

    const/4 v4, 0x3

    if-lt v6, v3, :cond_10

    .line 2921
    array-length v3, v7

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    .line 2922
    invoke-static {v7, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v3

    :cond_10
    add-int/lit8 v3, v6, 0x1

    .line 2925
    aput v2, v7, v6

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_11

    .line 2928
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move/from16 v16, v2

    goto/16 :goto_c

    :cond_11
    const/16 v5, 0x5d

    if-ne v1, v5, :cond_19

    .line 2930
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2940
    array-length v8, v7

    if-eq v3, v8, :cond_12

    .line 2941
    new-array v8, v3, [F

    const/4 v10, 0x0

    .line 2942
    invoke-static {v7, v10, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v8

    :cond_12
    if-ne v1, v2, :cond_13

    .line 2947
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v6, v9

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2948
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2949
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0x10

    .line 2950
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v7

    :cond_13
    const/16 v4, 0x10

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_18

    .line 2955
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_14

    .line 2957
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2958
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2959
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    :cond_14
    if-ne v1, v5, :cond_15

    const/16 v1, 0xf

    .line 2961
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2962
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2963
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    :cond_15
    if-ne v1, v3, :cond_16

    const/16 v1, 0xd

    .line 2965
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2966
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2967
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    :cond_16
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_17

    .line 2969
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x14

    .line 2970
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2971
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_b
    const/4 v1, 0x4

    .line 2976
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v7

    .line 2973
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x0

    return-object v2

    :cond_18
    const/4 v2, 0x0

    .line 2978
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_19
    :goto_c
    const/4 v2, 0x0

    const/16 v4, 0x10

    const/4 v10, 0x0

    move-object v4, v2

    move v6, v3

    move/from16 v3, v16

    const/16 v5, 0x10

    move v2, v1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1a
    move-object v2, v4

    .line 2934
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2
.end method

.method public final scanFieldFloatArray2([C)[[F
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2986
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2988
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2989
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2990
    check-cast v4, [[F

    return-object v4

    :cond_0
    move-object/from16 v2, p1

    .line 2993
    array-length v2, v2

    .line 2994
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_1

    .line 2997
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2998
    check-cast v4, [[F

    return-object v4

    .line 3000
    :cond_1
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v6, 0x10

    .line 3002
    new-array v7, v6, [[F

    const/4 v8, 0x0

    :goto_0
    if-ne v2, v5, :cond_1e

    .line 3007
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3009
    new-array v3, v6, [F

    const/4 v10, 0x0

    .line 3013
    :goto_1
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v9

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_3

    .line 3016
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v9, 0x1

    add-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_3

    :cond_3
    move v15, v9

    :goto_3
    const/4 v9, -0x1

    const/16 v5, 0x30

    if-lt v2, v5, :cond_1d

    const/16 v6, 0x39

    if-gt v2, v6, :cond_1d

    add-int/lit8 v2, v2, -0x30

    .line 3022
    :goto_4
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v15, 0x1

    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_4

    if-gt v1, v6, :cond_4

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move/from16 v15, v16

    goto :goto_4

    :cond_4
    const/16 v15, 0x2e

    if-ne v1, v15, :cond_7

    .line 3034
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_6

    if-gt v1, v6, :cond_6

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 3040
    :goto_5
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v15, 0x1

    add-int/2addr v12, v15

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_5

    if-gt v12, v6, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v12, v12, -0x30

    add-int/2addr v2, v12

    mul-int/lit8 v1, v1, 0xa

    move/from16 v15, v16

    goto :goto_5

    :cond_5
    move/from16 v18, v12

    move v12, v1

    move/from16 v1, v18

    goto :goto_6

    .line 3051
    :cond_6
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3052
    check-cast v4, [[F

    return-object v4

    :cond_7
    const/4 v12, 0x1

    :goto_6
    const/16 v15, 0x65

    if-eq v1, v15, :cond_9

    const/16 v15, 0x45

    if-ne v1, v15, :cond_8

    goto :goto_7

    :cond_8
    const/4 v15, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v15, 0x1

    :goto_8
    if-eqz v15, :cond_c

    .line 3058
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_b

    if-ne v1, v13, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v16, v17

    goto :goto_b

    .line 3060
    :cond_b
    :goto_9
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_a
    move/from16 v16, v4

    :goto_b
    if-lt v1, v5, :cond_c

    if-gt v1, v6, :cond_c

    .line 3064
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_a

    .line 3071
    :cond_c
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v16

    sub-int/2addr v4, v11

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-nez v15, :cond_d

    const/16 v5, 0xa

    if-ge v4, v5, :cond_d

    int-to-float v2, v2

    int-to-float v4, v12

    div-float/2addr v2, v4

    if-eqz v14, :cond_e

    neg-float v2, v2

    goto :goto_c

    .line 3079
    :cond_d
    invoke-virtual {v0, v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3080
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3083
    :cond_e
    :goto_c
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v10, v4, :cond_f

    .line 3084
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [F

    const/4 v6, 0x0

    .line 3085
    invoke-static {v3, v6, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :cond_f
    add-int/lit8 v4, v10, 0x1

    .line 3088
    aput v2, v3, v10

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_10

    .line 3091
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v9, v2

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v2, v1

    goto/16 :goto_10

    :cond_10
    const/16 v6, 0x5d

    if-ne v1, v6, :cond_1c

    .line 3093
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3103
    array-length v11, v3

    if-eq v4, v11, :cond_11

    .line 3104
    new-array v11, v4, [F

    const/4 v12, 0x0

    .line 3105
    invoke-static {v3, v12, v11, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v11

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    .line 3109
    :goto_d
    array-length v11, v7

    if-lt v8, v11, :cond_12

    .line 3110
    array-length v7, v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    new-array v7, v7, [[F

    .line 3111
    invoke-static {v3, v12, v7, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    add-int/lit8 v4, v8, 0x1

    .line 3114
    aput-object v3, v7, v8

    if-ne v1, v2, :cond_13

    .line 3117
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v2

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v2, v1

    goto/16 :goto_f

    :cond_13
    if-ne v1, v6, :cond_1b

    .line 3119
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3126
    array-length v8, v7

    if-eq v4, v8, :cond_14

    .line 3127
    new-array v8, v4, [[F

    const/4 v11, 0x0

    .line 3128
    invoke-static {v7, v11, v8, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v8

    :cond_14
    if-ne v1, v2, :cond_15

    .line 3133
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3134
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3135
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v5, 0x10

    .line 3136
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v7

    :cond_15
    const/16 v5, 0x10

    const/16 v4, 0x7d

    if-ne v1, v4, :cond_1a

    .line 3141
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_16

    .line 3143
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3144
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3145
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_e

    :cond_16
    const/4 v2, 0x1

    if-ne v1, v6, :cond_17

    const/16 v1, 0xf

    .line 3147
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3148
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3149
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_e

    :cond_17
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_18

    const/16 v1, 0xd

    .line 3151
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3152
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3153
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_e

    :cond_18
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_19

    .line 3155
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x14

    .line 3156
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x1a

    .line 3157
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_e
    const/4 v1, 0x4

    .line 3162
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v7

    .line 3159
    :cond_19
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v6, 0x0

    .line 3160
    move-object v4, v6

    check-cast v4, [[F

    return-object v4

    :cond_1a
    const/4 v6, 0x0

    .line 3164
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3165
    move-object v4, v6

    check-cast v4, [[F

    return-object v4

    :cond_1b
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v2, v1

    move v3, v10

    :goto_f
    move v8, v4

    move-object v4, v6

    const/4 v1, 0x0

    goto :goto_11

    :cond_1c
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v2, v1

    move/from16 v9, v16

    :goto_10
    move v10, v4

    move-object v4, v6

    const/4 v1, 0x0

    const/16 v5, 0x5b

    const/16 v6, 0x10

    goto/16 :goto_1

    :cond_1d
    move-object v6, v4

    .line 3097
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3098
    move-object v4, v6

    check-cast v4, [[F

    return-object v4

    :cond_1e
    const/16 v5, 0x10

    :goto_11
    const/16 v5, 0x5b

    const/16 v6, 0x10

    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 10

    const/4 v0, 0x0

    .line 1767
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1769
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 1770
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1774
    :cond_0
    array-length v1, p1

    .line 1775
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1779
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v5

    :cond_2
    const/16 v5, 0x30

    const/4 v6, -0x1

    if-lt v1, v5, :cond_10

    const/16 v7, 0x39

    if-gt v1, v7, :cond_10

    sub-int/2addr v1, v5

    .line 1786
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x1

    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_3

    if-gt v3, v7, :cond_3

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    move v3, v9

    goto :goto_1

    :cond_3
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_4

    .line 1790
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_4
    if-ltz v1, :cond_5

    .line 1796
    array-length p1, p1

    add-int/lit8 p1, p1, 0xe

    if-le v9, p1, :cond_6

    :cond_5
    const/high16 p1, -0x80000000

    if-ne v1, p1, :cond_f

    const/16 p1, 0x11

    if-ne v9, p1, :cond_f

    if-nez v2, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 p1, 0x10

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_8

    .line 1811
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1812
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 1813
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1814
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v2, :cond_7

    neg-int v1, v1

    :cond_7
    return v1

    :cond_8
    const/16 v7, 0x7d

    if-ne v3, v7, :cond_e

    .line 1819
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_9

    .line 1821
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1822
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1823
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_9
    const/16 p1, 0x5d

    if-ne v3, p1, :cond_a

    const/16 p1, 0xf

    .line 1825
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1826
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1827
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_a
    if-ne v3, v7, :cond_b

    const/16 p1, 0xd

    .line 1829
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1830
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1831
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_b
    const/16 p1, 0x1a

    if-ne v3, p1, :cond_d

    const/16 v0, 0x14

    .line 1833
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1834
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v4

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1835
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_2
    const/4 p1, 0x4

    .line 1840
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v2, :cond_c

    neg-int v1, v1

    :cond_c
    return v1

    .line 1837
    :cond_d
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1842
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1801
    :cond_f
    :goto_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1806
    :cond_10
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public final scanFieldIntArray([C)[I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1850
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1852
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1853
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_0
    move-object/from16 v2, p1

    .line 1857
    array-length v2, v2

    .line 1858
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_1

    .line 1861
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 1864
    :cond_1
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x10

    .line 1866
    new-array v6, v5, [I

    const/4 v7, 0x3

    const/16 v8, 0x2c

    const/4 v9, -0x1

    const/16 v10, 0x5d

    const/4 v11, 0x1

    if-ne v2, v10, :cond_2

    .line 1870
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    :goto_0
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_3

    .line 1875
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v13

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    const/16 v14, 0x30

    if-lt v2, v14, :cond_10

    const/16 v15, 0x39

    if-gt v2, v15, :cond_10

    add-int/lit8 v2, v2, -0x30

    .line 1881
    :goto_2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v3, 0x1

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_4

    if-gt v3, v15, :cond_4

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    move/from16 v3, v16

    goto :goto_2

    .line 1890
    :cond_4
    array-length v4, v6

    if-lt v12, v4, :cond_5

    .line 1891
    array-length v4, v6

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 1892
    invoke-static {v6, v1, v4, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v4

    :cond_5
    add-int/lit8 v4, v12, 0x1

    if-eqz v13, :cond_6

    neg-int v2, v2

    .line 1895
    :cond_6
    aput v2, v6, v12

    if-ne v3, v8, :cond_7

    .line 1898
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v12, v2

    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_7
    if-ne v3, v10, :cond_f

    .line 1900
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1911
    :goto_3
    array-length v3, v6

    if-eq v4, v3, :cond_8

    .line 1912
    new-array v3, v4, [I

    .line 1913
    invoke-static {v6, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_8
    move-object v3, v6

    :goto_4
    if-ne v2, v8, :cond_9

    .line 1918
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v12, v11

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1919
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1920
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1921
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_9
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_e

    .line 1926
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v12, 0x1

    add-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_a

    .line 1928
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1929
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v4, v11

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1930
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    :cond_a
    if-ne v2, v10, :cond_b

    const/16 v1, 0xf

    .line 1932
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1933
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v4, v11

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1934
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    :cond_b
    if-ne v2, v1, :cond_c

    const/16 v1, 0xd

    .line 1936
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1937
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v4, v11

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1938
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    :cond_c
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_d

    .line 1940
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v4, v11

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 1941
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1942
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_5
    const/4 v1, 0x4

    .line 1947
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 1944
    :cond_d
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x0

    return-object v2

    :cond_e
    const/4 v2, 0x0

    .line 1949
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_f
    const/4 v2, 0x0

    move v12, v3

    move/from16 v3, v16

    :goto_6
    move/from16 v17, v4

    move-object v4, v2

    move v2, v12

    move/from16 v12, v17

    goto/16 :goto_0

    :cond_10
    move-object v2, v4

    .line 1904
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2
.end method

.method public scanFieldLong([C)J
    .locals 13

    const/4 v0, 0x0

    .line 2192
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2194
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 2195
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2199
    :cond_0
    array-length p1, p1

    .line 2200
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    const/4 v5, 0x1

    if-ne p1, v1, :cond_1

    .line 2204
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v4, 0x1

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x30

    const/4 v6, -0x1

    if-lt p1, v4, :cond_e

    const/16 v7, 0x39

    if-gt p1, v7, :cond_e

    sub-int/2addr p1, v4

    int-to-long v8, p1

    .line 2212
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-lt p1, v4, :cond_2

    if-gt p1, v7, :cond_2

    const-wide/16 v11, 0xa

    mul-long v8, v8, v11

    add-int/lit8 p1, p1, -0x30

    int-to-long v11, p1

    add-long/2addr v8, v11

    move v0, v10

    goto :goto_1

    :cond_2
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_3

    .line 2216
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    :cond_3
    cmp-long v0, v8, v2

    if-ltz v0, :cond_d

    const/16 v0, 0x15

    if-le v10, v0, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v0, 0x10

    const/16 v4, 0x2c

    if-ne p1, v4, :cond_6

    .line 2232
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2233
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 2234
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2235
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v1, :cond_5

    neg-long v8, v8

    :cond_5
    return-wide v8

    :cond_6
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_c

    .line 2240
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v10, 0x1

    add-int/2addr p1, v10

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v4, :cond_7

    .line 2242
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2243
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2244
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_7
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_8

    const/16 p1, 0xf

    .line 2246
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2247
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2248
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_8
    if-ne p1, v7, :cond_9

    const/16 p1, 0xd

    .line 2250
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2251
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2252
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_9
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_b

    const/16 p1, 0x14

    .line 2254
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2255
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v11, v5

    add-int/2addr p1, v11

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2256
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_2
    const/4 p1, 0x4

    .line 2261
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v1, :cond_a

    neg-long v8, v8

    :cond_a
    return-wide v8

    .line 2258
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2263
    :cond_c
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2223
    :cond_d
    :goto_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2227
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 1188
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1190
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 1191
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1197
    :cond_0
    array-length v1, p1

    .line 1198
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    .line 1201
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1203
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1208
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    .line 1209
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    if-eq v1, v4, :cond_b

    .line 1214
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v6, p1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    sub-int v6, v1, v5

    .line 1215
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    .line 1216
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v4, :cond_4

    :goto_0
    add-int/lit8 v5, v1, -0x1

    const/4 v7, 0x0

    :goto_1
    if-ltz v5, :cond_2

    .line 1220
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1226
    :cond_2
    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_3

    .line 1232
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    sub-int v2, v1, v2

    .line 1233
    array-length v5, p1

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v0

    .line 1235
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1229
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    goto :goto_0

    .line 1238
    :cond_4
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    add-int/lit8 p1, v3, 0x1

    add-int/2addr v0, v3

    .line 1239
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_5

    .line 1244
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1245
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1246
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_5
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_a

    .line 1251
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_6

    const/16 p1, 0x10

    .line 1253
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1254
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1255
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_6
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_7

    const/16 p1, 0xf

    .line 1257
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1258
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1259
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_7
    if-ne p1, v2, :cond_8

    const/16 p1, 0xd

    .line 1261
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1262
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1263
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_8
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_9

    const/16 p1, 0x14

    .line 1265
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1266
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1267
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_3
    const/4 p1, 0x4

    .line 1272
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1269
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1270
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1274
    :cond_a
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1275
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1211
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 11
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

    const/4 v0, 0x0

    .line 1531
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1533
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 1534
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1538
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p2

    .line 1554
    array-length p1, p1

    .line 1555
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    const/4 v4, -0x1

    if-eq p1, v1, :cond_1

    .line 1558
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1562
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    :goto_0
    const/16 v3, 0x2c

    const/16 v5, 0x5d

    const/16 v6, 0x22

    if-ne p1, v6, :cond_6

    .line 1567
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    .line 1568
    invoke-virtual {p0, v6, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result p1

    if-eq p1, v4, :cond_5

    .line 1573
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v1

    sub-int v8, p1, v7

    .line 1574
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5c

    .line 1575
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v4, :cond_4

    :goto_1
    add-int/lit8 v7, p1, -0x1

    const/4 v9, 0x0

    :goto_2
    if-ltz v7, :cond_2

    .line 1579
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_2

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1585
    :cond_2
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_3

    .line 1591
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v7, v6, v1

    sub-int v7, p1, v7

    add-int/2addr v6, v1

    .line 1592
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1594
    invoke-static {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1588
    invoke-virtual {p0, v6, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result p1

    goto :goto_1

    .line 1597
    :cond_4
    :goto_3
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v6, v1

    sub-int/2addr p1, v8

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    add-int/2addr v6, v1

    .line 1598
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1600
    invoke-interface {p2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1570
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 v6, 0x6e

    if-ne p1, v6, :cond_9

    .line 1601
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    .line 1602
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_9

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    .line 1603
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_9

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x2

    .line 1604
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_9

    add-int/lit8 v1, v1, 0x3

    .line 1606
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1607
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move p1, v6

    :goto_4
    if-ne v1, v3, :cond_7

    .line 1616
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    move v1, v3

    goto/16 :goto_0

    :cond_7
    if-ne v1, v5, :cond_8

    .line 1621
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    move v0, v1

    goto :goto_5

    .line 1625
    :cond_8
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_9
    if-ne p1, v5, :cond_10

    .line 1608
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_10

    .line 1609
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v3, :cond_a

    .line 1630
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1631
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1632
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    :cond_a
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_f

    .line 1637
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_b

    const/16 p1, 0x10

    .line 1639
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1640
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1641
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_b
    if-ne p1, v5, :cond_c

    const/16 p1, 0xf

    .line 1643
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1644
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1645
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_c
    if-ne p1, v1, :cond_d

    const/16 p1, 0xd

    .line 1647
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1648
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1649
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_d
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_e

    .line 1651
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 p1, 0x14

    .line 1652
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1653
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_6
    const/4 p1, 0x4

    .line 1658
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    .line 1655
    :cond_e
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1660
    :cond_f
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1612
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "illega str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public scanFieldSymbol([C)J
    .locals 10

    const/4 v0, 0x0

    .line 1361
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1363
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    .line 1364
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1368
    :cond_0
    array-length p1, p1

    .line 1369
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    const/4 v4, -0x1

    if-eq p1, v0, :cond_1

    .line 1372
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_1
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1378
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_8

    .line 1380
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v7, 0x1

    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v3, 0x2c

    if-ne p1, v3, :cond_2

    .line 1394
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1395
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1396
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    :cond_2
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_7

    .line 1401
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_3

    const/16 p1, 0x10

    .line 1403
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1404
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1405
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_3
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_4

    const/16 p1, 0xf

    .line 1407
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1408
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1409
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_4
    if-ne p1, v7, :cond_5

    const/16 p1, 0xd

    .line 1411
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1412
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1413
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_5
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_6

    const/16 p1, 0x14

    .line 1415
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1416
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1417
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1
    const/4 p1, 0x4

    .line 1422
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    .line 1419
    :cond_6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1424
    :cond_7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_8
    int-to-long v8, p1

    xor-long/2addr v5, v8

    const-wide v8, 0x100000001b3L

    mul-long v5, v5, v8

    const/16 v3, 0x5c

    if-ne p1, v3, :cond_9

    .line 1388
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_9
    move v3, v7

    goto/16 :goto_0
.end method

.method public final scanFloat(C)F
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2539
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2542
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 2545
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :goto_1
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    .line 2550
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v10

    :cond_3
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v14, 0x30

    if-lt v2, v14, :cond_13

    const/16 v15, 0x39

    if-gt v2, v15, :cond_13

    sub-int/2addr v2, v14

    int-to-long v1, v2

    .line 2557
    :goto_3
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v10, v7

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const-wide/16 v18, 0xa

    if-lt v7, v14, :cond_4

    if-gt v7, v15, :cond_4

    mul-long v1, v1, v18

    add-int/lit8 v7, v7, -0x30

    int-to-long v6, v7

    add-long/2addr v1, v6

    move/from16 v7, v17

    goto :goto_3

    :cond_4
    const-wide/16 v20, 0x1

    const/16 v6, 0x2e

    if-ne v7, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    .line 2569
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v14, :cond_7

    if-gt v6, v15, :cond_7

    mul-long v1, v1, v18

    sub-int/2addr v6, v14

    int-to-long v10, v6

    add-long/2addr v1, v10

    move-wide/from16 v20, v18

    .line 2574
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-lt v7, v14, :cond_6

    if-gt v7, v15, :cond_6

    mul-long v1, v1, v18

    add-int/lit8 v7, v7, -0x30

    int-to-long v6, v7

    add-long/2addr v1, v6

    mul-long v20, v20, v18

    move v7, v10

    goto :goto_5

    :cond_6
    move/from16 v17, v10

    goto :goto_6

    .line 2584
    :cond_7
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12

    :cond_8
    :goto_6
    move-wide/from16 v10, v20

    const/16 v6, 0x65

    if-eq v7, v6, :cond_a

    const/16 v6, 0x45

    if-ne v7, v6, :cond_9

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v16, 0x1

    :goto_8
    if-eqz v16, :cond_d

    .line 2591
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v4, 0x2b

    if-eq v6, v4, :cond_c

    if-ne v6, v8, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v17, v7

    move v7, v6

    goto :goto_b

    .line 2593
    :cond_c
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v7, v4

    :goto_a
    move/from16 v17, v6

    :goto_b
    if-lt v7, v14, :cond_d

    if-gt v7, v15, :cond_d

    .line 2597
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v4, v4, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    goto :goto_a

    :cond_d
    if-eqz v5, :cond_f

    if-eq v7, v3, :cond_e

    .line 2622
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12

    .line 2625
    :cond_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 2627
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    move/from16 v17, v4

    goto :goto_c

    .line 2630
    :cond_f
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v5, v17

    sub-int/2addr v3, v5

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_c
    if-nez v16, :cond_10

    const/16 v4, 0x14

    if-ge v3, v4, :cond_10

    long-to-float v1, v1

    long-to-float v2, v10

    div-float/2addr v1, v2

    if-eqz v9, :cond_11

    neg-float v1, v1

    goto :goto_d

    .line 2640
    :cond_10
    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2641
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_11
    :goto_d
    move/from16 v2, p1

    if-ne v7, v2, :cond_12

    .line 2680
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2681
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2682
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0x10

    .line 2683
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    .line 2686
    :cond_12
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    :cond_13
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_18

    .line 2643
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v4, 0x2

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_18

    const/4 v1, 0x5

    .line 2644
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    add-int/2addr v7, v2

    .line 2647
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_14

    if-ne v2, v3, :cond_14

    .line 2650
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_e

    :cond_14
    move v3, v4

    :goto_e
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_15

    .line 2655
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2656
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2657
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0x10

    .line 2658
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v12

    :cond_15
    const/16 v4, 0x10

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_16

    .line 2661
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2662
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2663
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2664
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v12

    .line 2666
    :cond_16
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2667
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    goto :goto_e

    .line 2672
    :cond_17
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12

    .line 2675
    :cond_18
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12
.end method

.method public final scanHex()V
    .locals 4

    .line 3746
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "illegal state. "

    const/16 v2, 0x78

    if-ne v0, v2, :cond_5

    .line 3749
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3750
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x27

    if-ne v0, v2, :cond_4

    .line 3754
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 3755
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3758
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x46

    if-gt v0, v3, :cond_2

    .line 3760
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 3763
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3764
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x1a

    .line 3770
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 3767
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3751
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3747
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final scanIdent()V
    .locals 2

    .line 3451
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 3452
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 3455
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3457
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3458
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3462
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 3464
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 3465
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_1
    const-string v1, "new"

    .line 3466
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    .line 3467
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_2
    const-string v1, "true"

    .line 3468
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    .line 3469
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_3
    const-string v1, "false"

    .line 3470
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x7

    .line 3471
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_4
    const-string v1, "undefined"

    .line 3472
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    .line 3473
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_5
    const-string v1, "Set"

    .line 3474
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    .line 3475
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_6
    const-string v1, "TreeSet"

    .line 3476
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    .line 3477
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x12

    .line 3479
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_1
    return-void
.end method

.method public scanInt(C)I
    .locals 13

    const/4 v0, 0x0

    .line 2012
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2015
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 2019
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_3

    .line 2024
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v6, v8

    :cond_3
    const/16 v8, 0x10

    const/4 v9, 0x3

    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v1, v10, :cond_b

    const/16 v12, 0x39

    if-gt v1, v12, :cond_b

    sub-int/2addr v1, v10

    .line 2031
    :goto_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v10, :cond_4

    if-gt v2, v12, :cond_4

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    move v6, v3

    goto :goto_3

    :cond_4
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_5

    .line 2035
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_5
    if-gez v1, :cond_6

    .line 2042
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_6
    :goto_4
    if-ne v2, p1, :cond_8

    .line 2083
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2084
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2085
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2086
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v7, :cond_7

    neg-int v1, v1

    :cond_7
    return v1

    .line 2089
    :cond_8
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2090
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_4

    .line 2093
    :cond_9
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v7, :cond_a

    neg-int v1, v1

    :cond_a
    return v1

    :cond_b
    const/16 p1, 0x6e

    if-ne v1, p1, :cond_10

    .line 2045
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x75

    if-ne p1, v1, :cond_10

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_10

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_10

    const/4 p1, 0x5

    .line 2046
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/2addr v6, v9

    .line 2049
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-eqz v4, :cond_c

    if-ne v1, v2, :cond_c

    .line 2052
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_6

    :cond_c
    :goto_5
    move v2, v3

    :goto_6
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_d

    .line 2057
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2058
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2059
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2060
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0

    :cond_d
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_e

    .line 2063
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2064
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2065
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0xf

    .line 2066
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0

    .line 2068
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2069
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2074
    :cond_f
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2077
    :cond_10
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanLong(C)J
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    .line 2271
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2274
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-eqz v5, :cond_1

    .line 2277
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :goto_1
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 2282
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v8

    :cond_3
    const/16 v10, 0x30

    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    if-lt v2, v10, :cond_c

    const/16 v14, 0x39

    if-gt v2, v14, :cond_c

    sub-int/2addr v2, v10

    int-to-long v8, v2

    .line 2289
    :goto_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v10, :cond_4

    if-gt v2, v14, :cond_4

    const-wide/16 v6, 0xa

    mul-long v8, v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v6, v2

    add-long/2addr v8, v6

    move v7, v4

    goto :goto_2

    :cond_4
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_5

    .line 2293
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    :cond_5
    cmp-long v6, v8, v12

    if-gez v6, :cond_6

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v10, v8, v6

    if-eqz v10, :cond_6

    .line 2300
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    :cond_6
    if-eqz v5, :cond_8

    if-eq v2, v3, :cond_7

    .line 2341
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    .line 2344
    :cond_7
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    :cond_8
    move v3, v2

    move/from16 v2, p1

    :goto_3
    if-ne v3, v2, :cond_a

    .line 2350
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2351
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2352
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0x10

    .line 2353
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v1, :cond_9

    neg-long v8, v8

    :cond_9
    return-wide v8

    .line 2356
    :cond_a
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2357
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v4, v5

    goto :goto_3

    .line 2361
    :cond_b
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v8

    :cond_c
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_11

    .line 2303
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_11

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_11

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_11

    const/4 v1, 0x5

    .line 2304
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    add-int/2addr v7, v2

    .line 2307
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_d

    if-ne v2, v3, :cond_d

    .line 2310
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_4

    :cond_d
    move v3, v4

    :goto_4
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_e

    .line 2315
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2316
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2317
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0x10

    .line 2318
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v12

    :cond_e
    const/16 v4, 0x10

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_f

    .line 2321
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2322
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2323
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2324
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v12

    .line 2326
    :cond_f
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2327
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    goto :goto_4

    .line 2332
    :cond_10
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    .line 2335
    :cond_11
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12
.end method

.method public final scanNullOrNew()V
    .locals 13

    .line 3372
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_9

    .line 3375
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3377
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x5d

    const/16 v7, 0x7d

    const/16 v8, 0x2c

    const/16 v9, 0x20

    const/16 v10, 0x8

    const/16 v11, 0x9

    if-ne v0, v1, :cond_4

    .line 3378
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3379
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse null"

    const/16 v12, 0x6c

    if-ne v0, v12, :cond_3

    .line 3382
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3384
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v12, :cond_2

    .line 3387
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3389
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v10, :cond_0

    goto :goto_0

    .line 3393
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3391
    :cond_1
    :goto_0
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 3385
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3380
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x65

    const-string v12, "error parse new"

    if-ne v0, v1, :cond_8

    .line 3401
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3403
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_7

    .line 3406
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3408
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v11, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    if-ne v0, v10, :cond_5

    goto :goto_1

    .line 3412
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3410
    :cond_6
    :goto_1
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 3404
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3399
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3373
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 9

    .line 3774
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 3776
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3777
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3778
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3782
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x39

    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    if-gt v0, v3, :cond_1

    .line 3783
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3787
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3792
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    .line 3793
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3794
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3798
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_2

    if-gt v0, v3, :cond_2

    .line 3799
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3803
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 3807
    :cond_3
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_4

    .line 3808
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3809
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    :cond_4
    const/16 v6, 0x53

    if-ne v5, v6, :cond_5

    .line 3811
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3812
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    :cond_5
    const/16 v6, 0x42

    if-ne v5, v6, :cond_6

    .line 3814
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3815
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    :cond_6
    const/16 v6, 0x46

    if-ne v5, v6, :cond_7

    .line 3817
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3818
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    :cond_7
    const/16 v7, 0x44

    if-ne v5, v7, :cond_8

    .line 3821
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3822
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_5

    :cond_8
    const/16 v8, 0x65

    if-eq v5, v8, :cond_a

    const/16 v8, 0x45

    if-ne v5, v8, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move v2, v0

    goto :goto_5

    .line 3825
    :cond_a
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3826
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3828
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_b

    if-ne v0, v1, :cond_c

    .line 3829
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3830
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3834
    :cond_c
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_d

    if-gt v0, v3, :cond_d

    .line 3835
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3839
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 3842
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v7, :cond_e

    if-ne v0, v6, :cond_f

    .line 3843
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :cond_f
    :goto_5
    if-eqz v2, :cond_10

    const/4 v0, 0x3

    .line 3851
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_6

    :cond_10
    const/4 v0, 0x2

    .line 3853
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_6
    return-void
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 1282
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1285
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x6e

    if-ne v1, v5, :cond_2

    .line 1288
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1290
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1297
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1298
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1299
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1302
    :cond_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1292
    :cond_1
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_2
    const/16 v5, 0x22

    if-eq v1, v5, :cond_3

    .line 1308
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1310
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1315
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    .line 1316
    invoke-virtual {p0, v5, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 1321
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    sub-int v8, v6, v1

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5c

    .line 1322
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v3, :cond_6

    :goto_0
    add-int/lit8 v7, v6, -0x1

    const/4 v9, 0x0

    :goto_1
    if-ltz v7, :cond_4

    .line 1326
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_4

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1332
    :cond_4
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_5

    sub-int v0, v6, v1

    .line 1339
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1341
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 1335
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    goto :goto_0

    .line 1344
    :cond_6
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v6, v1

    add-int/2addr v6, v4

    add-int/2addr v4, v6

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    .line 1345
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_7

    .line 1350
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1351
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1352
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v7

    .line 1355
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v7

    .line 1318
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final scanString()V
    .locals 11

    .line 878
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 879
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 882
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x22

    if-ne v1, v3, :cond_0

    .line 1008
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1009
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-void

    :cond_0
    const-string v4, "unclosed string : "

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    .line 890
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 893
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_e

    .line 897
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    const/4 v7, 0x2

    if-nez v1, :cond_5

    .line 898
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 900
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v8

    if-lt v1, v9, :cond_4

    .line 901
    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    if-le v1, v8, :cond_3

    goto :goto_1

    :cond_3
    move v1, v8

    .line 905
    :goto_1
    new-array v1, v1, [C

    .line 906
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v8

    invoke-static {v8, v0, v1, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 910
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v6

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v1, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 915
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    if-eq v1, v3, :cond_d

    const/16 v3, 0x27

    if-eq v1, v3, :cond_c

    const/16 v3, 0x46

    if-eq v1, v3, :cond_b

    if-eq v1, v5, :cond_a

    const/16 v3, 0x62

    if-eq v1, v3, :cond_9

    const/16 v3, 0x66

    if-eq v1, v3, :cond_b

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_8

    const/16 v3, 0x72

    if-eq v1, v3, :cond_7

    const/16 v3, 0x78

    const/16 v5, 0x10

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 990
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 991
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v1, 0xb

    .line 952
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 982
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 983
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 984
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v8

    .line 985
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 986
    new-instance v10, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char v1, v2, v0

    aput-char v4, v2, v6

    aput-char v8, v2, v7

    aput-char v9, v2, v3

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 987
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x9

    .line 946
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x7

    .line 940
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x6

    .line 937
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, 0x5

    .line 934
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 931
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 928
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 925
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 922
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 919
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x2f

    .line 968
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 974
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 975
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 977
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0x10

    aget v2, v3, v2

    add-int/2addr v1, v2

    int-to-char v1, v1

    .line 979
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xd

    .line 959
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xa

    .line 949
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x8

    .line 943
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 971
    :cond_a
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xc

    .line 956
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 965
    :cond_c
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 962
    :cond_d
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 996
    :cond_e
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_f

    .line 997
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 1001
    :cond_f
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_10

    .line 1002
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v4, v2, 0x1

    .line 1004
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1668
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1671
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    const/16 v6, 0x6e

    const/4 v7, 0x3

    const/16 v8, 0x6c

    const/4 v9, 0x2

    if-ne v4, v6, :cond_0

    .line 1673
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 1674
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1675
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v9

    .line 1676
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v7

    .line 1677
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v2, :cond_0

    .line 1679
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1680
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1681
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    :cond_0
    const/16 v10, 0x5b

    const/4 v11, -0x1

    if-eq v4, v10, :cond_1

    .line 1686
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1690
    :cond_1
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v10, 0x2

    :goto_0
    const/16 v12, 0x5d

    if-ne v4, v6, :cond_2

    .line 1693
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    .line 1694
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v5, :cond_2

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    add-int/lit8 v13, v13, 0x1

    .line 1695
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_2

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    add-int/2addr v13, v9

    .line 1696
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_2

    add-int/lit8 v10, v10, 0x3

    .line 1698
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v10, 0x1

    add-int/2addr v4, v10

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v10, 0x0

    .line 1699
    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    if-ne v4, v12, :cond_3

    .line 1700
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 1701
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_5

    :cond_3
    const/16 v13, 0x22

    if-eq v4, v13, :cond_4

    .line 1704
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1707
    :cond_4
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v10

    .line 1708
    invoke-virtual {v0, v13, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v14

    if-eq v14, v11, :cond_b

    .line 1713
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v15, v10

    sub-int v3, v14, v4

    invoke-virtual {v0, v15, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x5c

    .line 1714
    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v11, :cond_7

    :goto_1
    add-int/lit8 v3, v14, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ltz v3, :cond_5

    .line 1718
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v15, :cond_5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, -0x1

    const/16 v6, 0x6e

    goto :goto_2

    .line 1724
    :cond_5
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    sub-int v3, v14, v4

    .line 1731
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v10

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v4

    .line 1733
    invoke-static {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 1727
    invoke-virtual {v0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v14

    const/16 v6, 0x6e

    goto :goto_1

    .line 1736
    :cond_7
    :goto_3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v4, v10

    sub-int/2addr v14, v5

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v10, v14

    add-int/lit8 v13, v10, 0x1

    add-int/2addr v4, v10

    .line 1737
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 1738
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_4
    const/16 v3, 0x2c

    if-ne v4, v3, :cond_8

    .line 1742
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v13, 0x1

    add-int/2addr v3, v13

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v3, 0x0

    const/16 v5, 0x75

    const/16 v6, 0x6e

    goto/16 :goto_0

    :cond_8
    if-ne v4, v12, :cond_a

    .line 1747
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v13, 0x1

    add-int/2addr v1, v13

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_5
    if-ne v1, v2, :cond_9

    .line 1756
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1757
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1758
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1761
    :cond_9
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1751
    :cond_a
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1710
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    .line 597
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 599
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 600
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "syntax error"

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 604
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 605
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 612
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xd

    .line 613
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_3
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_4

    .line 618
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0x10

    .line 619
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_4
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_5

    const/16 p1, 0x14

    .line 624
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    .line 628
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 632
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 629
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 12

    .line 642
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 643
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 647
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, p2, :cond_2

    .line 791
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-nez v1, :cond_1

    .line 797
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    add-int/2addr p2, v5

    .line 802
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 804
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    .line 807
    :goto_2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 808
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-object p1

    :cond_2
    const/16 v6, 0x1a

    if-eq v3, v6, :cond_11

    const/16 v6, 0x5c

    if-ne v3, v6, :cond_e

    const/4 v3, 0x2

    if-nez v1, :cond_5

    .line 661
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    if-lt v1, v8, :cond_4

    .line 662
    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    if-le v1, v7, :cond_3

    goto :goto_3

    :cond_3
    move v1, v7

    .line 666
    :goto_3
    new-array v1, v1, [C

    .line 667
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 673
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v5

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v1, v7, v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    const/4 v1, 0x1

    .line 676
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_d

    const/16 v8, 0x27

    if-eq v7, v8, :cond_c

    const/16 v8, 0x46

    if-eq v7, v8, :cond_b

    if-eq v7, v6, :cond_a

    const/16 v6, 0x62

    if-eq v7, v6, :cond_9

    const/16 v6, 0x66

    if-eq v7, v6, :cond_b

    const/16 v6, 0x6e

    if-eq v7, v6, :cond_8

    const/16 v6, 0x72

    if-eq v7, v6, :cond_7

    const/16 v6, 0x78

    if-eq v7, v6, :cond_6

    const/4 v6, 0x3

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    .line 771
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 772
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed.str.lit"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xb

    const/16 v3, 0xb

    .line 725
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 762
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    .line 763
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v8

    .line 764
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 765
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v10

    .line 766
    new-instance v11, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v7, v4, v0

    aput-char v8, v4, v5

    aput-char v9, v4, v3

    aput-char v10, v4, v6

    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x10

    invoke-static {v11, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    int-to-char v3, v3

    .line 768
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x9

    add-int/2addr v2, v3

    .line 717
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x7

    .line 709
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x6

    .line 705
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x5

    .line 701
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_6
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 697
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_7
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 693
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_8
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 689
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_9
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 685
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_a
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 681
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_b
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x2f

    add-int/2addr v2, v3

    .line 746
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 753
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 754
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 756
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v3, v5, v3

    mul-int/lit8 v3, v3, 0x10

    aget v4, v5, v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 759
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_7
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xd

    add-int/2addr v2, v3

    .line 734
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_8
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xa

    add-int/2addr v2, v3

    .line 721
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_9
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    add-int/2addr v2, v3

    .line 713
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_a
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v6

    .line 750
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_b
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xc

    add-int/2addr v2, v3

    .line 730
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_c
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v8

    .line 742
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_d
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v8

    .line 738
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_e
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    if-nez v1, :cond_f

    .line 780
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 784
    :cond_f
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v6, v5

    if-ne v4, v6, :cond_10

    .line 785
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v6, v4, 0x1

    .line 787
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v3, v5, v4

    goto/16 :goto_0

    .line 654
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed.str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 5

    .line 822
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v0, v2, :cond_0

    .line 823
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 825
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 826
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 828
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_6

    .line 834
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 838
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 839
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 842
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 844
    array-length v4, v0

    if-ge v1, v4, :cond_5

    .line 845
    aget-boolean v4, v0, v1

    if-nez v4, :cond_5

    .line 856
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x12

    .line 857
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 860
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const v0, 0x33c587

    if-ne v3, v0, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 861
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    .line 868
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 871
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v1

    .line 852
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_0

    .line 830
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal identifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 1441
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1444
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/16 v6, 0x6e

    if-ne v1, v6, :cond_2

    .line 1447
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1449
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_0

    .line 1456
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1457
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1458
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 1461
    :cond_0
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 1451
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    :cond_2
    const/16 v6, 0x22

    if-eq v1, v6, :cond_3

    .line 1467
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1475
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v0, 0x1

    add-int/2addr v7, v0

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_6

    .line 1479
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x0

    add-int/2addr v3, v5

    add-int/2addr v0, v8

    sub-int/2addr v0, v3

    sub-int/2addr v0, v5

    .line 1481
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    .line 1482
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v8, 0x1

    add-int/2addr v0, v8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    :goto_1
    if-ne v0, p2, :cond_4

    .line 1496
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1497
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1498
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    .line 1501
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1502
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v3

    goto :goto_1

    .line 1506
    :cond_5
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    :cond_6
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    const/16 v7, 0x5c

    if-ne v0, v7, :cond_7

    .line 1489
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    :cond_7
    move v0, v8

    goto :goto_0
.end method

.method public final scanTrue()V
    .locals 3

    .line 3343
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse true"

    const/16 v2, 0x74

    if-ne v0, v2, :cond_5

    .line 3346
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3348
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x72

    if-ne v0, v2, :cond_4

    .line 3351
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3353
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x75

    if-ne v0, v2, :cond_3

    .line 3356
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3358
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-ne v0, v2, :cond_2

    .line 3361
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3363
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3367
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x6

    .line 3365
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 3359
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3354
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3349
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3344
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    .line 1109
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1111
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    return p1

    .line 1115
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v2, v2

    add-int/2addr v1, v2

    .line 1117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 1119
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    .line 1124
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1128
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1130
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x10

    const/16 v2, 0x2c

    if-ne p1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 1131
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1132
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1133
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 p1, 0x3

    return p1

    :cond_4
    const/16 v4, 0x7d

    if-ne p1, v4, :cond_9

    add-int/lit8 v1, v1, 0x1

    .line 1136
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1137
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne p1, v2, :cond_5

    .line 1138
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/lit8 v1, v1, 0x1

    .line 1139
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_5
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_6

    const/16 p1, 0xf

    .line 1141
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/lit8 v1, v1, 0x1

    .line 1142
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_6
    if-ne p1, v4, :cond_7

    const/16 p1, 0xd

    .line 1144
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/lit8 v1, v1, 0x1

    .line 1145
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_7
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_8

    const/16 p1, 0x14

    .line 1147
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_1
    const/4 p1, 0x4

    .line 1151
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_2

    :cond_8
    return v3

    .line 1154
    :cond_9
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1155
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setToken(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void
.end method

.method protected skipComment()V
    .locals 4

    .line 565
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 566
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 569
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_1
    if-ne v0, v1, :cond_0

    return-void

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_6

    .line 577
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 579
    :cond_3
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 582
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_3

    .line 583
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 589
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_5
    return-void

    .line 592
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final skipWhitespace()V
    .locals 3

    .line 3596
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 3601
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 3598
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .line 404
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
