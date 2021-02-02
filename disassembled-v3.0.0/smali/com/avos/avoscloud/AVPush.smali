.class public Lcom/avos/avoscloud/AVPush;
.super Ljava/lang/Object;
.source "AVPush.java"


# static fields
.field private static final DEVICE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final deviceTypeTag:Ljava/lang/String; = "deviceType"


# instance fields
.field private final channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cql:Ljava/lang/String;

.field private expirationTime:J

.field private expirationTimeInterval:J

.field private volatile notification:Lcom/avos/avoscloud/AVObject;

.field private production:Z

.field private final pushData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pushDate:Ljava/util/Date;

.field private pushQuery:Lcom/avos/avoscloud/AVQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/AVQuery<",
            "+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation
.end field

.field private final pushTarget:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    .line 22
    sget-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    const-string v1, "ios"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v0, Lcom/avos/avoscloud/AVPush;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    .line 50
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getQuery()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVPush;)Lcom/avos/avoscloud/AVObject;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object p0
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object p1
.end method

.method private expirationDateTime()Ljava/util/Date;
    .locals 3

    .line 347
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private postDataMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, "deviceType"

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    sget-object v3, Lcom/avos/avoscloud/AVPush;->DEVICE_TYPES:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AVQuery;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 181
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    iget-object v3, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 183
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t use AVQuery and Cloud query at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 192
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    const-string v2, "cql"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 195
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->pushChannelsData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    :cond_6
    iget-wide v1, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->expirationDateTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "expiration_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_7
    iget-wide v1, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    const-string v5, "push_time"

    cmp-long v6, v1, v3

    if-lez v6, :cond_8

    .line 202
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "expiration_interval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_8
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    if-eqz v1, :cond_9

    .line 206
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_9
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    if-nez v1, :cond_a

    const-string v1, "prod"

    const-string v2, "dev"

    .line 210
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_a
    iget-object v1, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private pushChannelsData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    const-string v1, "channels"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUtils;->createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static sendDataInBackground(Lorg/json/JSONObject;Lcom/avos/avoscloud/AVQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/avos/avoscloud/AVQuery<",
            "+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 124
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setData(Lorg/json/JSONObject;)V

    .line 125
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    .line 126
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPush;->sendInBackground()V

    return-void
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/SendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/avos/avoscloud/AVQuery<",
            "+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;",
            "Lcom/avos/avoscloud/SendCallback;",
            ")V"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 147
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setData(Lorg/json/JSONObject;)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    const/4 p0, 0x0

    .line 149
    invoke-direct {v0, p0, p2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    return-void
.end method

.method private sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V
    .locals 4

    const-string v0, "push"

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPush;->postDataMap()Ljava/util/Map;

    move-result-object v1

    .line 228
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->pushInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/AVPush$1;

    invoke-direct {v3, p0, p2}, Lcom/avos/avoscloud/AVPush$1;-><init>(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/SendCallback;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/SendCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    :cond_0
    const-string p2, "AVPush sent exception"

    .line 250
    invoke-static {p2, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery<",
            "+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .line 269
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 270
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setMessage(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 272
    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/SendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery<",
            "+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;",
            "Lcom/avos/avoscloud/SendCallback;",
            ")V"
        }
    .end annotation

    .line 291
    new-instance v0, Lcom/avos/avoscloud/AVPush;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVPush;-><init>()V

    .line 292
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPush;->setMessage(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPush;->setQuery(Lcom/avos/avoscloud/AVQuery;)V

    const/4 p0, 0x0

    .line 294
    invoke-direct {v0, p0, p2}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    return-void
.end method


# virtual methods
.method public clearExpiration()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    .line 96
    iput-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    return-void
.end method

.method public getChannelSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    return-wide v0
.end method

.method public getExpirationTimeInterval()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    return-wide v0
.end method

.method public getNotification()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getProductionMode()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    return v0
.end method

.method public getPushData()Ljava/util/Map;
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

    .line 88
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    return-object v0
.end method

.method public getPushDate()Ljava/util/Date;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPushQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery<",
            "+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    return-object v0
.end method

.method public getPushTarget()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    return-object v0
.end method

.method public send()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    return-void
.end method

.method public sendInBackground()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    return-void
.end method

.method public sendInBackground(Lcom/avos/avoscloud/SendCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 304
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 314
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->channelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setCloudQuery(Ljava/lang/String;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->cql:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/Map;)V
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

    .line 324
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 4

    .line 333
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 338
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 342
    new-instance v0, Lcom/avos/avoscloud/AVRuntimeException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setExpirationTime(J)V
    .locals 0

    .line 367
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPush;->expirationTime:J

    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 0

    .line 378
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPush;->expirationTimeInterval:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "alert"

    .line 387
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUtils;->createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 388
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush;->pushData:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setProductionMode(Z)V
    .locals 0

    .line 453
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVPush;->production:Z

    return-void
.end method

.method public setPushDate(Ljava/util/Date;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushDate:Ljava/util/Date;

    return-void
.end method

.method public setPushToAndroid(Z)V
    .locals 1

    const-string v0, "android"

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setPushToIOS(Z)V
    .locals 1

    const-string v0, "ios"

    if-eqz p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setPushToWindowsPhone(Z)V
    .locals 1

    const-string v0, "wp"

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushTarget:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setQuery(Lcom/avos/avoscloud/AVQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery<",
            "+",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;)V"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush;->pushQuery:Lcom/avos/avoscloud/AVQuery;

    return-void
.end method
