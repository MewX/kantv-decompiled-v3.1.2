.class public abstract Lcom/avos/avoscloud/AVLogger;
.super Ljava/lang/Object;
.source "AVLogger.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x4

.field public static final LOG_LEVEL_ERROR:I = 0x20

.field public static final LOG_LEVEL_INFO:I = 0x8

.field public static final LOG_LEVEL_NONE:I = -0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x10


# instance fields
.field enabled:Z

.field logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/avos/avoscloud/AVLogger;->logLevel:I

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method public getLogLevel()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/avos/avoscloud/AVLogger;->logLevel:I

    return v0
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVLogger;->enabled:Z

    return v0
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVLogger;->enabled:Z

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/avos/avoscloud/AVLogger;->logLevel:I

    return-void
.end method

.method public showInternalDebugLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method
