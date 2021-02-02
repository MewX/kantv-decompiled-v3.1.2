.class public Lcom/avos/avoscloud/AVLiveQuery;
.super Ljava/lang/Object;
.source "AVLiveQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVLiveQuery$EventType;
    }
.end annotation


# static fields
.field static final ACTION_LIVE_QUERY_LOGIN:Ljava/lang/String; = "action_live_query_login"

.field static final LIVEQUERY_PRIFIX:Ljava/lang/String; = "live_query_"

.field private static final OBJECT:Ljava/lang/String; = "object"

.field private static final OP:Ljava/lang/String; = "op"

.field private static final QUERY:Ljava/lang/String; = "query"

.field private static final QUERY_ID:Ljava/lang/String; = "query_id"

.field private static final SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field private static final SUBSCRIBE_ID:Ljava/lang/String; = "id"

.field private static final SUBSCRIBE_PATH:Ljava/lang/String; = "LiveQuery/subscribe"

.field private static final UNSUBSCRIBE_PATH:Ljava/lang/String; = "LiveQuery/unsubscribe"

.field private static final UPDATE_KEYS:Ljava/lang/String; = "updatedKeys"

.field private static liveQuerySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/avos/avoscloud/AVLiveQuery;",
            ">;"
        }
    .end annotation
.end field

.field private static subscribeId:Ljava/lang/String;


# instance fields
.field private eventHandler:Lcom/avos/avoscloud/AVLiveQueryEventHandler;

.field private query:Lcom/avos/avoscloud/AVQuery;

.field private queryId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery;->liveQuerySet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lcom/avos/avoscloud/AVQuery;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery;->query:Lcom/avos/avoscloud/AVQuery;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVLiveQuery;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/avos/avoscloud/AVLiveQuery;->queryId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVLiveQuery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery;->queryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 26
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery;->liveQuerySet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVLiveQuery;Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVLiveQuery;->loginLiveQuery(Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVLiveQuery;)Lcom/avos/avoscloud/AVLiveQueryEventHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/avos/avoscloud/AVLiveQuery;->eventHandler:Lcom/avos/avoscloud/AVLiveQueryEventHandler;

    return-object p0
.end method

.method private getSessionToken()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getSubscribeId()Ljava/lang/String;
    .locals 5

    .line 197
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery;->subscribeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "subscribeId"

    const-string v2, "livequery_keyzone"

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery;->subscribeId:Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery;->subscribeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVLiveQuery;->subscribeId:Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    sget-object v3, Lcom/avos/avoscloud/AVLiveQuery;->subscribeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVLiveQuery;->subscribeId:Ljava/lang/String;

    return-object v0
.end method

.method public static initWithQuery(Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVLiveQuery;
    .locals 1

    if-eqz p0, :cond_0

    .line 91
    new-instance v0, Lcom/avos/avoscloud/AVLiveQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVLiveQuery;-><init>(Lcom/avos/avoscloud/AVQuery;)V

    return-object v0

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "query cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loginLiveQuery(Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
    .locals 5

    .line 143
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    .line 144
    new-instance v1, Lcom/avos/avoscloud/AVLiveQuery$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/avos/avoscloud/AVLiveQuery$2;-><init>(Lcom/avos/avoscloud/AVLiveQuery;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V

    .line 153
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v2, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "live_query_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 156
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_live_query_login"

    .line 157
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-direct {p0}, Lcom/avos/avoscloud/AVLiveQuery;->getSubscribeId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "conversation.requestId"

    .line 159
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static processData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/avos/avoscloud/AVLiveQuery$4;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVLiveQuery$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setEventHandler(Lcom/avos/avoscloud/AVLiveQueryEventHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery;->eventHandler:Lcom/avos/avoscloud/AVLiveQueryEventHandler;

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "eventHandler can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscribeInBackground(Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/AVLiveQuery;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/avos/avoscloud/AVLiveQuery;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "query"

    .line 103
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-direct {p0}, Lcom/avos/avoscloud/AVLiveQuery;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sessionToken"

    .line 106
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVLiveQuery;->getSubscribeId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/AVLiveQuery$1;

    invoke-direct {v3, p0, p1}, Lcom/avos/avoscloud/AVLiveQuery$1;-><init>(Lcom/avos/avoscloud/AVLiveQuery;Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V

    const-string p1, "LiveQuery/subscribe"

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public unsubscribeInBackground(Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
    .locals 4

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    invoke-direct {p0}, Lcom/avos/avoscloud/AVLiveQuery;->getSubscribeId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/avos/avoscloud/AVLiveQuery;->queryId:Ljava/lang/String;

    const-string v2, "query_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVLiveQuery$3;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/AVLiveQuery$3;-><init>(Lcom/avos/avoscloud/AVLiveQuery;Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V

    const-string p1, "LiveQuery/unsubscribe"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method
