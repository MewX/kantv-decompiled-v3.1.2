.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ccEnableArenas_:Z

.field private ccGenericServices_:Z

.field private csharpNamespace_:Ljava/lang/Object;

.field private deprecated_:Z

.field private goPackage_:Ljava/lang/Object;

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenericServices_:Z

.field private javaMultipleFiles_:Z

.field private javaOuterClassname_:Ljava/lang/Object;

.field private javaPackage_:Ljava/lang/Object;

.field private javaStringCheckUtf8_:Z

.field private objcClassPrefix_:Ljava/lang/Object;

.field private optimizeFor_:I

.field private phpClassPrefix_:Ljava/lang/Object;

.field private phpGenericServices_:Z

.field private phpNamespace_:Ljava/lang/Object;

.field private pyGenericServices_:Z

.field private swiftPrefix_:Ljava/lang/Object;

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
    .locals 2

    .line 20748
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    const-string v0, ""

    .line 21110
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 21228
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 21536
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 21572
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21984
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 22090
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 22190
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 22308
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 22414
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 22527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 20749
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 20730
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 20754
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 21110
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 21228
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 21536
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 21572
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21984
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 22090
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 22190
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 22308
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 22414
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 22527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 20755
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 20730
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 3

    .line 22529
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 22530
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 22531
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 20737
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$13800()Lcom/google/protobuf/Descriptors$Descriptor;

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

    .line 22826
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 22827
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 22831
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 22832
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 22833
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 22835
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 20758
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 20760
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 22705
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22706
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22707
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 22709
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22711
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "Ljava/util/List<",
            "TType;>;>;TType;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 20959
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 20941
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22687
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22688
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22689
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22690
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22692
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22648
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 22652
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22653
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22654
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22650
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 22656
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22669
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22670
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22671
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22672
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22674
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22627
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 22631
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22632
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22633
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22629
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 22635
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 22797
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 22798
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 22797
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public addUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 22809
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 22810
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    .line 22809
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 2

    .line 20820
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    .line 20821
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 20822
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 5

    .line 20828
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 20829
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 20834
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 20838
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 20842
    :cond_2
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 20846
    :cond_3
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 20850
    :cond_4
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 20854
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14802(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 20858
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 20862
    :cond_7
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 20866
    :cond_8
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 20870
    :cond_9
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 20874
    :cond_a
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    .line 20878
    :cond_b
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x1000

    .line 20882
    :cond_c
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x2000

    .line 20886
    :cond_d
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x4000

    .line 20890
    :cond_e
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x8000

    and-int/2addr v2, v1

    const v4, 0x8000

    if-ne v2, v4, :cond_f

    const v2, 0x8000

    or-int/2addr v3, v2

    .line 20894
    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    const/high16 v4, 0x10000

    if-ne v2, v4, :cond_10

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    .line 20898
    :cond_10
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    const/high16 v1, 0x20000

    or-int/2addr v3, v1

    .line 20902
    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20903
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_13

    .line 20904
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    .line 20905
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 20906
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20908
    :cond_12
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 20910
    :cond_13
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 20912
    :goto_1
    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16202(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    .line 20913
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    .line 20764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const-string v0, ""

    .line 20765
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 20766
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20767
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 20768
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 20769
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 20770
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20771
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 20772
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20773
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 20774
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v2, 0x1

    .line 20775
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 20776
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20777
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20778
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20779
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 20780
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20781
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 20782
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20783
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 20784
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20785
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    .line 20786
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20787
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 20788
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20789
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    .line 20790
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20791
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 20792
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20793
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 20794
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20795
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 20796
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20797
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 20798
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20799
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 20800
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20801
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20802
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 20803
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 20805
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCcEnableArenas()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21978
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21979
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    .line 21980
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCcGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21770
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21771
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 21772
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCsharpNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22167
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22168
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 22169
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21926
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21927
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 21928
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "*>;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 20964
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 20927
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearGoPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21669
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21670
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21671
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJavaGenerateEqualsAndHash()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21462
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21463
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 21464
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJavaGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21802
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21803
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 21804
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJavaMultipleFiles()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21414
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21415
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 21416
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21325
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21326
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 21327
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJavaPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21202
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21203
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 21204
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearJavaStringCheckUtf8()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21530
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21531
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 21532
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearObjcClassPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22066
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22067
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 22068
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 20931
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21566
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 21567
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 21568
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPhpClassPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 22390
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22391
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 22392
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPhpGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21866
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21867
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    .line 21868
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPhpNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 22501
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22502
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 22503
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPyGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21834
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21835
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 21836
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSwiftPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 22282
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22283
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 22284
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 22723
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 22725
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22726
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22728
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 20918
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcEnableArenas()Z
    .locals 1

    .line 21953
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .line 21731
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    return v0
.end method

.method public getCsharpNamespace()Ljava/lang/String;
    .locals 2

    .line 22109
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 22110
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 22111
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22113
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22114
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22115
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 22119
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCsharpNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22131
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 22132
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22133
    check-cast v0, Ljava/lang/String;

    .line 22134
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22136
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    return-object v0

    .line 22139
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 20816
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 20730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .line 21897
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 20812
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$13800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 2

    .line 21599
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21600
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 21601
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21603
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21604
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21605
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 21609
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGoPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 21625
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21626
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21627
    check-cast v0, Ljava/lang/String;

    .line 21628
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21630
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    return-object v0

    .line 21633
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21439
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .line 21787
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .line 21381
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 2

    .line 21255
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 21256
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 21257
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21259
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21260
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21261
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 21265
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 21281
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 21282
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21283
    check-cast v0, Ljava/lang/String;

    .line 21284
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21286
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    return-object v0

    .line 21289
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 2

    .line 21135
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 21136
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 21137
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21139
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21140
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21141
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 21145
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJavaPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 21160
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 21161
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21162
    check-cast v0, Ljava/lang/String;

    .line 21163
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21165
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    return-object v0

    .line 21168
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .line 21497
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public getObjcClassPrefix()Ljava/lang/String;
    .locals 2

    .line 22005
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 22006
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 22007
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22009
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22010
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22011
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 22015
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getObjcClassPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22028
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 22029
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22030
    check-cast v0, Ljava/lang/String;

    .line 22031
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22033
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    return-object v0

    .line 22036
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 21547
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21548
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    :cond_0
    return-object v0
.end method

.method public getPhpClassPrefix()Ljava/lang/String;
    .locals 2

    .line 22329
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 22330
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 22331
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22333
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22334
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22335
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 22339
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhpClassPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22352
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 22353
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22354
    check-cast v0, Ljava/lang/String;

    .line 22355
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22357
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    return-object v0

    .line 22360
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPhpGenericServices()Z
    .locals 1

    .line 21851
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    return v0
.end method

.method public getPhpNamespace()Ljava/lang/String;
    .locals 2

    .line 22437
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 22438
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 22439
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22441
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22442
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22443
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 22447
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhpNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22461
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 22462
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22463
    check-cast v0, Ljava/lang/String;

    .line 22464
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22466
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    return-object v0

    .line 22469
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .line 21819
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    return v0
.end method

.method public getSwiftPrefix()Ljava/lang/String;
    .locals 2

    .line 22215
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 22216
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 22217
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22219
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22220
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22221
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 22225
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSwiftPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22240
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 22241
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22242
    check-cast v0, Ljava/lang/String;

    .line 22243
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22245
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    return-object v0

    .line 22248
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 22574
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22575
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1

    .line 22577
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public getUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 22758
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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

    .line 22821
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 22560
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22561
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 22563
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

    .line 22546
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22547
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 22549
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 22769
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22770
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1

    .line 22771
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

    .line 22783
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 22784
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 22786
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCcEnableArenas()Z
    .locals 2

    .line 21942
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCcGenericServices()Z
    .locals 2

    .line 21713
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCsharpNamespace()Z
    .locals 2

    .line 22099
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeprecated()Z
    .locals 2

    .line 21884
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGoPackage()Z
    .locals 2

    .line 21585
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJavaGenerateEqualsAndHash()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21429
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJavaGenericServices()Z
    .locals 2

    .line 21781
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 2

    .line 21366
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 2

    .line 21241
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasJavaPackage()Z
    .locals 2

    .line 21122
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasJavaStringCheckUtf8()Z
    .locals 2

    .line 21482
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObjcClassPrefix()Z
    .locals 2

    .line 21994
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 2

    .line 21541
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhpClassPrefix()Z
    .locals 2

    .line 22318
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhpGenericServices()Z
    .locals 2

    .line 21845
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhpNamespace()Z
    .locals 2

    .line 22425
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPyGenericServices()Z
    .locals 2

    .line 21813
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSwiftPrefix()Z
    .locals 2

    .line 22202
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

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

    .line 20742
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$13900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 20743
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21080
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 21081
    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21085
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->extensionsAreInitialized()Z

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

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21097
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 21103
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21099
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$FileOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21100
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

    .line 21103
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    .line 20976
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 20977
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20978
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20979
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14300(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 20980
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20982
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20983
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20984
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 20985
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20987
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20988
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 20990
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20991
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 20993
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20994
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaStringCheckUtf8(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 20996
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20997
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 20999
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21000
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21001
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14900(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21002
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 21004
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21005
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21007
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21008
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21010
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21011
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21013
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21014
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setPhpGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21016
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 21017
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21019
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 21020
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcEnableArenas(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21022
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 21023
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21024
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 21025
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 21027
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 21028
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21029
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 21030
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 21032
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21033
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21034
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 21035
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 21037
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 21038
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21039
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15900(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 21040
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 21042
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 21043
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21044
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 21045
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 21047
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v1, -0x40001

    if-nez v0, :cond_14

    .line 21048
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 21049
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 21050
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 21051
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    goto :goto_0

    .line 21053
    :cond_13
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 21054
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21056
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_1

    .line 21059
    :cond_14
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 21060
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 21061
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 21062
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 21063
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 21064
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21065
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_15

    .line 21067
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_15
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 21069
    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$16100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 21073
    :cond_17
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 21074
    iget-object p1, p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21075
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 20967
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 20968
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1

    .line 20970
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

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 22844
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22740
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22741
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22742
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22743
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22745
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCcEnableArenas(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21964
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21965
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccEnableArenas_:Z

    .line 21966
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21749
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21750
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 21751
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setCsharpNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 22154
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22155
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 22156
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22152
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCsharpNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 22184
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22185
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->csharpNamespace_:Ljava/lang/Object;

    .line 22186
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22182
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21910
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21911
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 21912
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 20953
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "TType;>;TType;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 20947
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 20923
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGoPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21652
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21653
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21654
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 21650
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setGoPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21690
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21691
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 21692
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 21688
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21449
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21450
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 21451
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21793
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21794
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 21795
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21396
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21397
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 21398
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21308
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21309
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 21310
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 21306
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setJavaOuterClassnameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21346
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21347
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 21348
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 21344
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21186
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21187
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 21188
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 21184
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setJavaPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21222
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21223
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 21224
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 21220
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setJavaStringCheckUtf8(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21512
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21513
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 21514
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setObjcClassPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 22052
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22053
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 22054
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22050
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setObjcClassPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 22084
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22085
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->objcClassPrefix_:Ljava/lang/Object;

    .line 22086
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22082
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21557
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21558
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:I

    .line 21559
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 21555
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPhpClassPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 22376
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22377
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 22378
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22374
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPhpClassPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 22408
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22409
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpClassPrefix_:Ljava/lang/Object;

    .line 22410
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22406
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPhpGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21857
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21858
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpGenericServices_:Z

    .line 21859
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setPhpNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 22486
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22487
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 22488
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22484
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPhpNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 22520
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22521
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->phpNamespace_:Ljava/lang/Object;

    .line 22522
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22518
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 21825
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 21826
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 21827
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 20936
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSwiftPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 22266
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22267
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 22268
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22264
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSwiftPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 22302
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 22303
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->swiftPrefix_:Ljava/lang/Object;

    .line 22304
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    return-object p0

    .line 22300
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22610
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22611
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22612
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22613
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22615
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 22589
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 22593
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 22594
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22595
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    goto :goto_0

    .line 22591
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 22597
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 0

    .line 22839
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 20730
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method
