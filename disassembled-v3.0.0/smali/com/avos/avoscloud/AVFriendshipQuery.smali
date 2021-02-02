.class public Lcom/avos/avoscloud/AVFriendshipQuery;
.super Ljava/lang/Object;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVUser;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field conditions:Lcom/avos/avoscloud/QueryConditions;

.field userClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    .line 25
    new-instance p1, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p1}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    return-void
.end method

.method private addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)V

    return-object p0
.end method

.method private addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addAscendingOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addDescendingOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method protected addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;

    move-result-object p1

    return-object p1
.end method

.method public get()Lcom/avos/avoscloud/AVFriendship;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 94
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 95
    iget-object v3, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    new-instance v4, Lcom/avos/avoscloud/AVFriendshipQuery$2;

    invoke-direct {v4, p0, v1}, Lcom/avos/avoscloud/AVFriendshipQuery$2;-><init>(Lcom/avos/avoscloud/AVFriendshipQuery;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0, v4}, Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    .line 110
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    aget-object v0, v1, v2

    check-cast v0, Lcom/avos/avoscloud/AVFriendship;

    return-object v0

    .line 111
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public getInBackground(Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    return-void
.end method

.method protected getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 7

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "users/%s/followersAndFollowees"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 31
    iget-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {p1}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/AVRequestParams;

    iget-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {p1}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    new-instance v6, Lcom/avos/avoscloud/AVFriendshipQuery$1;

    invoke-direct {v6, p0, p3}, Lcom/avos/avoscloud/AVFriendshipQuery$1;-><init>(Lcom/avos/avoscloud/AVFriendshipQuery;Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    const/4 v5, 0x0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public getLimit()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v0

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v0

    return v0
.end method

.method public include(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->include(Ljava/lang/String;)V

    return-object p0
.end method

.method public limit(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setLimit(I)Lcom/avos/avoscloud/AVFriendshipQuery;

    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;

    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->selectKeys(Ljava/util/Collection;)V

    return-object p0
.end method

.method public setLimit(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setOrder(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSkip(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setSkip(I)Lcom/avos/avoscloud/AVFriendshipQuery;

    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereDoesNotExist(Ljava/lang/String;)V

    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 363
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    const-string v1, "__eq"

    if-eqz v0, :cond_0

    .line 364
    check-cast p2, Lcom/avos/avoscloud/AVObject;

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;

    :goto_0
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereExists(Ljava/lang/String;)V

    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVFriendshipQuery<",
            "TT;>;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    return-object p0
.end method
