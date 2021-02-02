.class public Lcom/samsung/multiscreen/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/Player$DMPStatus;,
        Lcom/samsung/multiscreen/Player$PlayerControlStatus;,
        Lcom/samsung/multiscreen/Player$RepeatMode;,
        Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;,
        Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;,
        Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;,
        Lcom/samsung/multiscreen/Player$PlayerMiscEvents;,
        Lcom/samsung/multiscreen/Player$PlayerControlEvents;,
        Lcom/samsung/multiscreen/Player$ContentType;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "3201412000694"

.field static final CONTENT_URI:Ljava/lang/String; = "uri"

.field private static final DEFAULT_MEDIA_PLAYER:Ljava/lang/String; = "samsung.default.media.player"

.field static final PLAYER_APP_STATUS_EVENT:Ljava/lang/String; = "appStatus"

.field private static final PLAYER_BGIMAGE1:Ljava/lang/String; = "url1"

.field private static final PLAYER_BGIMAGE2:Ljava/lang/String; = "url2"

.field private static final PLAYER_BGIMAGE3:Ljava/lang/String; = "url3"

.field static final PLAYER_CHANGE_SUB_EVENT:Ljava/lang/String; = "playerChange"

.field static final PLAYER_CONTENT_CHANGE_EVENT:Ljava/lang/String; = "playerContentChange"

.field static final PLAYER_CONTROL_EVENT:Ljava/lang/String; = "playerControl"

.field static final PLAYER_CURRENT_PLAYING_EVENT:Ljava/lang/String; = "currentPlaying"

.field static final PLAYER_DATA:Ljava/lang/String; = "data"

.field static final PLAYER_ERROR_MESSAGE_EVENT:Ljava/lang/String; = "error"

.field static final PLAYER_NOTICE_RESPONSE_EVENT:Ljava/lang/String; = "playerNotice"

.field static final PLAYER_QUEUE_EVENT:Ljava/lang/String; = "playerQueueEvent"

.field static final PLAYER_READY_SUB_EVENT:Ljava/lang/String; = "playerReady"

.field static final PLAYER_SUB_EVENT:Ljava/lang/String; = "subEvent"

.field static final PLAYER_TYPE:Ljava/lang/String; = "playerType"

.field private static final PROPERTY_APP_VISIBLE:Ljava/lang/String; = "visible"

.field private static final PROPERTY_DMP_RUNNING:Ljava/lang/String; = "media_player"

.field private static final PROPERTY_ISCONTENTS:Ljava/lang/String; = "isContents"

.field private static final PROPERTY_RUNNING:Ljava/lang/String; = "running"

.field private static final TAG:Ljava/lang/String; = "Player"

.field static mApplication:Lcom/samsung/multiscreen/Application;


# instance fields
.field private debug:Z

.field mAdditionalData:Lorg/json/JSONObject;

.field private mAppName:Ljava/lang/String;

