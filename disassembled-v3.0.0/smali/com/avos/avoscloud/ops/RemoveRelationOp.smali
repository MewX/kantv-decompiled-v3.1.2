.class public Lcom/avos/avoscloud/ops/RemoveRelationOp;
.super Lcom/avos/avoscloud/ops/CollectionOp;
.source "RemoveRelationOp.java"


# instance fields
.field private values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/CollectionOp;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/RemoveRelationOp;->values:Ljava/util/Set;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/avos/avoscloud/AVObject;)V
    .locals 3

    .line 14
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->RemoveRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/ops/CollectionOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 11
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/avos/avoscloud/ops/RemoveRelationOp;->values:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 16
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 17
    iget-object v2, p0, Lcom/avos/avoscloud/ops/RemoveRelationOp;->values:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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

    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/ops/RemoveRelationOp;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/RemoveRelationOp;->getValues()Ljava/util/Set;

    move-result-object v1

    const-string v2, "RemoveRelation"

    invoke-static {v0, v2, v1}, Lcom/avos/avoscloud/AVUtils;->createPointerArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/RemoveRelationOp;->getValues()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/util/Collection;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/RemoveRelationOp;->getValues()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/ops/RemoveRelationOp;->values:Ljava/util/Set;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 4

    .line 43
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/RemoveRelationOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 44
    sget-object v0, Lcom/avos/avoscloud/ops/RemoveRelationOp$1;->$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType:[I

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
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

    .line 62
    :pswitch_0
    const-class v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/ops/CompoundOp;->addFirst(Lcom/avos/avoscloud/ops/AVOp;)V

    :pswitch_1
    return-object p1

    .line 58
    :pswitch_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Could not increment an non-numberic value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :pswitch_3
    new-instance v0, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/RemoveRelationOp;->key:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/avos/avoscloud/ops/AVOp;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/CompoundOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V

    return-object v0

    .line 50
    :pswitch_4
    iget-object v0, p0, Lcom/avos/avoscloud/ops/RemoveRelationOp;->values:Ljava/util/Set;

    const-class v1, Lcom/avos/avoscloud/ops/RemoveRelationOp;

    invoke-interface {p1, v1}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/RemoveRelationOp;

    iget-object p1, p1, Lcom/avos/avoscloud/ops/RemoveRelationOp;->values:Ljava/util/Set;

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
