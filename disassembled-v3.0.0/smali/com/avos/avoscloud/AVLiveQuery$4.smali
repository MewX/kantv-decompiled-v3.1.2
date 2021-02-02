.class final Lcom/avos/avoscloud/AVLiveQuery$4;
.super Ljava/lang/Object;
.source "AVLiveQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVLiveQuery;->processData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery$4;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "updatedKeys"

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVLiveQuery$4;->val$data:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "op"

    .line 226
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "query_id"

    .line 227
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "object"

    .line 228
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 229
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 234
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVLiveQuery;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVLiveQuery;

    .line 239
    invoke-static {v1}, Lcom/avos/avoscloud/AVLiveQuery;->access$000(Lcom/avos/avoscloud/AVLiveQuery;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/avos/avoscloud/AVLiveQuery;->access$300(Lcom/avos/avoscloud/AVLiveQuery;)Lcom/avos/avoscloud/AVLiveQueryEventHandler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 240
    invoke-static {v1}, Lcom/avos/avoscloud/AVLiveQuery;->access$300(Lcom/avos/avoscloud/AVLiveQuery;)Lcom/avos/avoscloud/AVLiveQueryEventHandler;

    move-result-object v1

    invoke-static {v2}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->getType(Ljava/lang/String;)Lcom/avos/avoscloud/AVLiveQuery$EventType;

    move-result-object v6

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lcom/avos/avoscloud/AVLiveQueryEventHandler;->done(Lcom/avos/avoscloud/AVLiveQuery$EventType;Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 245
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Parsing json data error, "

    .line 246
    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method
