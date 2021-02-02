.class public Lcom/avos/avoscloud/AVQuery;
.super Ljava/lang/Object;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVQuery$CachePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CLOUD_QUERY_PATH:Ljava/lang/String; = "cloudQuery"

.field private static final TAG:Ljava/lang/String; = "com.avos.avoscloud.AVQuery"


# instance fields
.field private cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field conditions:Lcom/avos/avoscloud/QueryConditions;

.field private externalQueryPath:Ljava/lang/String;

.field private isRunning:Ljava/lang/Boolean;

.field private maxCacheAge:J

.field private queryPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const-wide/16 v0, -0x1

    .line 91
    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    const-wide/16 v0, -0x1

    .line 91
    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 287
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    .line 289
    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    .line 290
    new-instance p1, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p1}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVQuery;->processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method private addAndItems(Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    iget-object p1, p1, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addAndItems(Lcom/avos/avoscloud/QueryConditions;)V

    return-object p0
.end method

.method private addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)V

    return-object p0
.end method

.method private addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    return-object p0
.end method

.method public static and(Ljava/util/List;)Lcom/avos/avoscloud/AVQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 909
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 910
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 912
    :goto_0
    new-instance v2, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 914
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVQuery;

    .line 915
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    invoke-direct {v2, v1}, Lcom/avos/avoscloud/AVQuery;->addAndItems(Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_1

    .line 916
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "All queries must be for the same class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 921
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVQuery;

    iget-object p0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {p0}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/avos/avoscloud/AVQuery;->setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;

    :cond_3
    return-object v2
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .line 327
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->clearAllCache()Z

    return-void
.end method

.method private countInBackground(ZLcom/avos/avoscloud/CountCallback;)V
    .locals 12

    .line 1543
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 1544
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "count"

    const-string v2, "1"

    .line 1545
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "limit"

    const-string v2, "0"

    .line 1546
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v4

    .line 1550
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    new-instance v5, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    new-instance v8, Lcom/avos/avoscloud/AVQuery$13;

    invoke-direct {v8, p0, p2}, Lcom/avos/avoscloud/AVQuery$13;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/CountCallback;)V

    iget-object v9, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v10, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v3 .. v11}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    return-void
.end method

.method public static doCloudQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1111
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVQuery;->doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object p0

    return-object p0
.end method

