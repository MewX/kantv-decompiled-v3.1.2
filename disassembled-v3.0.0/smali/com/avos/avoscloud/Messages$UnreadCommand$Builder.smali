.class public final Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$UnreadCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            "Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;",
            "Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private convs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation
.end field

.field private notifTime_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16111
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 16278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16112
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 16094
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 16117
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 16278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16118
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 16094
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureConvsIsMutable()V
    .locals 3

    .line 16280
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 16281
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16282
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            "Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;",
            "Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16505
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16506
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 16510
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 16511
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 16512
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16514
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16100
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$16500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 16122
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$16900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16123
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllConvs(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;"
        }
    .end annotation

    .line 16416
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16417
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16418
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 16420
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16422
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvs(ILcom/avos/avoscloud/Messages$UnreadTuple$Builder;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16402
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16403
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16404
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16405
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16407
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvs(ILcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16371
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16375
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16376
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16377
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16373
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 16379
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvs(Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16388
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16389
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16390
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16391
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16393
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvs(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16354
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 16358
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16359
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16360
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16356
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 16362
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addConvsBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2

    .line 16484
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16485
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v1

    .line 16484
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object v0
.end method

.method public addConvsBuilder(I)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2

    .line 16492
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16493
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v1

    .line 16492
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 0

    .line 16202
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 2

    .line 16149
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    .line 16150
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 16151
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 4

    .line 16157
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$UnreadCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 16158
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    .line 16160
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_0

    .line 16162
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16163
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    .line 16165
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17102(Lcom/avos/avoscloud/Messages$UnreadCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 16167
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17102(Lcom/avos/avoscloud/Messages$UnreadCommand;Ljava/util/List;)Ljava/util/List;

    :goto_0
    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 16172
    :goto_1
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->notifTime_:J

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17202(Lcom/avos/avoscloud/Messages$UnreadCommand;J)J

    .line 16173
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17302(Lcom/avos/avoscloud/Messages$UnreadCommand;I)I

    .line 16174
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 2

    .line 16127
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 16128
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16130
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 16132
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const-wide/16 v0, 0x0

    .line 16134
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->notifTime_:J

    .line 16135
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConvs()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16430
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16432
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    .line 16433
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16435
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 0

    .line 16188
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearNotifTime()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 2

    .line 16543
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 16544
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->notifTime_:J

    .line 16545
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 0

    .line 16192
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16179
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

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

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConvs(I)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1

    .line 16313
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16314
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p1

    .line 16316
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p1
.end method

.method public getConvsBuilder(I)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 16457
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public getConvsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;",
            ">;"
        }
    .end annotation

    .line 16500
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConvsCount()I
    .locals 1

    .line 16303
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16304
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 16306
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
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation

    .line 16293
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16294
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16296
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConvsOrBuilder(I)Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;
    .locals 1

    .line 16464
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16465
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;

    return-object p1

    .line 16466
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;

    return-object p1
.end method

.method public getConvsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16474
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 16475
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16477
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1

    .line 16145
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 16094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16141
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$16500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNotifTime()J
    .locals 2

    .line 16528
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->notifTime_:J

    return-wide v0
.end method

.method public hasNotifTime()Z
    .locals 2

    .line 16522
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 16105
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$16600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$UnreadCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    .line 16106
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16250
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 16251
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvs(I)Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->isInitialized()Z

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

.method public mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 2

    .line 16214
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 16215
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 16216
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17100(Lcom/avos/avoscloud/Messages$UnreadCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16217
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16218
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17100(Lcom/avos/avoscloud/Messages$UnreadCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16219
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 16221
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16222
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17100(Lcom/avos/avoscloud/Messages$UnreadCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16224
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_1

    .line 16227
    :cond_2
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17100(Lcom/avos/avoscloud/Messages$UnreadCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16228
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16229
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 16230
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 16231
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17100(Lcom/avos/avoscloud/Messages$UnreadCommand;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    .line 16232
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    .line 16234
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16235
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->getConvsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 16237
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17100(Lcom/avos/avoscloud/Messages$UnreadCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 16241
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->hasNotifTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16242
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getNotifTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->setNotifTime(J)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    .line 16244
    :cond_6
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->access$17500(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    .line 16245
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16264
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 16270
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16266
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$UnreadCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16267
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

    .line 16270
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16205
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-eqz v0, :cond_0

    .line 16206
    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1

    .line 16208
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

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

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

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

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

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

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

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 0

    .line 16555
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeConvs(I)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16443
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16444
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16445
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16446
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16448
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setConvs(ILcom/avos/avoscloud/Messages$UnreadTuple$Builder;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16341
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16342
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16343
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16344
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16346
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setConvs(ILcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16324
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16328
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->ensureConvsIsMutable()V

    .line 16329
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->convs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16330
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    goto :goto_0

    .line 16326
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 16332
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 0

    .line 16184
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNotifTime(J)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16534
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->bitField0_:I

    .line 16535
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->notifTime_:J

    .line 16536
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 0

    .line 16197
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 0

    .line 16550
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 16094
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method
