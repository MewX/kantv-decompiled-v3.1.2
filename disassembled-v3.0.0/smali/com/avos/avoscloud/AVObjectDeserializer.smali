.class Lcom/avos/avoscloud/AVObjectDeserializer;
.super Ljava/lang/Object;
.source "AVObjectDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AVObjectDeserializer"

.field public static final instance:Lcom/avos/avoscloud/AVObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/avos/avoscloud/AVObjectDeserializer;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObjectDeserializer;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObjectDeserializer;->instance:Lcom/avos/avoscloud/AVObjectDeserializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string p3, "source"

    const-string v0, "messageId"

    const-string v1, "inboxType"

    const-string v2, "dataMap"

    const-string v3, "serverData"

    const-string v4, "operationQueue"

    const-string v5, "keyValues"

    const-string v6, "relationClassName"

    const-string v7, ""

    .line 35
    const-class v8, Lcom/avos/avoscloud/AVObject;

    move-object v9, p2

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 36
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 40
    :try_start_0
    move-object v9, p2

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/AVObject;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v10, "className"

    .line 41
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    const-string v10, "objectId"

    .line 42
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    const-string v10, "createdAt"

    .line 43
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AVObject;->setCreatedAt(Ljava/lang/String;)V

    const-string v10, "updatedAt"

    .line 44
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AVObject;->setUpdatedAt(Ljava/lang/String;)V

    .line 45
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 48
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 49
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "value"

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "op"

    .line 55
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/ops/AVOp;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_1

    .line 59
    :try_start_3
    instance-of v3, v2, Lcom/avos/avoscloud/ops/NullOP;

    if-nez v3, :cond_1

    .line 60
    invoke-virtual {p0, v2, v1}, Lcom/avos/avoscloud/AVObjectDeserializer;->updateOp(Lcom/avos/avoscloud/ops/AVOp;Ljava/lang/Object;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    .line 61
    iget-object v1, v9, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    iget-object v0, v9, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lcom/avos/avoscloud/AVRelation;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v9, v2}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVRelation;->setTargetClass(Ljava/lang/String;)V

    .line 67
    iget-object v0, v9, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    iget-object p1, v9, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    .line 73
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 72
    invoke-interface {p1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    :cond_4
    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 76
    iget-object p1, v9, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    :cond_5
    const-class p1, Lcom/avos/avoscloud/AVStatus;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 80
    const-class p1, Lcom/avos/avoscloud/AVStatus;

    invoke-static {v9, p1}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVStatus;

    .line 81
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 82
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVStatus;->setData(Ljava/util/Map;)V

    .line 84
    :cond_6
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 85
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVStatus;->setInboxType(Ljava/lang/String;)V

    .line 87
    :cond_7
    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 88
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVStatus;->setMessageId(J)V

    .line 90
    :cond_8
    invoke-interface {v8, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 91
    invoke-interface {v8, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVStatus;->setSource(Lcom/avos/avoscloud/AVObject;)V

    .line 95
    :cond_9
    invoke-virtual {v9}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v9

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_0
    move-object v9, p1

    goto :goto_5

    :catch_4
    move-exception p2

    move-object v9, p1

    move-object p1, p2

    .line 105
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 106
    sget-object p2, Lcom/avos/avoscloud/AVObjectDeserializer;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, v7, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    return-object v9

    :catch_5
    move-exception p2

    move-object v9, p1

    move-object p1, p2

    .line 101
    :goto_3
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 102
    sget-object p2, Lcom/avos/avoscloud/AVObjectDeserializer;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, v7, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b
    return-object v9

    :catch_6
    move-exception p2

    move-object v9, p1

    move-object p1, p2

    .line 97
    :goto_4
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 98
    sget-object p2, Lcom/avos/avoscloud/AVObjectDeserializer;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, v7, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_c
    :goto_5
    return-object v9

    .line 112
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getFastMatchToken()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public updateOp(Lcom/avos/avoscloud/ops/AVOp;Ljava/lang/Object;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 3

    .line 121
    instance-of p2, p1, Lcom/avos/avoscloud/ops/AddRelationOp;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/avos/avoscloud/ops/RemoveRelationOp;

    if-eqz p2, :cond_2

    .line 123
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 126
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/avos/avoscloud/AVObject;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 127
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/avos/avoscloud/ops/CollectionOp;

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/ops/CollectionOp;->setValues(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 132
    :cond_2
    :goto_1
    instance-of p2, p1, Lcom/avos/avoscloud/ops/CompoundOp;

    if-eqz p2, :cond_3

    .line 133
    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->getValues()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVObjectDeserializer;->updateOp(Lcom/avos/avoscloud/ops/AVOp;Ljava/lang/Object;)Lcom/avos/avoscloud/ops/AVOp;

    goto :goto_2

    :cond_3
    return-object p1
.end method
