.class public final Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$PatchCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$PatchCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private lastPatchTime_:J

.field private patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            "Lcom/avos/avoscloud/Messages$PatchItem$Builder;",
            "Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private patches_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33467
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 33629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33468
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 33450
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 33473
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 33629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33474
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 33450
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensurePatchesIsMutable()V
    .locals 3

    .line 33631
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 33632
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33633
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 33456
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$35700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPatchesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            "Lcom/avos/avoscloud/Messages$PatchItem$Builder;",
            "Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 33856
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 33857
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 33861
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 33862
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 33863
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33865
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 33478
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33479
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getPatchesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPatches(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$PatchCommand$Builder;"
        }
    .end annotation

    .line 33767
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33768
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33769
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 33771
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33773
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPatches(ILcom/avos/avoscloud/Messages$PatchItem$Builder;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33753
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33754
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33755
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33756
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33758
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPatches(ILcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33722
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 33726
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33727
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33728
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33724
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 33730
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPatches(Lcom/avos/avoscloud/Messages$PatchItem$Builder;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33739
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33740
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33741
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33742
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33744
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPatches(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33705
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 33709
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33710
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33711
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33707
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 33713
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPatchesBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2

    .line 33835
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getPatchesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 33836
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v1

    .line 33835
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object v0
.end method

.method public addPatchesBuilder(I)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2

    .line 33843
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getPatchesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 33844
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v1

    .line 33843
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 0

    .line 33558
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 2

    .line 33505
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    .line 33506
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 33507
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 4

    .line 33513
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$PatchCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 33514
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    .line 33516
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_0

    .line 33518
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33519
    iget v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    .line 33521
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36302(Lcom/avos/avoscloud/Messages$PatchCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 33523
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36302(Lcom/avos/avoscloud/Messages$PatchCommand;Ljava/util/List;)Ljava/util/List;

    :goto_0
    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 33528
    :goto_1
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->lastPatchTime_:J

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36402(Lcom/avos/avoscloud/Messages$PatchCommand;J)J

    .line 33529
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36502(Lcom/avos/avoscloud/Messages$PatchCommand;I)I

    .line 33530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 2

    .line 33483
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 33484
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33485
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33486
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 33488
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const-wide/16 v0, 0x0

    .line 33490
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->lastPatchTime_:J

    .line 33491
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 0

    .line 33544
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLastPatchTime()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 2

    .line 33894
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 33895
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->lastPatchTime_:J

    .line 33896
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 0

    .line 33548
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPatches()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33781
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33782
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33783
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    .line 33784
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33786
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33535
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

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

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1

    .line 33501
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 33450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 33497
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$35700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLastPatchTime()J
    .locals 2

    .line 33879
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->lastPatchTime_:J

    return-wide v0
.end method

.method public getPatches(I)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1

    .line 33664
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33665
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p1

    .line 33667
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p1
.end method

.method public getPatchesBuilder(I)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 33808
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getPatchesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public getPatchesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$PatchItem$Builder;",
            ">;"
        }
    .end annotation

    .line 33851
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getPatchesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPatchesCount()I
    .locals 1

    .line 33654
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33655
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 33657
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getPatchesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation

    .line 33644
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33645
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 33647
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPatchesOrBuilder(I)Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;
    .locals 1

    .line 33815
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33816
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;

    return-object p1

    .line 33817
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;

    return-object p1
.end method

.method public getPatchesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 33825
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 33826
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 33828
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasLastPatchTime()Z
    .locals 2

    .line 33873
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

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

    .line 33461
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$35800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PatchCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    .line 33462
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 2

    .line 33570
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 33571
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 33572
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36300(Lcom/avos/avoscloud/Messages$PatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 33573
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33574
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36300(Lcom/avos/avoscloud/Messages$PatchCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33575
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 33577
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33578
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36300(Lcom/avos/avoscloud/Messages$PatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33580
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_1

    .line 33583
    :cond_2
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36300(Lcom/avos/avoscloud/Messages$PatchCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 33584
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33585
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 33586
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 33587
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36300(Lcom/avos/avoscloud/Messages$PatchCommand;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    .line 33588
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    .line 33590
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36600()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33591
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->getPatchesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 33593
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36300(Lcom/avos/avoscloud/Messages$PatchCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 33597
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->hasLastPatchTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33598
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->getLastPatchTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setLastPatchTime(J)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    .line 33600
    :cond_6
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->access$36700(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    .line 33601
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33615
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 33621
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33617
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$PatchCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33618
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

    .line 33621
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33561
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$PatchCommand;

    if-eqz v0, :cond_0

    .line 33562
    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1

    .line 33564
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

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

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

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

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

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

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

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 0

    .line 33906
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removePatches(I)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33794
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33795
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33796
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 33797
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33799
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 0

    .line 33540
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLastPatchTime(J)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33885
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->bitField0_:I

    .line 33886
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->lastPatchTime_:J

    .line 33887
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setPatches(ILcom/avos/avoscloud/Messages$PatchItem$Builder;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33692
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 33693
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33694
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33695
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33697
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPatches(ILcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33675
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patchesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 33679
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->ensurePatchesIsMutable()V

    .line 33680
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->patches_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33681
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->onChanged()V

    goto :goto_0

    .line 33677
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 33683
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 0

    .line 33553
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 0

    .line 33901
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33450
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method
