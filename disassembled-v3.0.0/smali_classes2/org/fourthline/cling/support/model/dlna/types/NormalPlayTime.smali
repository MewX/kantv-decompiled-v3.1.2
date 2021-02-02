.class public Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
.super Ljava/lang/Object;
.source "NormalPlayTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;
    }
.end annotation


# static fields
.field static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^(\\d+):(\\d{1,2}):(\\d{1,2})(\\.(\\d{1,3}))?|(\\d+)(\\.(\\d{1,3}))?$"

    const/4 v1, 0x2

    .line 33
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 41
    iput-wide p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    return-void

    .line 38
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter milliseconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(JJJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    cmp-long v2, p3, v0

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x3b

    cmp-long v4, p3, v2

    if-gtz v4, :cond_2

    cmp-long v4, p5, v0

    if-ltz v4, :cond_1

    cmp-long v4, p5, v2

    if-gtz v4, :cond_1

    cmp-long v2, p7, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x3e7

    cmp-long v2, p7, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x3c

    mul-long p1, p1, v0

    mul-long p1, p1, v0

    mul-long p3, p3, v0

    add-long/2addr p1, p3

    add-long/2addr p1, p5

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    add-long/2addr p1, p7

    .line 60
    iput-wide p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    return-void

    .line 57
    :cond_0
    new-instance p1, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid parameter milliseconds: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    new-instance p3, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid parameter seconds: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 50
    :cond_2
    new-instance p3, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid parameter minutes: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 46
    :cond_3
    new-instance p3, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid parameter hours: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 108
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const/4 v5, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3

    int-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    .line 110
    new-instance v4, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 113
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, v3

    mul-long v13, v0, v2

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;-><init>(JJJJ)V

    return-object v4

    :cond_0
    const/16 v1, 0x8

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 117
    new-instance v3, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    const/4 v4, 0x6

    .line 118
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v6, v2

    mul-long v0, v0, v6

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 123
    :catch_0
    :cond_1
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse NormalPlayTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMilliseconds()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->SECONDS:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->getString(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;)Ljava/lang/String;
    .locals 14

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 91
    iget-wide v2, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    const-wide/16 v4, 0x3e8

    rem-long/2addr v2, v4

    .line 92
    sget-object v4, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$1;->$SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format:[I

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v6, :cond_0

    .line 99
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "%d.%03d"

    invoke-static {p1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    sub-long/2addr v0, v7

    .line 95
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    invoke-virtual {p1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    .line 96
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v9, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    invoke-virtual {p1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v12, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v11

    invoke-virtual {p1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 97
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v5

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v0

    const-string v0, "%d:%02d:%02d.%03d"

    invoke-static {p1, v0, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setMilliseconds(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 78
    iput-wide p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->milliseconds:J

    return-void

    .line 75
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter milliseconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