.field private mContentType:Lcom/samsung/multiscreen/Player$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/samsung/multiscreen/Player;->mAdditionalData:Lorg/json/JSONObject;

    .line 58
    iput-object v0, p0, Lcom/samsung/multiscreen/Player;->mContentType:Lcom/samsung/multiscreen/Player$ContentType;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Player;->debug:Z

    .line 194
    iput-object p3, p0, Lcom/samsung/multiscreen/Player;->mAppName:Ljava/lang/String;

    const-string p3, "samsung.default.media.player"

    .line 195
    invoke-virtual {p1, p2, p3}, Lcom/samsung/multiscreen/Service;->createApplication(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/multiscreen/Application;

    move-result-object p1

    sput-object p1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    .line 196
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Player"

    const-string p2, "Player Created"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/multiscreen/Player;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/multiscreen/Player;->launchStandbyScreen(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/Player;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/multiscreen/Player;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/multiscreen/Player;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/multiscreen/Player;->sendStartDMPApplicationRequest(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/multiscreen/Player;Lorg/json/JSONObject;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/multiscreen/Player;->startPlay(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/multiscreen/Player;)Lcom/samsung/multiscreen/Player$ContentType;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/multiscreen/Player;->mContentType:Lcom/samsung/multiscreen/Player$ContentType;

    return-object p0
.end method

.method private connect()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lcom/samsung/multiscreen/Player;->connect(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method private connect(Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/samsung/multiscreen/Player;->connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method private connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/multiscreen/Application;->connectToPlay(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method private launchStandbyScreen(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 442
    new-instance v0, Lcom/samsung/multiscreen/Player$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/multiscreen/Player$3;-><init>(Lcom/samsung/multiscreen/Player;Lcom/samsung/multiscreen/Result;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Player;->getDMPStatus(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method private sendStartDMPApplicationRequest(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Application;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 532
    sget-object v1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Application;->getStartArgs()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "args"

    .line 534
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/samsung/multiscreen/Player;->mContentType:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v1

    .line 538
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "picture"

    :cond_1
    const-string v2, "isContents"

    .line 542
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    .line 543
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "library"

    const-string v1, "Android SDK"

    .line 546
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version"

    const-string v1, "2.5.1"

    .line 547
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object p1, p0, Lcom/samsung/multiscreen/Player;->mAppName:Ljava/lang/String;

    const-string v1, "appName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "modelNumber"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send ms.webapplication.start with params "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Player"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    sget-object p1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v1, Lcom/samsung/multiscreen/Player$5;

    invoke-direct {v1, p0, p2}, Lcom/samsung/multiscreen/Player$5;-><init>(Lcom/samsung/multiscreen/Player;Lcom/samsung/multiscreen/Result;)V

    const-string p2, "ms.webapplication.start"

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/multiscreen/Application;->invokeMethod(Ljava/lang/String;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method private startPlay(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PLAYER_ERROR_UNKNOWN"

    const-string v1, "Player"

    if-nez p1, :cond_2

    .line 587
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    invoke-direct {p1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 588
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, v0, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "startPlay() Error: \'data\' is NULL."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v2, "uri"

    .line 593
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 595
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 597
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPlay() : Error in parsing JSON data: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_7

    .line 603
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    invoke-direct {p1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 604
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, v0, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    .line 605
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "startPlay() Error: \'url\' is NULL."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .line 609
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content Url : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_8
    new-instance v0, Lcom/samsung/multiscreen/Player$6;

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/samsung/multiscreen/Player$6;-><init>(Lcom/samsung/multiscreen/Player;Lcom/samsung/multiscreen/Result;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Player;->getDMPStatus(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0, v0, v1}, Lcom/samsung/multiscreen/Player;->disconnect(ZLcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public disconnect(Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/samsung/multiscreen/Player;->disconnect(ZLcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public disconnect(ZLcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/multiscreen/Application;->disconnect(ZLcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public getControlStatus()V
    .locals 3

    .line 786
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send getControlStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getControlStatus:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final getDMPStatus(Lcom/samsung/multiscreen/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Player$DMPStatus;",
            ">;)V"
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Application;->getService()Lcom/samsung/multiscreen/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "webapplication"

    .line 325
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, ""

    .line 326
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 327
    new-instance v1, Lcom/samsung/multiscreen/Player$1;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/Player$1;-><init>(Lcom/samsung/multiscreen/Player;)V

    invoke-static {v1, p1}, Lcom/samsung/multiscreen/HttpHelper;->createHttpCallback(Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;Lcom/samsung/multiscreen/Result;)Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;

    move-result-object p1

    .line 353
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1, p1}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player Connection Status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Application;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Application;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Player;->debug:Z

    return v0
.end method

.method public mute()V
    .locals 3

    .line 760
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send Mute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->mute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public next()V
    .locals 3

    .line 818
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send Next"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->next:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 744
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->pause:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public play()V
    .locals 3

    .line 736
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send Play"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->play:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final playContent(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Player$ContentType;Lcom/samsung/multiscreen/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/samsung/multiscreen/Player$ContentType;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is Connected Status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iput-object p1, p0, Lcom/samsung/multiscreen/Player;->mAdditionalData:Lorg/json/JSONObject;

    .line 501
    iput-object p2, p0, Lcom/samsung/multiscreen/Player;->mContentType:Lcom/samsung/multiscreen/Player$ContentType;

    .line 505
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isConnected()Z

    move-result p2

    if-nez p2, :cond_1

    .line 506
    new-instance p2, Lcom/samsung/multiscreen/Player$4;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/multiscreen/Player$4;-><init>(Lcom/samsung/multiscreen/Player;Lorg/json/JSONObject;Lcom/samsung/multiscreen/Result;)V

    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/Player;->connect(Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 518
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/multiscreen/Player;->startPlay(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Result;)V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 3

    .line 810
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send Previous"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->previous:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final removePlayerWatermark()V
    .locals 3

    .line 724
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "removePlayerWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->unsetWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final resumeApplicationInForeground()V
    .locals 2

    .line 694
    new-instance v0, Lcom/samsung/multiscreen/Player$7;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Player$7;-><init>(Lcom/samsung/multiscreen/Player;)V

    const-string v1, "http://DummyUrlToBringAppToForeground.msf"

    invoke-direct {p0, v1, v0}, Lcom/samsung/multiscreen/Player;->sendStartDMPApplicationRequest(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/samsung/multiscreen/Player;->debug:Z

    return-void
.end method

.method public setOnClientConnectListener(Lcom/samsung/multiscreen/Channel$OnClientConnectListener;)V
    .locals 1

    .line 287
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Application;->setOnClientConnectListener(Lcom/samsung/multiscreen/Channel$OnClientConnectListener;)V

    return-void
.end method

.method public setOnClientDisconnectListener(Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;)V
    .locals 1

    .line 296
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Application;->setOnClientDisconnectListener(Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;)V

    return-void
.end method

.method public setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V
    .locals 1

    .line 269
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Application;->setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V

    return-void
.end method

.method public setOnDisconnectListener(Lcom/samsung/multiscreen/Channel$OnDisconnectListener;)V
    .locals 1

    .line 278
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Application;->setOnDisconnectListener(Lcom/samsung/multiscreen/Channel$OnDisconnectListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/multiscreen/Channel$OnErrorListener;)V
    .locals 1

    .line 314
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Application;->setOnErrorListener(Lcom/samsung/multiscreen/Channel$OnErrorListener;)V

    return-void
.end method

.method public setOnReadyListener(Lcom/samsung/multiscreen/Channel$OnReadyListener;)V
    .locals 1

    .line 305
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Application;->setOnReadyListener(Lcom/samsung/multiscreen/Channel$OnReadyListener;)V

    return-void
.end method

.method public final setPlayerWatermark(Landroid/net/Uri;)V
    .locals 3

    .line 714
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "setPlayerWatermark"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->setWatermark:Lcom/samsung/multiscreen/Player$PlayerMiscEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerMiscEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "playerControl"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .line 778
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send SetVolume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "playerControl"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final standbyConnect(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendStandbyScreenRequest: Is Connected Status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url1"

    if-eqz p1, :cond_2

    .line 401
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 402
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->bgImage:Lcom/samsung/multiscreen/Player$ContentType;

    iput-object v2, p0, Lcom/samsung/multiscreen/Player;->mContentType:Lcom/samsung/multiscreen/Player$ContentType;

    .line 403
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    .line 405
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "url2"

    .line 406
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p3, :cond_3

    .line 408
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "url3"

    .line 409
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 412
    :cond_2
    sget-object p1, Lcom/samsung/multiscreen/Player$ContentType;->logo:Lcom/samsung/multiscreen/Player$ContentType;

    iput-object p1, p0, Lcom/samsung/multiscreen/Player;->mContentType:Lcom/samsung/multiscreen/Player$ContentType;

    const-string p1, ""

    .line 413
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "standbyConnect() : Exception : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Player"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isConnected()Z

    move-result p2

    if-nez p2, :cond_4

    .line 421
    new-instance p2, Lcom/samsung/multiscreen/Player$2;

    invoke-direct {p2, p0, p1, p4}, Lcom/samsung/multiscreen/Player$2;-><init>(Lcom/samsung/multiscreen/Player;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/Player;->connect(Lcom/samsung/multiscreen/Result;)V

    goto :goto_1

    .line 431
    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/samsung/multiscreen/Player;->launchStandbyScreen(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    :goto_1
    return-void
.end method

.method public final standbyConnect(Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/multiscreen/Player;->standbyConnect(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public final standbyConnect(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/samsung/multiscreen/Player;->standbyConnect(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public final standbyConnect(Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/samsung/multiscreen/Player;->standbyConnect(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 752
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stop:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unMute()V
    .locals 3

    .line 768
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send Un-Mute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->unMute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public volumeDown()V
    .locals 3

    .line 802
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send VolumeDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->volumeDown:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public volumeUp()V
    .locals 3

    .line 794
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Player"

    const-string v1, "Send VolumeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->volumeUp:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
