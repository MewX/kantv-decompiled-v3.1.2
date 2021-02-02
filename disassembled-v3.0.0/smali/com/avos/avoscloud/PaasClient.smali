.class public Lcom/avos/avoscloud/PaasClient;
.super Ljava/lang/Object;
.source "PaasClient.java"


# static fields
.field static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_FAIL_STRING:Ljava/lang/String; = "request failed!!!"

.field static REQUEST_STATIS_HEADER:Ljava/lang/String; = "X-Android-RS"

.field private static apiKeyField:Ljava/lang/String; = null

.field private static applicationIdField:Ljava/lang/String; = null

.field private static fileModifiedDateComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static internalObjectsForEventuallySave:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObjectReferenceCount;",
            ">;"
        }
    .end annotation
.end field

.field private static lastModify:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastModifyEnabled:Z = false

.field public static final sdkVersion:Ljava/lang/String; = "v4.6.4"

.field private static serviceClientMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/PaasClient;",
            ">;"
        }
    .end annotation
.end field

.field static sessionTokenField:Ljava/lang/String; = null

.field private static final userAgent:Ljava/lang/String; = "AVOS Cloud android-v4.6.4 SDK"


# instance fields
.field private final apiVersion:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;

.field private currentUser:Lcom/avos/avoscloud/AVUser;

.field private defaultACL:Lcom/avos/avoscloud/AVACL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 51
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    .line 813
    new-instance v0, Lcom/avos/avoscloud/PaasClient$5;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient$5;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    const-string v0, "1.1"

    .line 108
    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useUruluServer()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 23
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    return-object v0
.end method

