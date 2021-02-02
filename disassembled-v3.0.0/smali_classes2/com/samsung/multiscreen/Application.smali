.class public Lcom/samsung/multiscreen/Application;
.super Lcom/samsung/multiscreen/Channel;
.source "Application.java"


# static fields
.field public static final PROPERTY_VALUE_LIBRARY:Ljava/lang/String; = "Android SDK"

.field public static final ROUTE_APPLICATION:Ljava/lang/String; = "applications"

.field public static final ROUTE_WEBAPPLICATION:Ljava/lang/String; = "webapplication"

.field private static final TAG:Ljava/lang/String; = "Application"


# instance fields
.field private isHostDisconnected:Ljava/lang/Boolean;

.field private isStopping:Z

.field private onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

.field private final startArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final webapp:Z


# direct methods
.method private constructor <init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Service;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/multiscreen/Channel;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/samsung/multiscreen/Application;->isStopping:Z

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/multiscreen/Application;->isHostDisconnected:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const-string v0, "samsung.default.media.player"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 89
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/multiscreen/Application;->webapp:Z

    .line 90
    iput-object p4, p0, Lcom/samsung/multiscreen/Application;->startArgs:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/multiscreen/Application;)Ljava/lang/Boolean;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/multiscreen/Application;->isHostDisconnected:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/multiscreen/Application;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/multiscreen/Application;->isHostDisconnected:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/multiscreen/Application;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/multiscreen/Application;->isStopping:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/Application;->realDisconnect(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/multiscreen/Application;)Lcom/samsung/multiscreen/Channel$OnConnectListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/multiscreen/Application;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    return-object p0
.end method

