.class public final Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$ReadCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$ReadCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private cids_:Lcom/google/protobuf/LazyStringList;

.field private convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            "Lcom/avos/avoscloud/Messages$ReadTuple$Builder;",
            "Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private convs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 29318
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29394
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 29488
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29134
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 29116
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 29139
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 29318
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29394
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 29488
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29140
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 29116
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureCidsIsMutable()V
    .locals 3

    .line 29396
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 29397
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 29398
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureConvsIsMutable()V
    .locals 3

    .line 29490
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 29491
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29492
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            "Lcom/avos/avoscloud/Messages$ReadTuple$Builder;",
            "Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 29715
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 29716
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 29720
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 29721
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 29722
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29724
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 29122
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$30100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 29144
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29145
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllCids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ReadCommand$Builder;"
        }
    .end annotation

    .line 29458
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureCidsIsMutable()V

    .line 29459
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29461
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllConvs(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ReadCommand$Builder;"
        }
    .end annotation

    .line 29626
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29627
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29628
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29630
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29632
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addCids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 29448
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureCidsIsMutable()V

    .line 29449
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 29450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0

    .line 29446
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addCidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 29481
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureCidsIsMutable()V

    .line 29482
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 29483
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0

    .line 29479
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addConvs(ILcom/avos/avoscloud/Messages$ReadTuple$Builder;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29612
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29613
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29614
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29615
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29617
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvs(ILcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29581
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 29585
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29586
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29587
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29583
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 29589
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvs(Lcom/avos/avoscloud/Messages$ReadTuple$Builder;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29598
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29599
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29600
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29601
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29603
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvs(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29564
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 29568
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29569
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29570
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29566
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 29572
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvsBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 2

    .line 29694
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29695
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v1

    .line 29694
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object v0
.end method

.method public addConvsBuilder(I)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 2

    .line 29702
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 29703
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v1

    .line 29702
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 0

    .line 29231
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 2

    .line 29173
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    .line 29174
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 29175
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 4

    .line 29181
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 29182
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 29187
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30702(Lcom/avos/avoscloud/Messages$ReadCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29188
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    .line 29189
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 29190
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29192
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30802(Lcom/avos/avoscloud/Messages$ReadCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 29193
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 29194
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 29195
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29196
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29198
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30902(Lcom/avos/avoscloud/Messages$ReadCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 29200
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30902(Lcom/avos/avoscloud/Messages$ReadCommand;Ljava/util/List;)Ljava/util/List;

    .line 29202
    :goto_1
    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$31002(Lcom/avos/avoscloud/Messages$ReadCommand;I)I

    .line 29203
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29149
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 29150
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29151
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29152
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 29153
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29154
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29156
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 29158
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29375
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29376
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29377
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCids()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29468
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 29469
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29470
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConvs()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29640
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29642
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29643
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29645
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 0

    .line 29217
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 0

    .line 29221
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29208
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 29329
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29330
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 29331
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29333
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29334
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29335
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 29339
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 29347
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29348
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29349
    check-cast v0, Ljava/lang/String;

    .line 29350
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29352
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 29355
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCids(I)Ljava/lang/String;
    .locals 1

    .line 29418
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 29425
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCidsCount()I
    .locals 1

    .line 29412
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 29406
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCidsList()Ljava/util/List;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getConvs(I)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1

    .line 29523
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29524
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p1

    .line 29526
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p1
.end method

.method public getConvsBuilder(I)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 29667
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public getConvsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ReadTuple$Builder;",
            ">;"
        }
    .end annotation

    .line 29710
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConvsCount()I
    .locals 1

    .line 29513
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29514
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 29516
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getConvsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation

    .line 29503
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29504
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29506
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConvsOrBuilder(I)Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;
    .locals 1

    .line 29674
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29675
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;

    return-object p1

    .line 29676
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;

    return-object p1
.end method

.method public getConvsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 29684
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 29685
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29687
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1

    .line 29169
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 29116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 29165
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$30100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 29323
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 29127
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$30200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ReadCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    .line 29128
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29291
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 29292
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvs(I)Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$ReadTuple;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 2

    .line 29243
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 29244
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29245
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29246
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30700(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29247
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    .line 29249
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30800(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 29250
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29251
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30800(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 29252
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 29254
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureCidsIsMutable()V

    .line 29255
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30800(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 29257
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    .line 29259
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 29260
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30900(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29261
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29262
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30900(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29263
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    goto :goto_1

    .line 29265
    :cond_4
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29266
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30900(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29268
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_2

    .line 29271
    :cond_5
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30900(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29272
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29273
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 29274
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29275
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30900(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    .line 29276
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29278
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$31100()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29279
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 29281
    :cond_7
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$30900(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29285
    :cond_8
    :goto_2
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->access$31200(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    .line 29286
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29305
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 29311
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29307
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$ReadCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29308
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 29311
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29234
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$ReadCommand;

    if-eqz v0, :cond_0

    .line 29235
    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1

    .line 29237
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 0

    .line 29733
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeConvs(I)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29653
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29654
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29655
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29656
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29658
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 29366
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29367
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29368
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0

    .line 29364
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 29388
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->bitField0_:I

    .line 29389
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cid_:Ljava/lang/Object;

    .line 29390
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0

    .line 29386
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 29435
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureCidsIsMutable()V

    .line 29436
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29437
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    return-object p0

    .line 29433
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setConvs(ILcom/avos/avoscloud/Messages$ReadTuple$Builder;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29551
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 29552
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29553
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29554
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29556
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setConvs(ILcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29534
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 29538
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->ensureConvsIsMutable()V

    .line 29539
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29540
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 29536
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 29542
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 0

    .line 29213
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 0

    .line 29226
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 0

    .line 29728
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29116
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method
