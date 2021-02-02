.class public abstract Lcom/avos/avoscloud/ops/BaseOp;
.super Ljava/lang/Object;
.source "BaseOp.java"

# interfaces
.implements Lcom/avos/avoscloud/ops/AVOp;


# instance fields
.field protected key:Ljava/lang/String;

.field protected ops:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Lcom/avos/avoscloud/ops/AVOp$OpType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    .line 40
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/ops/AVOp;

    .line 91
    invoke-interface {v1, p1}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    if-eq p1, v0, :cond_1

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->key()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/AVOp;

    return-object p1
.end method

.method public get(I)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/AVOp;

    return-object p1

    .line 118
    :cond_0
    sget-object p1, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    .line 122
    :cond_2
    sget-object p1, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    return-object p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getType()Lcom/avos/avoscloud/ops/AVOp$OpType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/BaseOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 63
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    .line 66
    :cond_0
    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->Compound:Lcom/avos/avoscloud/ops/AVOp$OpType;

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    const-class v1, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v1}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object p1, p1, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public remove(I)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/AVOp;

    return-object p1

    .line 84
    :cond_0
    sget-object p1, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->key:Ljava/lang/String;

    return-void
.end method

.method public setOps(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    return-void
.end method

.method public setType(Lcom/avos/avoscloud/ops/AVOp$OpType;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-void
.end method

.method public size()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->ops:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public type()Lcom/avos/avoscloud/ops/AVOp$OpType;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/ops/BaseOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-object v0
.end method
