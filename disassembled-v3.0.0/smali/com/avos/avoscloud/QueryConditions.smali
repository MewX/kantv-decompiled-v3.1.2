.class public Lcom/avos/avoscloud/QueryConditions;
.super Ljava/lang/Object;
.source "QueryConditions.java"


# instance fields
.field private include:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private order:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field where:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-void
.end method

.method private removeDuplications(Lcom/avos/avoscloud/QueryOperation;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 262
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QueryOperation;

    .line 264
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryOperation;->sameOp(Lcom/avos/avoscloud/QueryOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAndItems(Lcom/avos/avoscloud/QueryConditions;)V
    .locals 3

    .line 290
    invoke-virtual {p1}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object p1

    .line 291
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    const-string v1, "$and"

    invoke-direct {v0, v1, v1, p1}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    iget-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 295
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 296
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 300
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/QueryOperation;

    .line 302
    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/QueryOperation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 306
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAscendingOrder(Ljava/lang/String;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s,%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-void
.end method

.method public addDescendingOrder(Ljava/lang/String;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 133
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s,-%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-void
.end method

.method public addOrItems(Lcom/avos/avoscloud/QueryOperation;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    const-string v1, "$or"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 274
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 278
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/QueryOperation;

    .line 280
    invoke-virtual {v2, p1}, Lcom/avos/avoscloud/QueryOperation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 285
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    iget-object v2, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->removeDuplications(Lcom/avos/avoscloud/QueryOperation;Ljava/util/List;)V

    .line 253
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 257
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    return-void
.end method

.method public assembleParameters()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "where"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    if-lez v0, :cond_1

    .line 227
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "limit"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    if-ltz v0, :cond_2

    .line 230
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "skip"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    const-string v2, "order"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    const-string v1, ","

    if-nez v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v3, "include"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v2, "keys"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public clone()Lcom/avos/avoscloud/QueryConditions;
    .locals 3

    .line 38
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    .line 39
    iget-object v1, v0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    iget-object v1, v0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v1, v0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->selectKeys(Ljava/util/Collection;)V

    .line 43
    iget v1, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 44
    iget-boolean v1, p0, Lcom/avos/avoscloud/QueryConditions;->trace:Z

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->setTrace(Z)V

    .line 45
    iget v1, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 46
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->setOrder(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/avos/avoscloud/QueryConditions;->clone()Lcom/avos/avoscloud/QueryConditions;

    move-result-object v0

    return-object v0
.end method

.method public compileWhereOperationMap()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "$or"

    .line 158
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/QueryOperation;

    .line 161
    invoke-virtual {v5}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 165
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v4, "$and"

    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/QueryOperation;

    .line 172
    invoke-virtual {v5}, Lcom/avos/avoscloud/QueryOperation;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 176
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 178
    :cond_5
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    .line 192
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 195
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/QueryOperation;

    .line 196
    invoke-virtual {v9, v2}, Lcom/avos/avoscloud/QueryOperation;->toResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v10, v9, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    const-string v11, "__eq"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v8, 0x1

    :cond_8
    if-nez v8, :cond_7

    .line 201
    invoke-virtual {v9}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v7, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    :cond_9
    if-eqz v8, :cond_b

    .line 205
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_a

    .line 207
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 209
    :cond_a
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 212
    :cond_b
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 186
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/QueryOperation;

    .line 188
    invoke-virtual {v4}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    return-object v0
.end method

.method public getInclude()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
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

    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSelectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    return v0
.end method

.method public getWhere()Ljava/util/Map;
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

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    return-object v0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isTrace()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/avos/avoscloud/QueryConditions;->trace:Z

    return v0
.end method

.method public orderByAscending(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-void
.end method

.method public orderByDescending(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "-%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-void
.end method

.method public selectKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    :cond_0
    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public setInclude(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setSelectedKeys(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    return-void
.end method

.method public setSkip(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    return-void
.end method

.method public setTrace(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/avos/avoscloud/QueryConditions;->trace:Z

    return-void
.end method

.method public setWhere(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    return-void
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$in"

    .line 330
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 428
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, ".*%s.*"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "$all"

    .line 437
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereDoesNotExist(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 441
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "$exists"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 424
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, ".*%s$"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 371
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    const-string v1, "__eq"

    if-eqz v0, :cond_0

    .line 372
    check-cast p2, Lcom/avos/avoscloud/AVObject;

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public whereExists(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 334
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "$exists"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$gt"

    .line 338
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 326
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    const-string v1, "$gte"

    invoke-direct {v0, p1, v1, p2}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    return-void
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$lt"

    .line 342
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$lte"

    .line 346
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$regex"

    .line 350
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$regex"

    .line 354
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "$options"

    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 1

    .line 359
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "$nearSphere"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$nin"

    .line 363
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$ne"

    .line 367
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereSizeEqual(Ljava/lang/String;I)V
    .locals 1

    .line 433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "$size"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 379
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "^%s.*"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 1

    .line 383
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 384
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "$box"

    .line 386
    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "$within"

    .line 387
    invoke-virtual {p0, p1, p3, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 7

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 391
    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    return-void
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V
    .locals 3

    .line 396
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "$nearSphere"

    invoke-static {v0, p2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_0

    .line 398
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "$maxDistanceInKilometers"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmpl-double p3, p5, v0

    if-ltz p3, :cond_1

    .line 401
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "$minDistanceInKilometers"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p3, 0x0

    .line 403
    invoke-virtual {p0, p1, p3, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 7

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 407
    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    return-void
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V
    .locals 3

    .line 413
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "$nearSphere"

    invoke-static {v0, p2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_0

    .line 415
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "$maxDistanceInMiles"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmpl-double p3, p5, v0

    if-ltz p3, :cond_1

    .line 418
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "$minDistanceInMiles"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p3, 0x0

    .line 420
    invoke-virtual {p0, p1, p3, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 7

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 310
    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    return-void
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V
    .locals 3

    .line 315
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "$nearSphere"

    invoke-static {v0, p2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_0

    .line 317
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "$maxDistanceInRadians"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmpl-double p3, p5, v0

    if-ltz p3, :cond_1

    .line 320
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "$minDistanceInRadians"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_1
    new-instance p3, Lcom/avos/avoscloud/QueryOperation;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4, p2}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    return-void
.end method
