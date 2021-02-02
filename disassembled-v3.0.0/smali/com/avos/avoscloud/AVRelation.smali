.class public Lcom/avos/avoscloud/AVRelation;
.super Ljava/lang/Object;
.source "AVRelation.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "query",
        "parent"
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


# instance fields
.field private key:Ljava/lang/String;

.field private parent:Lcom/avos/avoscloud/AVObject;

.field private targetClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    .line 29
    iput-object p2, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, v0}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    return-void
.end method

.method public static reverseQuery(Ljava/lang/Class;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TM;>;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 145
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    return-object v0
.end method

.method public static reverseQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Lcom/avos/avoscloud/AVQuery<",
            "TM;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not add class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to this relation,expect class is \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V

    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null AVObject"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 62
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVRelation;->add(Lcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVRelation;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/avos/avoscloud/AVRelation$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVRelation$1;-><init>(Lcom/avos/avoscloud/AVRelation;)V

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "$relatedTo"

    .line 104
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v3, v1, p1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 111
    invoke-virtual {v3, v2, p1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 112
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getTargetClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {v3}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRelation;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirectClassNameForKey"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v3

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unable to encode an association with an unsaved AVObject"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTargetClass()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Lcom/avos/avoscloud/AVObject;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V

    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->key:Ljava/lang/String;

    return-void
.end method

.method setParent(Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->parent:Lcom/avos/avoscloud/AVObject;

    return-void
.end method

.method public setTargetClass(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation;->targetClass:Ljava/lang/String;

    return-void
.end method
