.class public Lcom/avos/avoscloud/AVObject;
.super Ljava/lang/Object;
.source "AVObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVObject$AVObjectCreator;,
        Lcom/avos/avoscloud/AVObject$KeyValueCallback;,
        Lcom/avos/avoscloud/AVObject$FetchObjectCallback;
    }
.end annotation


# static fields
.field public static final CREATED_AT:Ljava/lang/String; = "createdAt"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;

.field public static final INVALID_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;

.field public static final OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final SUB_CLASSES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATED_AT:Ljava/lang/String; = "updatedAt"

.field static final UUID_LEN:I


# instance fields
.field protected transient acl:Lcom/avos/avoscloud/AVACL;

.field private className:Ljava/lang/String;

.field protected createdAt:Ljava/lang/String;

.field private volatile fetchWhenSave:Z

.field instanceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isDataReady:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field protected objectId:Ljava/lang/String;

.field operationQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation
.end field

.field protected requestStatistic:Z

.field private volatile transient running:Z

.field serverData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field tempDataForServerSaving:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation
.end field

.field protected updatedAt:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 65
    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 68
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/avos/avoscloud/AVObject;->UUID_LEN:I

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    .line 1409
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    .line 1412
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "createdAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1413
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "updatedAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1414
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "objectId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1415
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "ACL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2446
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->requestStatistic:Z

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2408
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 2409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 2410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    .line 2411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    .line 2412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 2413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2414
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2415
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2416
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2418
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 2419
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2420
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2423
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 356
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 357
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 358
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-void
.end method

