.class public Lcom/avos/avoscloud/ops/SetOp;
.super Lcom/avos/avoscloud/ops/BaseOp;
.source "SetOp.java"

# interfaces
.implements Lcom/avos/avoscloud/ops/SingleValueOp;


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Set:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/ops/BaseOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 32
    iput-object p2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/SetOp;->getValues()Ljava/lang/Object;

    move-result-object p1

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

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/avos/avoscloud/ops/SetOp;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getValues()Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 4

    .line 49
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/SetOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 50
    sget-object v0, Lcom/avos/avoscloud/ops/SetOp$1;->$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType:[I

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
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

    .line 73
    :pswitch_0
    const-class v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/ops/CompoundOp;->addFirst(Lcom/avos/avoscloud/ops/AVOp;)V

    :pswitch_1
    return-object p1

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 67
    const-class v2, Lcom/avos/avoscloud/ops/IncrementOp;

    invoke-interface {p1, v2}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/IncrementOp;

    iget-object p1, p1, Lcom/avos/avoscloud/ops/IncrementOp;->amount:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    return-object p0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not increment non-numberic value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :pswitch_3
    new-instance v0, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/SetOp;->key:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/avos/avoscloud/ops/AVOp;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/CompoundOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V

    return-object v0

    .line 54
    :pswitch_4
    const-class v0, Lcom/avos/avoscloud/ops/SetOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/ops/SetOp;

    iget-object p1, p1, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    iput-object p1, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    :pswitch_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    return-void
.end method

.method public setValues(Ljava/lang/Object;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/avos/avoscloud/ops/SetOp;->value:Ljava/lang/Object;

    return-void
.end method
