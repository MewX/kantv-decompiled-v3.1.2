.class Lcom/samsung/multiscreen/StandbyDeviceList;
.super Ljava/lang/Object;
.source "StandbyDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;,
        Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;
    }
.end annotation


# static fields
.field private static final DEVICE_LIST_FILE_NAME:Ljava/lang/String; = "com.samsung.smartviewSDK.standbydevices"

.field private static final KEY_STANDBYLIST:Ljava/lang/String; = "STANDBYLIST_KEY"

.field private static final SUPPORTED_TV_MODEL_YEAR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "StndbyDLHndlr"

.field private static final TIMEOUT:I = 0x1b58

.field private static final VALUE_BSSID:Ljava/lang/String; = "ssid"

.field private static final VALUE_DUID:Ljava/lang/String; = "id"

.field private static final VALUE_MAC:Ljava/lang/String; = "mac"

.field private static final VALUE_NAME:Ljava/lang/String; = "name"

.field private static final VALUE_URI:Ljava/lang/String; = "uri"

.field private static mInstance:Lcom/samsung/multiscreen/StandbyDeviceList;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalStorage:Landroid/content/SharedPreferences;

.field private mNetworkMonitor:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

.field private mSearchListener:Lcom/samsung/multiscreen/Search$SearchListener;

.field private mShowStandbyDevicesTimerExpired:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 403
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 405
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v2, "com.samsung.smartviewSDK.standbydevices"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v9, Lcom/samsung/multiscreen/StandbyDeviceList;->mLocalStorage:Landroid/content/SharedPreferences;

    .line 406
    iput-object v10, v9, Lcom/samsung/multiscreen/StandbyDeviceList;->mShowStandbyDevicesTimerExpired:Ljava/lang/Boolean;

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    .line 409
    iget-object v2, v9, Lcom/samsung/multiscreen/StandbyDeviceList;->mLocalStorage:Landroid/content/SharedPreferences;

    const-string v3, "STANDBYLIST_KEY"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "StandbyDeviceListHandler: Error: "

    const-string v12, "StndbyDLHndlr"

    if-eqz v2, :cond_1

    const-string v3, "[]"

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 412
    :cond_1
    :goto_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    move-object v13, v3

    .line 424
    :try_start_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v14, 0x0

    .line 425
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v14, v1, :cond_2

    .line 426
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 427
    new-instance v15, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    const-string v2, "id"

    .line 428
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "ssid"

    .line 429
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "mac"

    .line 430
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "uri"

    .line 431
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "name"

    .line 432
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v8, v10

    .line 433
    invoke-direct/range {v1 .. v8}, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 434
    iget-object v1, v9, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 443
    :cond_2
    new-instance v1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    move-object/from16 v2, p2

    invoke-direct {v1, v9, v0, v2}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList;Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V

    iput-object v1, v9, Lcom/samsung/multiscreen/StandbyDeviceList;->mNetworkMonitor:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    return-void

    :catch_1
    move-exception v0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/multiscreen/StandbyDeviceList;)Lcom/samsung/multiscreen/Search$SearchListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mSearchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/multiscreen/StandbyDeviceList;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/Search$SearchListener;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mSearchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/samsung/multiscreen/StandbyDeviceList;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/multiscreen/StandbyDeviceList;->commit()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mShowStandbyDevicesTimerExpired:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/multiscreen/StandbyDeviceList;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mShowStandbyDevicesTimerExpired:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/multiscreen/StandbyDeviceList;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/multiscreen/StandbyDeviceList;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->remove(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/multiscreen/StandbyDeviceList;)Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mNetworkMonitor:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized commit()V
    .locals 5

    monitor-enter p0

    .line 455
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 456
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 457
    :goto_0
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 458
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "id"

    .line 460
    iget-object v4, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v4, v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ssid"

    .line 461
    iget-object v4, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v4, v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mac"

    .line 462
    iget-object v4, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v4, v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uri"

    .line 463
    iget-object v4, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v4, v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "name"

    .line 464
    iget-object v4, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v4, v4, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 471
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mLocalStorage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "STANDBYLIST_KEY"

    .line 472
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StndbyDLHndlr"

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close(): Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 475
    :cond_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 475
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/StandbyDeviceList;
    .locals 1

    .line 171
    sget-object v0, Lcom/samsung/multiscreen/StandbyDeviceList;->mInstance:Lcom/samsung/multiscreen/StandbyDeviceList;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/StandbyDeviceList;-><init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V

    sput-object v0, Lcom/samsung/multiscreen/StandbyDeviceList;->mInstance:Lcom/samsung/multiscreen/StandbyDeviceList;

    .line 174
    :cond_0
    sget-object p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mInstance:Lcom/samsung/multiscreen/StandbyDeviceList;

    return-object p0