.method private static _saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .line 1652
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1653
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1654
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVObject;

    .line 1655
    invoke-direct {v3}, Lcom/avos/avoscloud/AVObject;->checkCircleReference()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_1

    .line 1656
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->circleException()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void

    .line 1659
    :cond_2
    invoke-direct {v3}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1660
    invoke-direct {v3}, Lcom/avos/avoscloud/AVObject;->getFilesToSave()Ljava/util/List;

    move-result-object v3

    .line 1661
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1662
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1670
    :cond_3
    new-instance v5, Lcom/avos/avoscloud/AVObject$17;

    invoke-direct {v5, p1, p2}, Lcom/avos/avoscloud/AVObject$17;-><init>(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1697
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1698
    new-instance v2, Lcom/avos/avoscloud/AVObject$18;

    invoke-direct {v2, p1, v1, p0, v5}, Lcom/avos/avoscloud/AVObject$18;-><init>(Ljava/util/List;Ljava/util/LinkedList;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-static {v0, p0, v2}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V

    goto :goto_2

    .line 1712
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    const/4 v2, 0x1

    .line 1713
    iput-boolean v2, v0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 1714
    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    goto :goto_1

    .line 1716
    :cond_5
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    if-eqz p2, :cond_6

    .line 1721
    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private _saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 1

    .line 1856
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1857
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    .line 1858
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->buildMatchQueryParams(Lcom/avos/avoscloud/AVSaveOption;Ljava/util/LinkedList;)V

    .line 1859
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method private _saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1852
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->_saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return p1
.end method

.method static synthetic access$302(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    return p1
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->rollbackDataToOperationQueue()V

    return-void
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVObject;->_saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-object p0
.end method

.method private addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 2296
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2297
    new-instance v0, Lcom/avos/avoscloud/AVObject$24;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/avos/avoscloud/AVObject$24;-><init>(Lcom/avos/avoscloud/AVObject;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2308
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private buildMatchQueryParams(Lcom/avos/avoscloud/AVSaveOption;Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVSaveOption;",
            "Ljava/util/LinkedList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1864
    iget-object v0, p1, Lcom/avos/avoscloud/AVSaveOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p1, Lcom/avos/avoscloud/AVSaveOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    iget-object v0, v0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1867
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    const/4 v1, 0x0

    .line 1868
    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 1869
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    .line 1870
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "where"

    .line 1871
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    :cond_1
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/avos/avoscloud/AVSaveOption;->fetchWhenSave:Z

    if-eqz p1, :cond_3

    .line 1874
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "fetchWhenSave"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "method"

    .line 1876
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "params"

    .line 1877
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private buildParameterForNonSavedObject(Ljava/util/List;)V
    .locals 2

    .line 2129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2130
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->buildBatchParameterForNonSavedObject(Ljava/util/List;Ljava/util/List;)V

    .line 2131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 2132
    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2476
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2479
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVObject;

    .line 2480
    iget-object v0, p1, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2481
    iget-object v0, p1, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2482
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    iput-object v0, p1, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    .line 2483
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    iput-object v0, p1, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    .line 2484
    iget-object p0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iput-object p0, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 2485
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    return-object p1
.end method

.method private checkCircleReference()Z
    .locals 1

    .line 2141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private checkCircleReference(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2150
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2151
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2160
    instance-of v5, v4, Lcom/avos/avoscloud/AVObject;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_1

    .line 2161
    check-cast v4, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v4, p1}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2165
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 2152
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Found a circular dependency while saving"

    .line 2153
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return v1

    :cond_4
    return v2
.end method

.method private checkKey(Ljava/lang/String;)Z
    .locals 2

    .line 1419
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "_"

    .line 1422
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1425
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal key name:`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`,please use setter/getter for it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    .line 1427
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 1423
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key should not start with \'_\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1420
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Blank key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 447
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 500
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 501
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 505
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const-string v0, "Create subclass instance failed."

    invoke-direct {p1, v0, p0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 477
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    return-object v0
.end method

.method private delete(ZZLcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 8

    .line 711
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2

    .line 713
    iget-object v1, p3, Lcom/avos/avoscloud/AVDeleteOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    if-eqz v1, :cond_2

    .line 714
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/avos/avoscloud/AVDeleteOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/4 p2, 0x0

    const-string p3, "AVObject class inconsistant with AVQuery in AVDeleteOption"

    invoke-direct {p1, p2, p3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void

    .line 719
    :cond_0
    iget-object p3, p3, Lcom/avos/avoscloud/AVDeleteOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    iget-object p3, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {p3}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object p3

    .line 720
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    .line 721
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "where"

    .line 722
    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_1
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->addQueryParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 727
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v5, Lcom/avos/avoscloud/AVObject$4;

    invoke-direct {v5, p0, p4}, Lcom/avos/avoscloud/AVObject$4;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 742
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v7

    move v3, p1

    move v4, p2

    .line 727
    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 551
    new-instance v0, Lcom/avos/avoscloud/AVObject$2;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject$2;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 564
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method private static deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 584
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_2

    .line 589
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVObject;

    if-eqz p1, :cond_1

    .line 590
    invoke-virtual {p1, p3}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    .line 597
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_3

    .line 602
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 603
    :cond_3
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    if-eqz p1, :cond_4

    .line 607
    invoke-static {v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v3, ","

    .line 610
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 604
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The objects class name must be the same."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 598
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid AVObject, the class name or objectId is blank."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 615
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVObject$3;

    invoke-direct {v4, p3}, Lcom/avos/avoscloud/AVObject$3;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    .line 585
    :cond_9
    :goto_3
    invoke-virtual {p3, v0, v0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public static deleteAllInBackground(Ljava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 579
    invoke-static {v0, v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 777
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 778
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 779
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->fetch()Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 791
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 792
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 793
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->fetchIfNeeded()Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    new-instance v1, Lcom/avos/avoscloud/AVObject$6;

    invoke-direct {v1, v0, p1}, Lcom/avos/avoscloud/AVObject$6;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    const/4 p1, 0x1

    invoke-static {p1, p0, v1}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    new-instance v1, Lcom/avos/avoscloud/AVObject$7;

    invoke-direct {v1, v0, p1}, Lcom/avos/avoscloud/AVObject$7;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    const/4 p1, 0x0

    invoke-static {p1, p0, v1}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method private static fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .line 845
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 846
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 847
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVObject;

    if-eqz p0, :cond_2

    .line 848
    invoke-virtual {v3}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_0

    .line 858
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    invoke-virtual {p2, v4, v0, v3}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 849
    :cond_2
    :goto_1
    new-instance v6, Lcom/avos/avoscloud/AVObject$8;

    invoke-direct {v6, p2, v1, v0}, Lcom/avos/avoscloud/AVObject$8;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-direct {v3, v5, v4, v6}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0

    .line 862
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_4

    if-eqz p2, :cond_4

    .line 863
    invoke-virtual {p2, v5, v5, v4}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    :cond_4
    return-void
.end method

.method private fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .line 943
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x68

    const-string p2, "Missing objectId"

    .line 946
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    .line 947
    invoke-virtual {p3, v1, p1}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 951
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 952
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "include"

    .line 953
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 956
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    invoke-direct {v8, p0, p3, v1}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v6, p1

    .line 955
    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method private findArray(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2235
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2239
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2240
    :try_start_2
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v1

    :catch_1
    move-exception p1

    .line 2243
    :goto_1
    sget-object p2, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string p3, "find array failed."

    invoke-static {p2, p3, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private getBatchParams()Ljava/util/Map;
    .locals 3

    .line 2120
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    if-eqz v0, :cond_0

    .line 2121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2122
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "new"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFilesToSave()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;"
        }
    .end annotation

    .line 1815
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1816
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1817
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/ops/AVOp;

    .line 1818
    invoke-interface {v2}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1820
    instance-of v3, v2, Lcom/avos/avoscloud/AVObject;

    if-eqz v3, :cond_1

    .line 1821
    check-cast v2, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVObject;->getFilesToSave()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1822
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 1823
    const-class v3, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1824
    check-cast v2, Lcom/avos/avoscloud/AVFile;

    .line 1825
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1826
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getParsedList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 184
    invoke-static {v1}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getParsedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method static getSubClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method static getSubClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 313
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 315
    :cond_0
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "_Role"

    return-object p0

    .line 317
    :cond_1
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-static {}, Lcom/avos/avoscloud/AVStatus;->userClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 320
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private init()V
    .locals 3

    const-string v0, ""

    .line 363
    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    .line 365
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Lcom/avos/avoscloud/AVACL;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/AVACL;-><init>(Lcom/avos/avoscloud/AVACL;)V

    iput-object v1, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    .line 368
    :cond_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    return-void
.end method

.method private mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 2096
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2097
    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static parseAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVObject;

    .line 460
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    :cond_0
    return-object p0
.end method

.method private static parseObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 158
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 159
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 160
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getParsedList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 161
    :cond_2
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_3

    .line 162
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 163
    :cond_3
    instance-of v0, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_4

    .line 164
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 165
    :cond_4
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 166
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 167
    :cond_5
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 168
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 169
    :cond_6
    instance-of v0, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_7

    .line 170
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 171
    :cond_7
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 173
    :cond_8
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_9

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method private parseObjectValue(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2040
    instance-of v0, p4, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    .line 2041
    check-cast p4, Lcom/avos/avoscloud/AVObject;

    .line 2042
    invoke-static {p4, p5}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 2043
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2044
    invoke-direct {p4}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2045
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2047
    :cond_0
    instance-of p1, p4, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz p1, :cond_1

    .line 2048
    check-cast p4, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2049
    :cond_1
    instance-of p1, p4, Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 2050
    check-cast p4, Ljava/util/Date;

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2051
    :cond_2
    instance-of p1, p4, [B

    if-eqz p1, :cond_3

    .line 2052
    check-cast p4, [B

    check-cast p4, [B

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2053
    :cond_3
    instance-of p1, p4, Lcom/avos/avoscloud/AVFile;

    if-eqz p1, :cond_4

    .line 2054
    check-cast p4, Lcom/avos/avoscloud/AVFile;

    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2056
    :cond_4
    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method private parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v0, p3

    .line 2063
    invoke-interface/range {p3 .. p3}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object v4

    .line 2065
    instance-of v1, v0, Lcom/avos/avoscloud/ops/CollectionOp;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/avos/avoscloud/ops/IncrementOp;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/avos/avoscloud/ops/DeleteOp;

    if-nez v1, :cond_0

    move-object v0, p0

    move-object/from16 v1, p5

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v5, p2

    .line 2066
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVObject;->parseObjectValue(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2067
    :cond_0
    instance-of v1, v0, Lcom/avos/avoscloud/ops/IncrementOp;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/avos/avoscloud/ops/AddOp;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/avos/avoscloud/ops/RemoveOp;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/avos/avoscloud/ops/RemoveRelationOp;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/avos/avoscloud/ops/AddUniqueOp;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/avos/avoscloud/ops/DeleteOp;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2071
    :cond_1
    instance-of v1, v0, Lcom/avos/avoscloud/ops/CompoundOp;

    if-eqz v1, :cond_4

    .line 2073
    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v0}, Lcom/avos/avoscloud/ops/CompoundOp;->getValues()Ljava/util/List;

    move-result-object v9

    .line 2074
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2075
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/avos/avoscloud/ops/AVOp;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 2076
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVObject;->parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    :cond_2
    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 2079
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 2080
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/avos/avoscloud/ops/AVOp;

    .line 2081
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2082
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    move-object v4, v13

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 2084
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/AVObject;->parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    .line 2087
    invoke-direct {p0, v12, v13, v10}, Lcom/avos/avoscloud/AVObject;->wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVObject;->mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2070
    :cond_3
    :goto_1
    invoke-interface/range {p3 .. p3}, Lcom/avos/avoscloud/ops/AVOp;->encodeOp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    :goto_2
    return-object v8
.end method

.method private processOperationData()Z
    .locals 4

    .line 1835
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1836
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1837
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1838
    instance-of v3, v1, Lcom/avos/avoscloud/AVObject;

    if-eqz v3, :cond_0

    .line 1839
    move-object v3, v1

    check-cast v3, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1840
    invoke-virtual {p0, v2, v1}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1844
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1845
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1846
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1848
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .line 1515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1516
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "include"

    .line 1517
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v4, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 1520
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    const/4 p2, 0x0

    invoke-direct {v7, p0, p3, p2}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v5, p1

    .line 1519
    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 331
    const-class v0, Lcom/avos/avoscloud/AVClassName;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVClassName;

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Lcom/avos/avoscloud/AVClassName;->value()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v1, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 340
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    return-void

    .line 333
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The class is not annotated by @AVClassName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private removeObjectForKey(Ljava/lang/String;)V
    .locals 1

    .line 2314
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2315
    new-instance v0, Lcom/avos/avoscloud/AVObject$25;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVObject$25;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private rollbackDataToOperationQueue()V
    .locals 5

    .line 1951
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1952
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/ops/AVOp;

    .line 1953
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/ops/AVOp;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1957
    :cond_0
    invoke-interface {v3, v2}, Lcom/avos/avoscloud/ops/AVOp;->merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v2

    .line 1959
    :goto_1
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1962
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1963
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1611
    new-instance v0, Lcom/avos/avoscloud/AVObject$16;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject$16;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1624
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1625
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static saveAllInBackground(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1636
    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1647
    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public static saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;Z",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2328
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVFile;

    if-eqz p1, :cond_0

    .line 2330
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVFile;->save()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 2333
    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_2

    .line 2335
    :cond_2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->collectionNonNullCount(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2337
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVFile;

    if-eqz v1, :cond_3

    .line 2339
    new-instance v2, Lcom/avos/avoscloud/AVObject$26;

    invoke-direct {v2, v0, p2, p1}, Lcom/avos/avoscloud/AVObject$26;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/avos/avoscloud/SaveCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2211
    invoke-direct {p0, v0, p2, p1}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method private saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 8

    .line 1771
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 1773
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/4 p2, -0x1

    const-string p3, "already has one request sending"

    invoke-direct {p1, p2, p3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 1778
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->processOperationData()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    const/4 p1, 0x0

    .line 1781
    invoke-virtual {p4, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 1786
    iget-object v0, p1, Lcom/avos/avoscloud/AVSaveOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    if-eqz v0, :cond_4

    .line 1787
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/avos/avoscloud/AVSaveOption;->matchQuery:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1788
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/4 p2, 0x0

    const-string p3, "AVObject class inconsistant with AVQuery in AVSaveOption"

    invoke-direct {p1, p2, p3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 1793
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 1795
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getFilesToSave()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1796
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1797
    new-instance v1, Lcom/avos/avoscloud/AVObject$19;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/avos/avoscloud/AVObject$19;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V

    invoke-static {v0, p2, v1}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 1805
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVObject;->_saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p4, :cond_6

    .line 1809
    invoke-virtual {p4, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1765
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method private saveObjectToAVOSCloud(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;ZZ",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .line 1892
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "body"

    .line 1893
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "__internalId"

    .line 1894
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/avos/avoscloud/AVObject;->UUID_LEN:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 1895
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "new"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1900
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/avos/avoscloud/AVObject$20;

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {v9, p0, v1}, Lcom/avos/avoscloud/AVObject$20;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1933
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v11

    move-object v5, p1

    move v6, p2

    move v7, p3

    .line 1900
    invoke-virtual/range {v4 .. v11}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private transferDataToServerData()V
    .locals 4

    .line 1938
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1939
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1940
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/ops/AVOp;

    invoke-interface {v3, v2}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1942
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1943
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1944
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1947
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "__children"

    .line 2104
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    if-eqz p2, :cond_0

    .line 2106
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2109
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "__internalId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysUsePost()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const-string p3, "POST"

    goto :goto_1

    :cond_3
    const-string p3, "PUT"

    .line 2115
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;Z)Ljava/lang/String;

    move-result-object p2

    .line 2116
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getBatchParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p3, p2, p1, v1}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 378
    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 389
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 390
    invoke-direct {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 413
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 414
    invoke-direct {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 1

    .line 2270
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    new-instance v0, Lcom/avos/avoscloud/AVObject$22;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$22;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2278
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2257
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2258
    new-instance p2, Lcom/avos/avoscloud/AVObject$21;

    invoke-direct {p2, p0, p1}, Lcom/avos/avoscloud/AVObject$21;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p2, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 426
    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected alwaysUsePost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected buildBatchParameterForNonSavedObject(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 2015
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysUsePost()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2016
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2017
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2018
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->tempDataForServerSaving:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2020
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 2021
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/avos/avoscloud/ops/AVOp;

    move-object v2, p0

    move-object v3, v0

    move-object v6, v9

    move-object v7, p1

    move-object v8, p2

    .line 2022
    invoke-direct/range {v2 .. v8}, Lcom/avos/avoscloud/AVObject;->parseOperation(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    goto :goto_0

    .line 2024
    :cond_1
    invoke-direct {p0, v0, v9, v1}, Lcom/avos/avoscloud/AVObject;->wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_2

    .line 2026
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2027
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2028
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2030
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 2031
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v8

    .line 2032
    invoke-direct/range {v2 .. v7}, Lcom/avos/avoscloud/AVObject;->parseObjectValue(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2034
    :cond_3
    invoke-direct {p0, v0, v8, v1}, Lcom/avos/avoscloud/AVObject;->wrapperRequestBody(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->mergeRequestQueue(Ljava/util/Map;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 436
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected copyFromJson(Ljava/lang/String;)V
    .locals 1

    .line 1968
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1969
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AVObject parse error"

    .line 1971
    invoke-static {v0, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected copyFromMap(Ljava/util/Map;)V
    .locals 3

    .line 1981
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->transferDataToServerData()V

    .line 1982
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1983
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1984
    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1989
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1990
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1991
    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1994
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1995
    instance-of v2, v1, Lcom/avos/avoscloud/AVObject;

    if-eqz v2, :cond_2

    .line 1996
    check-cast v1, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->delete(Lcom/avos/avoscloud/AVDeleteOption;)V

    return-void
.end method

.method public delete(Lcom/avos/avoscloud/AVDeleteOption;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 525
    new-instance v0, Lcom/avos/avoscloud/AVObject$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject$1;-><init>(Lcom/avos/avoscloud/AVObject;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 538
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public deleteEventually()V
    .locals 1

    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 667
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 675
    invoke-virtual {p0, v0, v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/AVDeleteOption;)V
    .locals 1

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 696
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 706
    invoke-direct {p0, v0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/AVDeleteOption;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 2372
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 2377
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    .line 2378
    :cond_3
    check-cast p1, Lcom/avos/avoscloud/AVObject;

    .line 2379
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 2380
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    return v1

    .line 2381
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 2382
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 2383
    iget-object p1, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-eqz p1, :cond_7

    return v1

    .line 2384
    :cond_6
    iget-object p1, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public fetch()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 750
    new-instance v0, Lcom/avos/avoscloud/AVObject$5;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject$5;-><init>(Lcom/avos/avoscloud/AVObject;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 763
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 764
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public fetchIfNeeded()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 868
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 873
    new-instance v1, Lcom/avos/avoscloud/AVObject$9;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$9;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 887
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 888
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public fetchIfNeededInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 901
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    return-void
.end method

.method public fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .line 914
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 917
    invoke-virtual {p2, p0, p1}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 928
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    return-void
.end method

.method public fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 939
    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "createdAt"

    .line 967
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getCreatedAt()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "updatedAt"

    .line 970
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getAVFile(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVFile;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1191
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVFile;

    return-object p1
.end method

.method public getAVGeoPoint(Ljava/lang/String;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 0

    .line 1201
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVGeoPoint;

    return-object p1
.end method

.method public getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1214
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVObject;

    return-object p1
.end method

.method public getAVObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1219
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1223
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 1226
    :cond_1
    invoke-static {p0, p2}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    return-object p1
.end method

.method public getAVUser(Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1241
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVUser;

    return-object p1
.end method

.method public getAVUser(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1254
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVUser;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1255
    :cond_0
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0

    .line 990
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 991
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0

    .line 1001
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 1032
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 1042
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    .line 1054
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    .line 1066
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1068
    :cond_0
    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/json/JSONArray;

    return-object p1

    .line 1069
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 1070
    new-instance v0, Lorg/json/JSONArray;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 1073
    :cond_2
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1074
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1075
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 1076
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1090
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1091
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1092
    check-cast p1, Lorg/json/JSONObject;

    return-object p1

    .line 1094
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1097
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1099
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid json string"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1123
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1126
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1128
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    if-eqz v2, :cond_0

    .line 1129
    invoke-static {v2, p2}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ClassCast Exception"

    .line 1132
    invoke-static {p2, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 1145
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 1146
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    .line 1167
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method getOperationQueue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    return-object v0
.end method

.method protected getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .line 2443
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVRelation<",
            "TT;>;"
        }
    .end annotation

    .line 1266
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1268
    instance-of v1, v0, Lcom/avos/avoscloud/AVRelation;

    if-eqz v1, :cond_0

    .line 1269
    check-cast v0, Lcom/avos/avoscloud/AVRelation;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVRelation;->setParent(Lcom/avos/avoscloud/AVObject;)V

    return-object v0

    .line 1272
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVRelation;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 1273
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getServerData()Ljava/util/Map;
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

    .line 209
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1287
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1288
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1289
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0

    .line 1312
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasSameId(Lcom/avos/avoscloud/AVObject;)Z
    .locals 1

    .line 1318
    iget-object p1, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 2360
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2361
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 2365
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2366
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method protected headerMap()Ljava/util/Map;
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

    .line 1760
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getPaasClientInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->userHeaderMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 1381
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    new-instance v0, Lcom/avos/avoscloud/AVObject$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$10;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Number;)V

    .line 1388
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected internalClassName()Ljava/lang/String;
    .locals 1

    .line 2249
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalId()Ljava/lang/String;
    .locals 1

    .line 2008
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDataReady()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return v0
.end method

.method public isFetchWhenSave()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected onDataSynchronized()V
    .locals 0

    return-void
.end method

.method protected onSaveFailure()V
    .locals 0

    return-void
.end method

.method protected onSaveSuccess()V
    .locals 0

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1439
    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 1443
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    new-instance v0, Lcom/avos/avoscloud/AVObject$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$11;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1450
    invoke-virtual {v0, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected rebuildInstanceData()V
    .locals 4

    .line 2427
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2428
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2429
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2430
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/ops/AVOp;

    .line 2431
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2432
    invoke-interface {v1, v3}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2435
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2437
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->refresh(Ljava/lang/String;)V

    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1473
    new-instance v0, Lcom/avos/avoscloud/AVObject$12;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject$12;-><init>(Lcom/avos/avoscloud/AVObject;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1486
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1487
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public refreshInBackground(Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/RefreshCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1498
    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    return-void
.end method

.method public refreshInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1510
    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 1529
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->removeObjectForKey(Ljava/lang/String;)V

    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 1542
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    new-instance v0, Lcom/avos/avoscloud/AVObject$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$13;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1549
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 1

    .line 2283
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    new-instance v0, Lcom/avos/avoscloud/AVObject$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$23;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2291
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public save()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1561
    new-instance v0, Lcom/avos/avoscloud/AVObject$14;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject$14;-><init>(Lcom/avos/avoscloud/AVObject;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1574
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1575
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public save(Lcom/avos/avoscloud/AVSaveOption;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1585
    new-instance v0, Lcom/avos/avoscloud/AVObject$15;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject$15;-><init>(Lcom/avos/avoscloud/AVObject;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/avos/avoscloud/AVObject;->saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1598
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1599
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public saveEventually()V
    .locals 1

    const/4 v0, 0x0

    .line 1731
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->saveEventually(Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1

    .line 1743
    invoke-static {p0}, Lcom/avos/avoscloud/PaasClient;->registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V

    const/4 v0, 0x1

    .line 1744
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    return-void
.end method

.method public saveInBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 2175
    invoke-virtual {p0, v0, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/AVSaveOption;Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/AVSaveOption;)V
    .locals 1

    const/4 v0, 0x0

    .line 2186
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/AVSaveOption;Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/AVSaveOption;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 2207
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/avos/avoscloud/AVObject;->saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 2196
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    return-void
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0

    .line 2220
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    return-void
.end method

.method setClassName(Ljava/lang/String;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-void
.end method

.method setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method setDataReady(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return-void
.end method

.method public setFetchWhenSave(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    .line 2229
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    return-void
.end method

.method setOperationQueue(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 238
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method setServerData(Ljava/util/Map;)V
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

    .line 218
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 219
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method setUuid(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    return-void
.end method

.method protected shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    const-string v2, "objectId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    const-string v2, "createdAt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    const-string v2, "updatedAt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 131
    sget-object v0, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 2397
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2398
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2399
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2400
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2401
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    new-instance v0, Lcom/avos/avoscloud/ObjectValueFilter;

    invoke-direct {v0}, Lcom/avos/avoscloud/ObjectValueFilter;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p2, v0, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2403
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v5

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