.method public static doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1126
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1127
    new-instance v1, Lcom/avos/avoscloud/AVQuery$3;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$3;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1144
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 1145
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1053
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1054
    new-instance v1, Lcom/avos/avoscloud/AVQuery$2;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$2;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const/4 v2, 0x1

    invoke-static {p0, v1, p1, v2, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1067
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 1068
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1022
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1023
    new-instance v1, Lcom/avos/avoscloud/AVQuery$1;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$1;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const-class v2, Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, p1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1035
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 1036
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;)V"
        }
    .end annotation

    .line 1158
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1170
    invoke-static {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    return-void
.end method

.method private static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;Z[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p4, :cond_0

    .line 1178
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 1179
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1183
    :cond_0
    new-instance v5, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v5}, Lcom/avos/avoscloud/AVRequestParams;-><init>()V

    const-string p4, "cql"

    .line 1184
    invoke-virtual {v5, p4, p0}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1185
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1186
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p4, "pvalues"

    invoke-virtual {v5, p4, p0}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    const/4 v7, 0x0

    new-instance v8, Lcom/avos/avoscloud/AVQuery$4;

    invoke-direct {v8, p1, p2}, Lcom/avos/avoscloud/AVQuery$4;-><init>(Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V

    const-string v4, "cloudQuery"

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1098
    invoke-static {p0, p1, p2, v0, p3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1084
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    return-void
.end method

.method private generateQueryPath()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 189
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    .line 190
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/avos/avoscloud/GetCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1387
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1388
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    .line 1389
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    new-instance v8, Lcom/avos/avoscloud/AVQuery$8;

    invoke-direct {v8, p0, p2}, Lcom/avos/avoscloud/AVQuery$8;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method private getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/GetCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1447
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpointByAVClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1450
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    new-instance v6, Lcom/avos/avoscloud/AVQuery$10;

    invoke-direct {v6, p0, p3}, Lcom/avos/avoscloud/AVQuery$10;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    const/4 v5, 0x0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
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

    .line 311
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.avos.avoscloud.AVQuery"

    return-object v0
.end method

.method public static getUserQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getQuery()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/avos/avoscloud/AVQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 888
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 889
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 891
    :goto_0
    new-instance v2, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 893
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVQuery;

    .line 894
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 897
    new-instance v3, Lcom/avos/avoscloud/QueryOperation;

    iget-object v1, v1, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 898
    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v1

    const-string v4, "$or"

    invoke-direct {v3, v4, v4, v1}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVQuery;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_1

    .line 895
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "All queries must be for the same class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 901
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVQuery;

    iget-object p0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {p0}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/avos/avoscloud/AVQuery;->setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;

    :cond_3
    return-object v2
.end method

.method private static processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1215
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1216
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 1218
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    return-object v0

    .line 1221
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 1222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVResponse;

    .line 1224
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1225
    iget-object v2, p0, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 1226
    iget-object v2, p0, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    if-eqz v5, :cond_3

    .line 1227
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz p1, :cond_1

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/AVObject;

    .line 1231
    invoke-virtual {v6}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1232
    iget-object v7, p0, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 1235
    :cond_1
    new-instance v6, Lcom/avos/avoscloud/AVObject;

    iget-object v7, p0, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 1237
    :cond_2
    :goto_1
    invoke-static {v5, v6}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1238
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1242
    :cond_4
    iget p0, p0, Lcom/avos/avoscloud/AVResponse;->count:I

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVCloudQueryResult;->setCount(I)V

    .line 1243
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    return-object v0
.end method

.method private queryPath()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    return-object v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addAscendingOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addDescendingOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method protected addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected assembleParameters()Ljava/util/Map;
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

    .line 1641
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public clearCachedResult()V
    .locals 2

    .line 335
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 336
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->delete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/avos/avoscloud/AVQuery;
    .locals 3

    .line 275
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 277
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    .line 278
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v1, v0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 279
    iget-wide v1, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    iput-wide v1, v0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 280
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->clone()Lcom/avos/avoscloud/QueryConditions;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->clone()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public count()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1499
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1500
    new-instance v3, Lcom/avos/avoscloud/AVQuery$11;

    invoke-direct {v3, p0, v1}, Lcom/avos/avoscloud/AVQuery$11;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, v0, v3}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1515
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    aget v0, v1, v2

    return v0

    .line 1516
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method protected count(Z)I
    .locals 3

    const/4 p1, 0x1

    .line 1522
    new-array v0, p1, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1523
    new-instance v2, Lcom/avos/avoscloud/AVQuery$12;

    invoke-direct {v2, p0, v0}, Lcom/avos/avoscloud/AVQuery$12;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, p1, v2}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1529
    aget p1, v0, v1

    return p1
.end method

.method public countInBackground(Lcom/avos/avoscloud/CountCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1539
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    return-void
.end method

.method public deleteAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1615
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->find()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->deleteAll(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteAllInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1

    .line 1625
    new-instance v0, Lcom/avos/avoscloud/AVQuery$15;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVQuery$15;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/DeleteCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVQuery;->findInBackground(Lcom/avos/avoscloud/FindCallback;)V

    return-void
.end method

.method public find()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1581
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 1582
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1583
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1585
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    new-instance v5, Lcom/avos/avoscloud/AVQuery$14;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/AVQuery$14;-><init>(Lcom/avos/avoscloud/AVQuery;Ljava/util/List;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 1601
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v9

    .line 1602
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public findInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/FindCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1287
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    new-instance v5, Lcom/avos/avoscloud/AVQuery$5;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVQuery$5;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/FindCallback;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1323
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1324
    new-instance v3, Lcom/avos/avoscloud/AVQuery$6;

    invoke-direct {v3, p0, v1}, Lcom/avos/avoscloud/AVQuery$6;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    .line 1339
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1342
    aget-object p1, v1, v2

    check-cast p1, Lcom/avos/avoscloud/AVObject;

    return-object p1

    .line 1340
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public getCachePolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method getExternalQueryPath()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst()Lcom/avos/avoscloud/AVObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1353
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1354
    new-instance v3, Lcom/avos/avoscloud/AVQuery$7;

    invoke-direct {v3, p0, v1}, Lcom/avos/avoscloud/AVQuery$7;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    .line 1369
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    aget-object v0, v1, v2

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    return-object v0

    .line 1370
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public getFirstInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1383
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    return-void
.end method

.method public getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1435
    new-instance v0, Lcom/avos/avoscloud/AVQuery$9;

    invoke-direct {v0, p0, p2}, Lcom/avos/avoscloud/AVQuery$9;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    return-void
.end method

.method getInclude()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getInclude()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getIsRunning()Ljava/lang/Boolean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v0

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameters()Ljava/util/Map;
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

    .line 138
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method getQueryPath()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    return-object v0
.end method

.method getSelectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSelectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v0

    return v0
.end method

.method getWhere()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasCachedResult()Z
    .locals 2

    .line 365
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 366
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public include(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->include(Ljava/lang/String;)V

    return-object p0
.end method

.method public isTrace()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->isTrace()Z

    move-result v0

    return v0
.end method

.method public limit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setLimit(I)Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 449
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    return-object p0
.end method

.method protected processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/FindCallback<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1254
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1257
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 1258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVResponse;

    .line 1260
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1261
    iget-object v1, p1, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 1262
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1264
    iget-object v5, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 1265
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVObject;

    goto :goto_1

    .line 1267
    :cond_1
    iget-object v5, p1, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v5

    .line 1269
    :goto_1
    invoke-static {v4, v5}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1270
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    .line 1271
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->selectKeys(Ljava/util/Collection;)V

    return-object p0
.end method

.method public setCachePolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    return-object p0
.end method

.method setClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-void
.end method

.method setExternalQueryPath(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    return-void
.end method

.method setInclude(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setInclude(Ljava/util/List;)V

    return-void
.end method

.method setIsRunning(Ljava/lang/Boolean;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public setLimit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 239
    iput-wide p1, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method setParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setParameters(Ljava/util/Map;)V

    return-void
.end method

.method public setPolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object p0
.end method

.method setQueryPath(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    return-void
.end method

.method setSelectedKeys(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSelectedKeys(Ljava/util/Set;)V

    return-void
.end method

.method public setSkip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    return-object p0
.end method

.method public setTrace(Z)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setTrace(Z)V

    return-object p0
.end method

.method setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setWhere(Ljava/util/Map;)V

    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setSkip(I)Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereDoesNotExist(Ljava/lang/String;)V

    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery<",
            "*>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 981
    iget-object v0, p3, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    const-string v1, "className"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 982
    iget-object p3, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {p3}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object p3

    const-string v1, "where"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "query"

    .line 984
    invoke-static {p3, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    const-string v0, "key"

    .line 985
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "$dontSelect"

    .line 987
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery<",
            "*>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1000
    iget-object v0, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    const-string v1, "className"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1001
    iget-object p2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {p2}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object p2

    const-string v1, "where"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "$notInQuery"

    .line 1003
    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereExists(Ljava/lang/String;)V

    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery<",
            "*>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 939
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 940
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "where"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "skip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    :cond_0
    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :cond_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object p3

    const-string v1, "order"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_2
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "query"

    .line 947
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 948
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "$select"

    .line 949
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object p1

    return-object p1
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery<",
            "*>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 961
    iget-object v0, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 962
    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "where"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 963
    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "skip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    :cond_0
    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_1
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object p2

    const-string v1, "order"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "$inQuery"

    .line 967
    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)Lcom/avos/avoscloud/AVQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "DD)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)Lcom/avos/avoscloud/AVQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "DD)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)Lcom/avos/avoscloud/AVQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "DD)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    return-object p0
.end method