.end method

.method private get()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Service;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 502
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    .line 504
    iget-object v3, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mNetworkMonitor:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->bssid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 506
    iget-object v5, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "uri"

    .line 507
    iget-object v5, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    .line 508
    iget-object v2, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    invoke-static {v3}, Lcom/samsung/multiscreen/Service;->create(Lorg/json/JSONObject;)Lcom/samsung/multiscreen/Service;

    move-result-object v2

    .line 510
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get(): Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StndbyDLHndlr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method static getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;
    .locals 1

    .line 194
    sget-object v0, Lcom/samsung/multiscreen/StandbyDeviceList;->mInstance:Lcom/samsung/multiscreen/StandbyDeviceList;

    return-object v0
.end method

.method private isStandbyDevice(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 526
    :goto_0
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 527
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v2, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mNetworkMonitor:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v3, v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->bssid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 528
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private remove(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 485
    :goto_0
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 486
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v2, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 488
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 325
    new-instance v0, Lcom/samsung/multiscreen/StandbyDeviceList$3;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/StandbyDeviceList$3;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList;)V

    .line 347
    invoke-virtual {v0}, Lcom/samsung/multiscreen/StandbyDeviceList$3;->run()V

    return-void
.end method

.method destruct()V
    .locals 2

    .line 178
    sget-object v0, Lcom/samsung/multiscreen/StandbyDeviceList;->mInstance:Lcom/samsung/multiscreen/StandbyDeviceList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 181
    sput-object v0, Lcom/samsung/multiscreen/StandbyDeviceList;->mInstance:Lcom/samsung/multiscreen/StandbyDeviceList;

    .line 182
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 183
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mNetworkMonitor:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->stopNetworkMonitoring()V

    .line 184
    iput-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mLocalStorage:Landroid/content/SharedPreferences;

    .line 185
    iput-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mSearchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    return-void
.end method

.method get(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;
    .locals 4

    const/4 v0, 0x0

    .line 239
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    .line 241
    iget-object v2, v1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    .line 243
    iget-object v2, v1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uri"

    .line 244
    iget-object v2, v1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    .line 245
    iget-object v1, v1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-static {p1}, Lcom/samsung/multiscreen/Service;->create(Lorg/json/JSONObject;)Lcom/samsung/multiscreen/Service;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get(Duid): Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StndbyDLHndlr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getFoundStandbyService(Lcom/samsung/multiscreen/Service;)Lcom/samsung/multiscreen/Service;
    .locals 1

    .line 376
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->isStandbyDevice(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 377
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->update(Lcom/samsung/multiscreen/Service;Ljava/lang/Boolean;)V

    .line 378
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getLostStandbyService(Lcom/samsung/multiscreen/Service;)Lcom/samsung/multiscreen/Service;
    .locals 1

    .line 358
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->isStandbyDevice(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 359
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->update(Lcom/samsung/multiscreen/Service;Ljava/lang/Boolean;)V

    .line 360
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mShowStandbyDevicesTimerExpired:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getMac(Lcom/samsung/multiscreen/Service;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 391
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v2, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->mac:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method remove(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 313
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->remove(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mSearchListener:Lcom/samsung/multiscreen/Search$SearchListener;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Search$SearchListener;->onLost(Lcom/samsung/multiscreen/Service;)V

    .line 316
    invoke-direct {p0}, Lcom/samsung/multiscreen/StandbyDeviceList;->commit()V

    :cond_0
    return-void
.end method

.method start()V
    .locals 4

    .line 202
    new-instance v0, Ljava/util/Timer;

    const-string v1, "showStandbyTVTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 203
    new-instance v1, Lcom/samsung/multiscreen/StandbyDeviceList$1;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/StandbyDeviceList$1;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList;)V

    const-wide/16 v2, 0x1b58

    .line 217
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method stop()V
    .locals 3

    const/4 v0, 0x0

    .line 224
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mShowStandbyDevicesTimerExpired:Ljava/lang/Boolean;

    .line 226
    :goto_0
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iput-object v1, v2, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->isActive:Ljava/lang/Boolean;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method update(Lcom/samsung/multiscreen/Service;Ljava/lang/Boolean;)V
    .locals 2

    .line 263
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Samsung SmartTV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Lcom/samsung/multiscreen/StandbyDeviceList$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/multiscreen/StandbyDeviceList$2;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList;Lcom/samsung/multiscreen/Service;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/samsung/multiscreen/Service;->getDeviceInfo(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method