.method private archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 530
    new-instance v0, Ljava/io/File;

    .line 531
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {p4, p5, p1, p2, p3}, Lcom/avos/avoscloud/AVUtils;->getArchiveRequestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 534
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "method"

    .line 535
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "relativePath"

    .line 536
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "paramString"

    .line 537
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "objectId"

    .line 538
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "_internalId"

    .line 539
    invoke-interface {v1, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->toJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 543
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\ndid save to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private batchRequest(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "requests"

    .line 395
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private batchSaveRelativeUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "batch/save"

    return-object v0
.end method

.method private batchUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 191
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s/%s/batch"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearLastModifyCache()V
    .locals 4

    .line 730
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 731
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 733
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/avos/avoscloud/AVCacheManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static cloudInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .line 75
    invoke-static {}, Lcom/avos/avoscloud/AppRouterManager;->getInstance()Lcom/avos/avoscloud/AppRouterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AppRouterManager;->getEngineServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Ljava/lang/String;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method private createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;
    .locals 1

    .line 200
    new-instance v0, Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    return-object v0
.end method

.method private createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;
    .locals 1

    .line 206
    new-instance v0, Lcom/avos/avoscloud/PostHttpResponseHandler;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/PostHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-object v0
.end method

.method protected static extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_1

    .line 757
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 758
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDebugClientKey()Ljava/lang/String;
    .locals 1

    .line 658
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "YourAppKey"

    return-object v0
.end method

.method public static getLastModify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 714
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 717
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private handleArchivedRequest(Ljava/io/File;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method private handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 11

    .line 557
    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 560
    const-class v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 561
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "method"

    .line 562
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "relativePath"

    .line 563
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v2, "paramString"

    .line 564
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v2, "objectId"

    .line 565
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_internalId"

    .line 566
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 567
    new-instance v8, Lcom/avos/avoscloud/PaasClient$4;

    invoke-direct {v8, p0, p3, p1}, Lcom/avos/avoscloud/PaasClient$4;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/io/File;)V

    if-nez v1, :cond_0

    .line 598
    new-instance p1, Lcom/avos/avoscloud/AVRuntimeException;

    const-string p3, "Null method."

    invoke-direct {p1, p3}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {v8, p1, p3}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const-string p1, "post"

    .line 600
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 601
    invoke-virtual {p0, v4, v5, p2, v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    :cond_1
    const-string p1, "put"

    .line 602
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v7, 0x0

    move-object v3, p0

    move v6, p2

    move-object v9, v2

    move-object v10, v0

    .line 603
    invoke-virtual/range {v3 .. v10}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "delete"

    .line 604
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v3, p0

    move v5, p2

    move-object v6, v8

    move-object v7, v2

    move-object v8, v0

    .line 605
    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private headerString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 666
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 668
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, " -H \"%s: %s\" -H \"%s: %s\" "

    .line 667
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 671
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 672
    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, " -H \"%s: %s\" "

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, " -H \"Content-Type: application/json\" "

    .line 676
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static isJSONResponse(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 749
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLastModifyEnabled()Z
    .locals 1

    .line 721
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    return v0
.end method

.method public static lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 5

    .line 739
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 740
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static pushInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .line 71
    invoke-static {}, Lcom/avos/avoscloud/AppRouterManager;->getInstance()Lcom/avos/avoscloud/AppRouterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AppRouterManager;->getPushServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Ljava/lang/String;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method protected static registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 784
    monitor-enter p0

    .line 785
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->increment()I

    goto :goto_0

    .line 789
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObjectReferenceCount;-><init>(Lcom/avos/avoscloud/AVObject;)V

    .line 790
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public static removeLastModifyForUrl(Ljava/lang/String;)V
    .locals 1

    .line 779
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public static setLastModifyEnabled(Z)V
    .locals 0

    .line 725
    sput-boolean p0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    return-void
.end method

.method protected static sharedInstance(Ljava/lang/String;)Lcom/avos/avoscloud/PaasClient;
    .locals 2

    .line 58
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PaasClient;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/avos/avoscloud/PaasClient;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/PaasClient;-><init>(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private signRequest()Ljava/lang/String;
    .locals 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getCurrentTimestamp()J

    move-result-wide v1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static statistisInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .line 79
    invoke-static {}, Lcom/avos/avoscloud/AppRouterManager;->getInstance()Lcom/avos/avoscloud/AppRouterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AppRouterManager;->getStatsServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Ljava/lang/String;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method public static storageInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .line 67
    invoke-static {}, Lcom/avos/avoscloud/AppRouterManager;->getInstance()Lcom/avos/avoscloud/AppRouterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AppRouterManager;->getStorageServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Ljava/lang/String;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method protected static unregisterEvtuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 798
    monitor-enter p0

    .line 799
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    .line 800
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    .line 801
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    .line 802
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    :goto_0
    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->desc()I

    move-result v0

    if-gtz v0, :cond_1

    .line 805
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public static updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 767
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 771
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 772
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static useAVCloudCN()V
    .locals 1

    const-string v0, "X-LC-Id"

    .line 165
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    const-string v0, "X-LC-Key"

    .line 166
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    const-string v0, "X-LC-Session"

    .line 167
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    return-void
.end method

.method public static useAVCloudUS()V
    .locals 1

    const-string v0, "X-LC-Id"

    .line 159
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    const-string v0, "X-LC-Key"

    .line 160
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    const-string v0, "X-LC-Session"

    .line 161
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    return-void
.end method

.method public static useLocalStg()V
    .locals 1

    const-string v0, "X-LC-Id"

    .line 171
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    const-string v0, "X-LC-Key"

    .line 172
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    const-string v0, "X-LC-Session"

    .line 173
    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method assembleBatchOpsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PUT"

    .line 387
    invoke-virtual {p0, v2, p2, v1}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "method"

    .line 370
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "path"

    .line 371
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "body"

    .line 372
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string p1, "params"

    .line 374
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 177
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s/%s/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;
    .locals 1

    .line 181
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVRequestParams;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/AVRequestParams;->getWholeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 493
    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    :try_start_0
    const-string v1, "delete"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    .line 500
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 501
    invoke-direct {p0, p1, p2, p4}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    .line 505
    invoke-virtual {p0, p5, p1, p5}, Lcom/avos/avoscloud/PaasClient;->dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    invoke-direct {p0, p4}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object p3

    .line 508
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object p6

    .line 509
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p4, :cond_2

    .line 510
    invoke-virtual {p4}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p5, v1}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 511
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    .line 513
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p6, p1, p2, p3}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 516
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    :goto_1
    return-void
.end method

.method public dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 693
    new-array v0, v0, [Ljava/lang/Object;

    .line 694
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "curl -X DELETE %s  -d \'%s\' %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dumpHttpGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    .line 640
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    if-eqz p2, :cond_1

    const/4 v7, 0x7

    .line 645
    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v8, v7, v5

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, v7, v4

    sget-object v4, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v4, v7, v3

    .line 647
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    aput-object p2, v7, p3

    aput-object p1, v7, v6

    const-string p1, "curl -X GET -H \"%s: %s\" -H \"%s: %s\" -H \"%s\" -G --data-urlencode \'%s\' %s"

    .line 646
    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 650
    :cond_1
    new-array p2, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v6, p2, v5

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, p2, v4

    sget-object v4, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v4, p2, v3

    .line 652
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    aput-object p1, p2, p3

    const-string p1, "curl -X GET -H \"%s: %s\" -H \"%s: %s\" -H \"%s\" %s"

    .line 651
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 654
    :goto_1
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 687
    new-array v0, v0, [Ljava/lang/Object;

    .line 688
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "curl -X POST %s  -d \'%s\' %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 681
    new-array v0, v0, [Ljava/lang/Object;

    .line 682
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "curl -X PUT %s  -d \' %s \' %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 683
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    return-void
.end method

.method generateQueryPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;
    .locals 0

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method getDefaultACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 225
    invoke-virtual/range {p0 .. p2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual/range {p0 .. p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {v4}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    sget-object v1, Lcom/avos/avoscloud/PaasClient$6;->$SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy:[I

    invoke-virtual/range {p6 .. p6}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 234
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto/16 :goto_0

    .line 276
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/PaasClient$3;

    move-object v6, v2

    move-object v7, p0

    move-object/from16 v8, p5

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    invoke-direct/range {v6 .. v13}, Lcom/avos/avoscloud/PaasClient$3;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-object p1, v1

    move-object/from16 p2, v4

    move-wide/from16 p3, p7

    move-object/from16 p5, v5

    move-object/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 258
    :cond_1
    new-instance v11, Lcom/avos/avoscloud/PaasClient$2;

    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/PaasClient$2;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/PaasClient$1;

    move-object v6, v2

    move-object v7, p0

    move-object/from16 v8, p5

    move-object v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    invoke-direct/range {v6 .. v13}, Lcom/avos/avoscloud/PaasClient$1;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-object p1, v1

    move-object/from16 p2, v4

    move-wide/from16 p3, p7

    move-object/from16 p5, v5

    move-object/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v1

    move-object v2, v4

    move-wide/from16 v3, p7

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    :goto_0
    return-object v0
.end method

.method public getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .line 325
    sget-object v6, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    return-void
.end method

.method public getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 305
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 307
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/avos/avoscloud/PaasClient;->updateHeaderForPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;Ljava/util/Map;)V

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-direct {p0, p5, p6, v0}, Lcom/avos/avoscloud/PaasClient;->createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object p6

    .line 312
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVRequestParams;->getDumpQueryString()Ljava/lang/String;

    move-result-object p2

    .line 313
    :goto_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/avos/avoscloud/PaasClient;->dumpHttpGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 316
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object p1

    .line 317
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 318
    invoke-virtual {p2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    if-eqz p5, :cond_3

    .line 319
    invoke-virtual {p5}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, 0x1

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    invoke-virtual {p0, p2, p4, p5}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 320
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p6}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V

    return-void
.end method

.method public handleAllArchivedRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->handleAllArchivedRequest(Z)V

    return-void
.end method

.method protected handleAllArchivedRequest(Z)V
    .locals 5

    .line 618
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 620
    array-length v1, v0

    if-lez v1, :cond_2

    .line 621
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 622
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 623
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    invoke-direct {p0, v3, p1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;Z)V

    goto :goto_1

    .line 625
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is a dir"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public postBatchObject(Ljava/util/List;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchUrl()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->batchRequest(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 405
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 406
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 407
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0, p3, v0, p1}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_0
    invoke-direct {p0, p4}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object v1

    .line 411
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v2

    .line 412
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 413
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v4, Lcom/avos/avoscloud/AVHttpClient;->JSON:Lokhttp3/MediaType;

    invoke-static {v4, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    if-eqz p4, :cond_1

    .line 414
    invoke-virtual {p4}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v3, p3, p1}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 416
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v2, p1, p2, v1}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 418
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    :goto_1
    return-void
.end method

.method public postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 428
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "requests"

    .line 429
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_0

    const-string v3, "post"

    .line 433
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 434
    invoke-direct {p0, p1, p2, p5}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 438
    invoke-virtual {p0, p4, p1, v5}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_1
    invoke-direct {p0, p5}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object p3

    .line 441
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object p6

    .line 442
    new-instance p7, Lokhttp3/Request$Builder;

    invoke-direct {p7}, Lokhttp3/Request$Builder;-><init>()V

    .line 443
    invoke-virtual {p7, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v0, Lcom/avos/avoscloud/AVHttpClient;->JSON:Lokhttp3/MediaType;

    invoke-static {v0, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    if-eqz p5, :cond_2

    .line 444
    invoke-virtual {p5}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p7, p4, p1}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 445
    invoke-virtual {p7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p6, p1, p2, p3}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 448
    invoke-direct {p0, p1, p5}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    :goto_1
    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 459
    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_0

    :try_start_0
    const-string v1, "post"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p7

    move-object v5, p8

    .line 472
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 473
    invoke-direct {p0, p1, p4, p6}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1

    .line 475
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    .line 477
    invoke-virtual {p0, p5, p1, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_1
    invoke-direct {p0, p6}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object p5

    .line 480
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object p7

    .line 481
    new-instance p8, Lokhttp3/Request$Builder;

    invoke-direct {p8}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p6, :cond_2

    .line 482
    invoke-virtual {p6}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p8, p3, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 483
    invoke-virtual {p8, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object p3, Lcom/avos/avoscloud/AVHttpClient;->JSON:Lokhttp3/MediaType;

    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 484
    invoke-virtual {p8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p7, p1, p4, p5}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 487
    invoke-direct {p0, p1, p6}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    :goto_1
    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 454
    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 464
    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 331
    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_0

    :try_start_0
    const-string v1, "put"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p7

    move-object v5, p8

    .line 340
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 341
    invoke-direct {p0, p1, p3, p6}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-direct {p0, p6}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/avos/avoscloud/AsyncHttpResponseHandler;

    move-result-object p4

    .line 345
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p7

    if-eqz p7, :cond_1

    .line 346
    invoke-virtual {p0, p5, p1, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object p7

    .line 349
    new-instance p8, Lokhttp3/Request$Builder;

    invoke-direct {p8}, Lokhttp3/Request$Builder;-><init>()V

    .line 350
    invoke-virtual {p8, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v0, Lcom/avos/avoscloud/AVHttpClient;->JSON:Lokhttp3/MediaType;

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    if-eqz p6, :cond_2

    .line 351
    invoke-virtual {p6}, Lcom/avos/avoscloud/GenericObjectCallback;->isRequestStatisticNeed()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p8, p5, p1}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V

    .line 352
    invoke-virtual {p8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p7, p1, p3, p4}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 355
    invoke-direct {p0, p1, p6}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    :goto_1
    return-void
.end method

.method setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    return-void
.end method

.method setDefaultACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    return-void
.end method

.method public updateHeaderForPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVRequestParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 702
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object p1

    .line 704
    invoke-static {p1}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 706
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "If-Modified-Since"

    .line 708
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected updateHeaders(Lokhttp3/Request$Builder;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/avos/avoscloud/AVCloud;->isProductionMode()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v2, "X-LC-Prod"

    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 127
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 128
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 128
    :goto_1
    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 132
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "application/json"

    const-string v2, "Accept"

    .line 133
    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v2, "Content-Type"

    .line 134
    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "User-Agent"

    const-string v2, "AVOS Cloud android-v4.6.4 SDK"

    .line 135
    invoke-virtual {p1, v0, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 136
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->signRequest()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-LC-Sign"

    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-eqz p2, :cond_2

    .line 140
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 146
    sget-object p2, Lcom/avos/avoscloud/PaasClient;->REQUEST_STATIS_HEADER:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_3
    return-void
.end method

.method public useUruluServer()V
    .locals 1

    .line 151
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->useAVCloudCN()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->useAVCloudUS()V

    :goto_0
    return-void
.end method

.method public userHeaderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
