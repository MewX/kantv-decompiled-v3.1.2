.class Lcom/avos/avoscloud/AVFellowshipQuery;
.super Lcom/avos/avoscloud/AVQuery;
.source "AVFellowshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVUser;",
        ">",
        "Lcom/avos/avoscloud/AVQuery<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private friendshipTag:Ljava/lang/String;


# direct methods
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

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 46
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 49
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 50
    new-instance v1, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVFollowResponse;

    .line 52
    iget-object p1, p1, Lcom/avos/avoscloud/AVFollowResponse;->results:[Ljava/util/Map;

    invoke-direct {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVFellowshipQuery;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->getClazz()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->getClazz()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVUser;

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVUser;

    .line 36
    :goto_1
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 38
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method getFriendshipTag()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/avos/avoscloud/AVFellowshipQuery;->friendshipTag:Ljava/lang/String;

    return-object v0
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 58
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFellowshipQuery;->friendshipTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVFellowshipQuery;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method setFriendshipTag(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/avos/avoscloud/AVFellowshipQuery;->friendshipTag:Ljava/lang/String;

    return-void
.end method
