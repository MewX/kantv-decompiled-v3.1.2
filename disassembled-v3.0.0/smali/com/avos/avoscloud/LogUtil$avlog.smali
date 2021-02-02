.class public Lcom/avos/avoscloud/LogUtil$avlog;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "avlog"
.end annotation


# static fields
.field public static showAVLog:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 2

    .line 36
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
