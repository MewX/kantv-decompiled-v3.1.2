.class Lcom/avos/avoscloud/AVInternalLogger;
.super Lcom/avos/avoscloud/AVLogger;
.source "AVInternalLogger.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/avos/avoscloud/AVLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 27
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 62
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 37
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 17
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 47
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method
