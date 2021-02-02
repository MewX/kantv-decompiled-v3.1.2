.class Lcom/avos/avoscloud/NotifyUtil;
.super Ljava/lang/Object;
.source "NotifyUtil.java"


# static fields
.field static final SERVICE_RESTART:I = 0x400

.field static final SERVICE_RESTART_ACTION:Ljava/lang/String; = "com.avos.avoscloud.notify.action"

.field static notifyHandler:Landroid/os/Handler;

.field protected static thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.avos.avoscloud.notify"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/NotifyUtil;->thread:Landroid/os/HandlerThread;

    .line 26
    sget-object v0, Lcom/avos/avoscloud/NotifyUtil;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Lcom/avos/avoscloud/NotifyUtil$1;

    sget-object v1, Lcom/avos/avoscloud/NotifyUtil;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/NotifyUtil$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/avos/avoscloud/NotifyUtil;->notifyHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 21
    invoke-static {}, Lcom/avos/avoscloud/NotifyUtil;->getRegisteredApps()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/avos/avoscloud/NotifyUtil;->registerApp()V

    return-void
.end method

.method private static getRegisterAppsFile()Ljava/io/File;
    .locals 5

    .line 91
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/leancloud/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "dontpanic.cp"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 97
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private static getRegisteredApps()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/NotifyUtil;->getRegisterAppsFile()Ljava/io/File;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :try_start_0
    const-class v2, Ljava/util/Set;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NotifyUtil"

    const-string v3, "getRegisteredApps"

    .line 81
    invoke-static {v2, v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static registerApp()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/avos/avoscloud/NotifyUtil;->getRegisteredApps()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/avos/avoscloud/NotifyUtil;->getRegisterAppsFile()Ljava/io/File;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    :cond_0
    return-void
.end method
