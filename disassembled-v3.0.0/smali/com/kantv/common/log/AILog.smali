.class public Lcom/kantv/common/log/AILog;
.super Lcom/kantv/common/log/Constant;
.source "AILog.java"


# static fields
.field public static final ADAPTER_MARK_TAG:Ljava/lang/String; = "adapter_mark"

.field public static final DEFAULT_LOG_LEVEL:I = 0x1

.field private static final LOG_PREFIX:Ljava/lang/String; = "KanTV-"

.field private static final TAG:Ljava/lang/String; = "AILog"

.field private static currentLogLevel:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/kantv/common/log/Constant;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    .line 408
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 421
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 434
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 138
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dHighFreq(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dHighFreq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dHighFreq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 194
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dHighFreq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 382
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 603
    sget v0, Lcom/kantv/common/log/AILog;->currentLogLevel:I

    return v0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 247
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 290
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nargs["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 293
    invoke-static {p2, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[[B)V
    .locals 3

    const/4 v0, 0x0

    .line 275
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nargs["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    aget-object v2, p2, v0

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 278
    invoke-static {p2, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    const-string v1, ""

    .line 485
    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static json(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    .line 496
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized printLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/kantv/common/log/AILog;

    monitor-enter v0

    const/4 v1, 0x0

    .line 534
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized printLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-class p3, Lcom/kantv/common/log/AILog;

    monitor-enter p3

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 547
    :try_start_0
    sget v0, Lcom/kantv/common/log/AILog;->currentLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/kantv/common/log/AILog;->currentLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, p0, :cond_2

    .line 548
    :cond_1
    monitor-exit p3

    return-void

    :cond_2
    if-nez p2, :cond_3

    :try_start_1
    const-string p2, "(null)"

    :cond_3
    const-string v0, ""

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/kantv/common/log/AILog;->currentLogLevel:I

    const v3, 0x4e6e6b28    # 1.0E9f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-float v2, v5

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 567
    :pswitch_0
    sget p0, Lcom/kantv/common/log/AILog;->currentLogLevel:I

    if-ne p0, v4, :cond_5

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KanTV-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/kantv/common/log/JsonLog;->printJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KanTV-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, v0}, Lcom/kantv/common/log/JsonLog;->printJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 564
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KanTV-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/kantv/common/log/BaseLog;->printDefault(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    :goto_1
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/kantv/common/log/AILog;

    monitor-enter v0

    const/4 v1, 0x1

    .line 522
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLogLevel(I)V
    .locals 3

    .line 612
    sget v0, Lcom/kantv/common/log/AILog;->currentLogLevel:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const-string v0, "AILog"

    const/4 v1, 0x5

    if-le p0, v1, :cond_1

    const-string v2, "Set log level failed . wrong log level"

    .line 617
    invoke-static {v1, v0, v2}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log.level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/kantv/common/log/AILog;->currentLogLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    sput p0, Lcom/kantv/common/log/AILog;->currentLogLevel:I

    return-void
.end method

.method public static snipet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 505
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    if-gt v0, v1, :cond_1

    mul-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0x3e8

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/4 v3, 0x3

    .line 509
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p0, v1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 56
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static vHighFreq(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static vHighFreq(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static vHighFreq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLogHighFreq(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 330
    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/kantv/common/log/AILog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 447
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 474
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 460
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
