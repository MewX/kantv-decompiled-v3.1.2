.class public Lcom/kantv/ui/utils/LogcatHelper;
.super Ljava/lang/Object;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/utils/LogcatHelper$LogDumper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/kantv/ui/utils/LogcatHelper;

.field private static PATH_LOGCAT:Ljava/lang/String;


# instance fields
.field private mLogDumper:Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

.field private mPId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper;->mLogDumper:Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

    .line 62
    invoke-virtual {p0, p1}, Lcom/kantv/ui/utils/LogcatHelper;->init(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/utils/LogcatHelper;->mPId:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kantv/ui/utils/LogcatHelper;
    .locals 1

    .line 55
    sget-object v0, Lcom/kantv/ui/utils/LogcatHelper;->INSTANCE:Lcom/kantv/ui/utils/LogcatHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/kantv/ui/utils/LogcatHelper;

    invoke-direct {v0, p0}, Lcom/kantv/ui/utils/LogcatHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kantv/ui/utils/LogcatHelper;->INSTANCE:Lcom/kantv/ui/utils/LogcatHelper;

    .line 58
    :cond_0
    sget-object p0, Lcom/kantv/ui/utils/LogcatHelper;->INSTANCE:Lcom/kantv/ui/utils/LogcatHelper;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "logs"

    if-eqz v0, :cond_0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/ui/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kantv/ui/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    .line 48
    :goto_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/kantv/ui/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper;->mLogDumper:Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

    iget v1, p0, Lcom/kantv/ui/utils/LogcatHelper;->mPId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kantv/ui/utils/LogcatHelper;->PATH_LOGCAT:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;-><init>(Lcom/kantv/ui/utils/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper;->mLogDumper:Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper;->mLogDumper:Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper;->mLogDumper:Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->stopLogs()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper;->mLogDumper:Lcom/kantv/ui/utils/LogcatHelper$LogDumper;

    :cond_0
    return-void
.end method
