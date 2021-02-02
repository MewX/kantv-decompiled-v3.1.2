.class public Lcom/avos/avoscloud/ops/AddUniqueOp;
.super Lcom/avos/avoscloud/ops/CollectionAddOp;
.source "AddUniqueOp.java"


# instance fields
.field private values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/CollectionAddOp;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->values:Ljava/util/Set;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 25
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddUnique:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/ops/CollectionAddOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 14
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->values:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 27
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 28
    iget-object v2, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->values:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddUniqueOp;->getValues()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddUniqueOp;->getValues()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_1
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public encodeOp()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddUniqueOp;->getParsedValues()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->createArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddUniqueOp;->getValues()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/util/Collection;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddUniqueOp;->getValues()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->values:Ljava/util/Set;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 4

    .line 51
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/AddUniqueOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 52
    sget-object v0, Lcom/avos/avoscloud/ops/AddUniqueOp$1;->$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType:[I

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow op type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    const-class v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/ops/CompoundOp;->addFirst(Lcom/avos/avoscloud/ops/AVOp;)V

    :pswitch_1
    return-object p1

    .line 66
    :pswitch_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Could not increment an non-numberic value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :pswitch_3
    new-instance v0, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->key:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/avos/avoscloud/ops/AVOp;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/CompoundOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V

    return-object v0

    .line 58
    :pswitch_4
    iget-object v0, p0, Lcom/avos/avoscloud/ops/AddUniqueOp;->values:Ljava/util/Set;

    const-class v1, Lcom/avos/avoscloud/ops/AddUniqueOp;

    invoke-interface {p1, v1}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/AddUniqueOp;

    iget-object p1, p1, Lcom/avos/avoscloud/ops/AddUniqueOp;->values:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :pswitch_5
    return-object p1

    :pswitch_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
