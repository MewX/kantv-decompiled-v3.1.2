.class public Lcom/avos/avoscloud/AVStatusQuery;
.super Lcom/avos/avoscloud/AVQuery;
.source "AVStatusQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVQuery<",
        "Lcom/avos/avoscloud/AVStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final END:Ljava/lang/String; = "end"


# instance fields
.field private count:Z

.field private inboxType:Ljava/lang/String;

.field private maxId:J

.field private owner:Lcom/avos/avoscloud/AVUser;

.field private selfStatusQuery:Z

.field private sinceId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "_Status"

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    .line 22
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatusQuery;->getInclude()Ljava/util/List;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public assembleParameters()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    const-string v1, "inboxType"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVStatusQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 75
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatusQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "owner"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    iget-wide v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 82
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sinceId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    if-nez v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_3
    iget-wide v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    cmp-long v3, v1, v4

    if-lez v3, :cond_4

    .line 88
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_4
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    if-eqz v1, :cond_5

    const-string v1, "count"

    const-string v2, "1"

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/QueryConditions;->setParameters(Ljava/util/Map;)V

    return-object v0
.end method

.method protected getInboxType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxId()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    return-wide v0
.end method

.method public getOwner()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getSinceId()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    return-wide v0
.end method

.method public isCount()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    return v0
.end method

.method protected processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/FindCallback<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "end"

    .line 100
    const-class v1, Lcom/avos/avoscloud/InboxStatusFindCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    check-cast p2, Lcom/avos/avoscloud/InboxStatusFindCallback;

    const/4 v1, 0x0

    .line 104
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing json data error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/InboxStatusFindCallback;->setEnd(Z)V

    :cond_1
    return-void
.end method

.method public setCount(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    return-void
.end method

.method public setInboxType(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    return-void
.end method

.method public setMaxId(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    return-void
.end method

.method public setOwner(Lcom/avos/avoscloud/AVUser;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    return-void
.end method

.method protected setSelfQuery(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    return-void
.end method

.method public setSinceId(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    return-void
.end method
