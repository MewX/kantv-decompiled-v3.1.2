.class public abstract Lcom/avos/avoscloud/ops/CollectionOp;
.super Lcom/avos/avoscloud/ops/BaseOp;
.source "CollectionOp.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "parsedValues"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/ops/BaseOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    return-void
.end method


# virtual methods
.method public getParsedValues()Ljava/util/List;
    .locals 4

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CollectionOp;->getValues()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 37
    instance-of v3, v2, Lcom/avos/avoscloud/AVObject;

    if-eqz v3, :cond_0

    .line 38
    check-cast v2, Lcom/avos/avoscloud/AVObject;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v2

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    instance-of v3, v2, Lcom/avos/avoscloud/AVFile;

    if-eqz v3, :cond_1

    .line 41
    check-cast v2, Lcom/avos/avoscloud/AVFile;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v2

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CollectionOp;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValues()Ljava/util/Collection;
.end method

.method public setValues(Ljava/util/Collection;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CollectionOp;->getValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 28
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CollectionOp;->getValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
