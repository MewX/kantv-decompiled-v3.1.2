.class public final Lcom/avos/avoscloud/AVInstallation;
.super Lcom/avos/avoscloud/AVObject;
.source "AVInstallation.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/AVClassName;
    value = "_Installation"
.end annotation


# static fields
.field public static final AVINSTALLATION_ENDPOINT:Ljava/lang/String; = "installations"

.field private static final CHANNELSTAG:Ljava/lang/String; = "channel"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;

.field private static final DEVICETYPETAG:Ljava/lang/String; = "deviceType"

.field private static final INSTALLATION:Ljava/lang/String; = "installation"

.field private static final INSTALLATIONIDTAG:Ljava/lang/String; = "installationId"

.field private static final INSTALLATION_AVNAME:Ljava/lang/String; = "_Installation"

.field private static final LOGTAG:Ljava/lang/String; = "com.avos.avoscloud.AVInstallation"

.field public static final REGISTRATION_ID:Ljava/lang/String; = "registrationId"

.field public static final VENDOR:Ljava/lang/String; = "vendor"

.field private static volatile currentInstallation:Lcom/avos/avoscloud/AVInstallation;


# instance fields
.field private volatile installationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installations"

    const-string v2, "_Installation"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v2, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->registerSubclass(Ljava/lang/Class;)V

    .line 305
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVInstallation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "_Installation"

    .line 98
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVInstallation;->requestStatistic:Z

    .line 100
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/avos/avoscloud/AVInstallation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Landroid/content/Context;Lcom/avos/avoscloud/AVInstallation;)V

    return-void
.end method

.method private static createNewInstallation(Landroid/content/Context;)V
    .locals 3

    .line 70
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->genInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVInstallation;-><init>()V

    sput-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 72
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    const-string v2, "installationId"

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->saveCurrentInstalationToLocal(Landroid/content/Context;)V

    return-void
.end method

.method private static deviceType()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method private static genInstallationId()Ljava/lang/String;
    .locals 3

    .line 84
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation(Landroid/content/Context;)Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentInstallation(Landroid/content/Context;)Lcom/avos/avoscloud/AVInstallation;
    .locals 2

    if-nez p0, :cond_0

    .line 54
    sget-object p0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    .line 56
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-nez v0, :cond_2

    .line 57
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile(Landroid/content/Context;)Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    if-nez v1, :cond_1

    .line 59
    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->createNewInstallation(Landroid/content/Context;)V

    .line 61
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 63
    :cond_2
    :goto_0
    sget-object p0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-eqz p0, :cond_3

    .line 64
    sget-object p0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 66
    :cond_3
    sget-object p0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    return-object p0
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery<",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_Installation"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private initialize()V
    .locals 3

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "installationId"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 112
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    const-string v0, "deviceType"

    .line 115
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->deviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "timeZone"

    .line 116
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->timezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected static readInstallationFile(Landroid/content/Context;)Lcom/avos/avoscloud/AVInstallation;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 178
    sget-object p0, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please call AVOSCloud.initialize at first in Application"

    invoke-static {p0, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, ""

    .line 183
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "installation"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 188
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVInstallation;

    sput-object p0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/avos/avoscloud/AVInstallation;->UUID_LEN:I

    if-ne v2, v3, :cond_2

    .line 192
    new-instance v2, Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVInstallation;-><init>()V

    sput-object v2, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 193
    sget-object v2, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 195
    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->saveCurrentInstalationToLocal(Landroid/content/Context;)V

    .line 198
    :cond_2
    :goto_0
    sget-object p0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 202
    sget-object v2, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v2, v1, p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-object v0
.end method

.method private static saveCurrentInstalationToLocal(Landroid/content/Context;)V
    .locals 1

    .line 91
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Landroid/content/Context;Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static timezone()Ljava/lang/String;
    .locals 1

    .line 124
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method protected static updateCurrentInstallation()V
    .locals 2

    .line 260
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "try to update installation to fix date type data"

    .line 261
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 263
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile(Landroid/content/Context;)Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    new-instance v1, Lcom/avos/avoscloud/AVInstallation$1;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVInstallation$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInstallation;->fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 281
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "failed to update installation"

    .line 282
    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static writeInstallationFile(Landroid/content/Context;Lcom/avos/avoscloud/AVInstallation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 209
    invoke-direct {p1}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "installation"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    sget-object p0, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v1, v2

    .line 212
    invoke-static {p1, p0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected alwaysUsePost()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .line 302
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->pushInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method protected isDirty()Z
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getUpdatedAt()Ljava/util/Date;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDataSynchronized()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onDataSynchronized()V

    .line 160
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->onSaveSuccess()V

    return-void
.end method

.method protected onSaveFailure()V
    .locals 2

    const-string v0, "roll back installationId since error there"

    .line 168
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 169
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile(Landroid/content/Context;)Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVInstallation;->createNewInstallation(Landroid/content/Context;)V

    .line 173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSaveSuccess()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 151
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Landroid/content/Context;Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 235
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected rebuildInstanceData()V
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    const-string v0, "installationId"

    .line 296
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->remove(Ljava/lang/String;)V

    return-void
.end method

.method setInstallationId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    return-void
.end method