.method static create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;)Lcom/samsung/multiscreen/Application;
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 505
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_0
    new-instance v1, Lcom/samsung/multiscreen/Application;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/samsung/multiscreen/Application;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    .line 502
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/multiscreen/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Service;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Application;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 518
    new-instance v0, Lcom/samsung/multiscreen/Application;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/multiscreen/Application;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 515
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private doApplicationCallback(Lcom/samsung/multiscreen/Result;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    .line 416
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "error"

    .line 417
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 418
    new-instance v1, Lcom/samsung/multiscreen/Application$6;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/samsung/multiscreen/Application$6;-><init>(Lcom/samsung/multiscreen/Application;Ljava/util/Map;Lcom/samsung/multiscreen/Result;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleApplicationMessage(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Application"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "id"

    .line 403
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "error"

    .line 404
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 407
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Application;->getCallback(Ljava/lang/String;)Lcom/samsung/multiscreen/Result;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 409
    invoke-direct {p0, v0, p1}, Lcom/samsung/multiscreen/Application;->doApplicationCallback(Lcom/samsung/multiscreen/Result;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private invokeMethod(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Result;",
            ")V"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->isDebug()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 359
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", params: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "Application"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-super {p0}, Lcom/samsung/multiscreen/Channel;->isConnected()Z

    move-result p4

    if-nez p4, :cond_1

    const-string p1, "Not connected"

    .line 364
    invoke-static {p1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/samsung/multiscreen/Application;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    return-void

    .line 369
    :cond_1
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "method"

    .line 371
    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    .line 372
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "params"

    .line 373
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {p4}, Lcom/samsung/multiscreen/util/JSONUtil;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getWebSocket()Lcom/koushikdutta/async/http/WebSocket;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/WebSocket;->send(Ljava/lang/String;)V

    return-void
.end method

.method private realDisconnect(Lcom/samsung/multiscreen/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-super {p0, p1}, Lcom/samsung/multiscreen/Channel;->disconnect(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getWebSocket()Lcom/koushikdutta/async/http/WebSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    new-instance v1, Lcom/samsung/multiscreen/Application$4;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/Application$4;-><init>(Lcom/samsung/multiscreen/Application;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 282
    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->close()V

    :cond_0
    return-void
.end method

.method public connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
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

    .line 235
    new-instance v0, Lcom/samsung/multiscreen/Application$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/multiscreen/Application$3;-><init>(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Result;)V

    .line 270
    invoke-super {p0, p1, v0}, Lcom/samsung/multiscreen/Channel;->connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method connectToPlay(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
    .locals 0
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

    .line 223
    invoke-super {p0, p1, p2}, Lcom/samsung/multiscreen/Channel;->connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/samsung/multiscreen/Application;->disconnect(ZLcom/samsung/multiscreen/Result;)V

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

    .line 292
    invoke-virtual {p0, v0, p1}, Lcom/samsung/multiscreen/Application;->disconnect(ZLcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public disconnect(ZLcom/samsung/multiscreen/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getClients()Lcom/samsung/multiscreen/Clients;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Clients;->size()I

    move-result v0

    .line 306
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Clients;->getHost()Lcom/samsung/multiscreen/Client;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    :cond_0
    if-ne v0, v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    .line 310
    :cond_2
    new-instance p1, Lcom/samsung/multiscreen/Application$5;

    invoke-direct {p1, p0, p2, v1}, Lcom/samsung/multiscreen/Application$5;-><init>(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Result;Lcom/samsung/multiscreen/Client;)V

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Application;->stop(Lcom/samsung/multiscreen/Result;)V

    .line 337
    iput-boolean v3, p0, Lcom/samsung/multiscreen/Application;->isStopping:Z

    return-void

    .line 341
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/Application;->realDisconnect(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public getInfo(Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getService()Lcom/samsung/multiscreen/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 119
    iget-boolean v1, p0, Lcom/samsung/multiscreen/Application;->webapp:Z

    if-eqz v1, :cond_0

    const-string v1, "webapplication"

    .line 120
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    const-string v1, "applications"

    .line 122
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    const-string v1, ""

    .line 124
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 126
    iget-boolean v1, p0, Lcom/samsung/multiscreen/Application;->securityMode:Z

    if-eqz v1, :cond_1

    .line 127
    invoke-super {p0, v0}, Lcom/samsung/multiscreen/Channel;->getSecureURL(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    :cond_1
    new-instance v1, Lcom/samsung/multiscreen/Application$1;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/Application$1;-><init>(Lcom/samsung/multiscreen/Application;)V

    invoke-static {v1, p1}, Lcom/samsung/multiscreen/HttpHelper;->createHttpCallback(Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;Lcom/samsung/multiscreen/Result;)Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;

    move-result-object p1

    const-string v1, "GET"

    .line 136
    invoke-static {v0, v1, p1}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    return-void
.end method

.method getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-boolean v1, p0, Lcom/samsung/multiscreen/Application;->webapp:Z

    if-eqz v1, :cond_0

    const-string v1, "url"

    goto :goto_0

    :cond_0
    const-string v1, "id"

    .line 217
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method getStartArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/multiscreen/Application;->startArgs:Ljava/util/Map;

    return-object v0
.end method

.method protected handleClientDisconnectMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    .line 455
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "id"

    .line 458
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getClients()Lcom/samsung/multiscreen/Clients;

    move-result-object v2

    .line 461
    invoke-virtual {v2, v0}, Lcom/samsung/multiscreen/Clients;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Client;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 463
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/multiscreen/Channel;->handleClientDisconnectMessage(Ljava/util/Map;)V

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {v0}, Lcom/samsung/multiscreen/Client;->isHost()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/samsung/multiscreen/Application;->isHostDisconnected:Ljava/lang/Boolean;

    monitor-enter p1

    const/4 v2, 0x1

    .line 467
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/multiscreen/Application;->isHostDisconnected:Ljava/lang/Boolean;

    .line 468
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 470
    :cond_1
    :goto_1
    iget-boolean p1, p0, Lcom/samsung/multiscreen/Application;->isStopping:Z

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Client;->isHost()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 471
    invoke-direct {p0, v1}, Lcom/samsung/multiscreen/Application;->realDisconnect(Lcom/samsung/multiscreen/Result;)V

    :cond_2
    return-void
.end method

.method protected handleMessage(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    const-string v0, "event"

    .line 384
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 391
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/multiscreen/Channel;->handleMessage(Ljava/lang/String;Ljava/util/Map;[B)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/Application;->handleApplicationMessage(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method protected handleReadyMessage(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 478
    iget-object p1, p0, Lcom/samsung/multiscreen/Application;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    if-eqz p1, :cond_0

    .line 479
    new-instance p1, Lcom/samsung/multiscreen/Application$7;

    invoke-direct {p1, p0}, Lcom/samsung/multiscreen/Application$7;-><init>(Lcom/samsung/multiscreen/Application;)V

    invoke-static {p1}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getOnReadyListener()Lcom/samsung/multiscreen/Channel$OnReadyListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 490
    new-instance v0, Lcom/samsung/multiscreen/Application$8;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Application$8;-><init>(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Channel$OnReadyListener;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public install(Lcom/samsung/multiscreen/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Application;->webapp:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getUID()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/samsung/multiscreen/Application;->registerCallback(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    const-string p1, "Unsupported method"

    .line 185
    invoke-static {p1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/multiscreen/Application;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getService()Lcom/samsung/multiscreen/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "applications"

    .line 188
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    .line 190
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 192
    iget-boolean v1, p0, Lcom/samsung/multiscreen/Application;->securityMode:Z

    if-eqz v1, :cond_1

    .line 193
    invoke-super {p0, v0}, Lcom/samsung/multiscreen/Channel;->getSecureURL(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    :cond_1
    new-instance v1, Lcom/samsung/multiscreen/Application$2;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/Application$2;-><init>(Lcom/samsung/multiscreen/Application;)V

    invoke-static {v1, p1}, Lcom/samsung/multiscreen/HttpHelper;->createHttpCallback(Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;Lcom/samsung/multiscreen/Result;)Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;

    move-result-object p1

    const-string v1, "PUT"

    .line 204
    invoke-static {v0, v1, p1}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    :goto_0
    return-void
.end method

.method invokeMethod(Ljava/lang/String;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/multiscreen/Result;",
            ")V"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getUID()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v0, p3}, Lcom/samsung/multiscreen/Application;->registerCallback(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    .line 353
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/multiscreen/Application;->invokeMethod(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/samsung/multiscreen/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/multiscreen/Application;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/multiscreen/Application;->isHostDisconnected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWebapp()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Application;->webapp:Z

    return v0
.end method

.method public setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/multiscreen/Application;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    return-void
.end method

.method public start(Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 148
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "library"

    const-string v2, "Android SDK"

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v2, "2.5.1"

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "modelNumber"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/samsung/multiscreen/Application;->startArgs:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "data"

    .line 156
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/multiscreen/Application;->webapp:Z

    if-eqz v1, :cond_1

    const-string v1, "ms.webapplication.start"

    goto :goto_0

    :cond_1
    const-string v1, "ms.application.start"

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/multiscreen/Application;->invokeMethod(Ljava/lang/String;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public stop(Lcom/samsung/multiscreen/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 170
    iget-boolean v1, p0, Lcom/samsung/multiscreen/Application;->webapp:Z

    if-eqz v1, :cond_0

    const-string v1, "ms.webapplication.stop"

    goto :goto_0

    :cond_0
    const-string v1, "ms.application.stop"

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/multiscreen/Application;->invokeMethod(Ljava/lang/String;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application(super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/multiscreen/Channel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onConnectListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Application;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStopping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/multiscreen/Application;->isStopping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHostDisconnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Application;->isHostDisconnected:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", webapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->isWebapp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Application;->getStartArgs()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
