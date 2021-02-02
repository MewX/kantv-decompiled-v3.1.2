.class public final Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$OneofOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$OneofOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$OneofOptions;",
        "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$OneofOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27179
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    .line 27362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27180
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 27161
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 27185
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 27362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27186
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 27161
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 3

    .line 27364
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 27365
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27366
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27168
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$19000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 27661
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27662
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 27666
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 27667
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 27668
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27670
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 27189
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 27191
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;"
        }
    .end annotation

    .line 27540
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27541
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27542
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 27544
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27546
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions;",
            "Ljava/util/List<",
            "TType;>;>;TType;)",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;"
        }
    .end annotation

    .line 27280
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0

    .line 27262
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27522
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27523
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27524
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27525
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27527
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27483
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 27487
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27488
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27485
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 27491
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27504
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27505
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27506
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27507
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27509
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27462
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 27466
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27467
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27468
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27464
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 27470
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 27632
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 27633
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 27632
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public addUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 27644
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 27645
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 27644
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$OneofOptions;
    .locals 2

    .line 27215
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    .line 27216
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27217
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$OneofOptions;
    .locals 3

    .line 27223
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 27224
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    .line 27225
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 27227
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27228
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    .line 27230
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19502(Lcom/google/protobuf/DescriptorProtos$OneofOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 27232
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19502(Lcom/google/protobuf/DescriptorProtos$OneofOptions;Ljava/util/List;)Ljava/util/List;

    .line 27234
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27195
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    .line 27196
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27198
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 27200
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions;",
            "*>;)",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;"
        }
    .end annotation

    .line 27285
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0

    .line 27248
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0

    .line 27252
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27558
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27560
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    .line 27561
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27563
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27239
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

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

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 27211
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27207
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$19000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 27409
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27410
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1

    .line 27412
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public getUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 27593
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public getUninterpretedOptionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            ">;"
        }
    .end annotation

    .line 27656
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 27395
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27396
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 27398
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 27381
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27382
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 27384
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 27604
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1

    .line 27606
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 27618
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 27619
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 27621
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 27173
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$19100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    .line 27174
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27331
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 27332
    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27336
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

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

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27348
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 27354
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27350
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$OneofOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27351
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

    .line 27354
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 2

    .line 27297
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 27298
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 27299
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19500(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27300
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27301
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19500(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27302
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 27304
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27305
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19500(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27307
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_1

    .line 27310
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19500(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27311
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27312
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 27313
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 27314
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19500(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 27315
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->bitField0_:I

    .line 27316
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 27318
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 27320
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->access$19500(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 27324
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 27325
    iget-object p1, p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    .line 27326
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27288
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    if-eqz v0, :cond_0

    .line 27289
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1

    .line 27291
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

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

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0

    .line 27679
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27575
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27576
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27577
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27580
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;"
        }
    .end annotation

    .line 27274
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions;",
            "TType;>;TType;)",
            "Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;"
        }
    .end annotation

    .line 27268
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0

    .line 27244
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0

    .line 27257
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27445
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 27446
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27447
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27448
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27450
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 27424
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 27428
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 27429
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27430
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->onChanged()V

    goto :goto_0

    .line 27426
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 27432
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 0

    .line 27674
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27161
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    return-object p1
.end method
