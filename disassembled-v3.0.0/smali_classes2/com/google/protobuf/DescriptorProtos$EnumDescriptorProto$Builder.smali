.class public final Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

.field private valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14573
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 14764
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14841
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    const/4 v0, 0x0

    .line 15080
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 14574
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 14556
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 14579
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14764
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14841
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    const/4 p1, 0x0

    .line 15080
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 14580
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 14556
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureValueIsMutable()V
    .locals 3

    .line 14843
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 14844
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 14845
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14562
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$9500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15187
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15188
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15190
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    .line 15191
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 15192
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 15193
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 15195
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15068
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 15069
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 15073
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 15074
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 15075
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 15077
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 14583
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 14585
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 14586
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;"
        }
    .end annotation

    .line 14979
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14980
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14981
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 14983
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14985
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 14679
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14965
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14966
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14967
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14968
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14970
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14934
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 14938
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14939
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14940
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14936
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 14942
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addValue(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14951
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14952
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14953
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14954
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14956
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addValue(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14917
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 14921
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14922
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14923
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14919
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 14925
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addValueBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 15047
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 15048
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    .line 15047
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object v0
.end method

.method public addValueBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 15055
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 15056
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    .line 15055
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    .line 14618
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    .line 14619
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 14620
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 5

    .line 14626
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 14627
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 14632
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10002(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14633
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_2

    .line 14634
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 14635
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 14636
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14638
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 14640
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :goto_1
    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x2

    .line 14645
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 14646
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10202(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_2

    .line 14648
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10202(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 14650
    :goto_2
    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10302(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;I)I

    .line 14651
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14590
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 14591
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14592
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14593
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14594
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 14595
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    .line 14597
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 14599
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 14600
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_1

    .line 14602
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14604
    :goto_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 14665
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14821
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14822
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14823
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 14669
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOptions()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 15153
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 15154
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 15155
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 15157
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15159
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14993
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 14995
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14996
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14998
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14656
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 14614
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14610
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$9500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 14775
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14776
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 14777
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14779
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14780
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14781
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 14785
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 14793
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14794
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14795
    check-cast v0, Ljava/lang/String;

    .line 14796
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14798
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 14801
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 15093
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 15094
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 15096
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public getOptionsBuilder()Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 15166
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 15167
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    .line 15168
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;
    .locals 1

    .line 15174
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 15175
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;

    return-object v0

    .line 15177
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_1

    .line 15178
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 14876
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14877
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1

    .line 14879
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1
.end method

.method public getValueBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 15020
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public getValueBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    .line 15063
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .line 14866
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14867
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 14869
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 14856
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14857
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 14859
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;
    .locals 1

    .line 15027
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15028
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;

    return-object p1

    .line 15029
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15037
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 15038
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 15040
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .line 14769
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOptions()Z
    .locals 2

    .line 15087
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14567
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$9600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 14568
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14732
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 14733
    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14737
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14738
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

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

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14751
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 14757
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14753
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14754
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

    .line 14757
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .line 14691
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 14692
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14693
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14694
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10000(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14695
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    .line 14697
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    .line 14698
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14699
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14700
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 14701
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    goto :goto_0

    .line 14703
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14704
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14706
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 14709
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14710
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14711
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 14712
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 14713
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    .line 14714
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14715
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_4

    .line 14717
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 14719
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$10100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 14723
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14724
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 14726
    :cond_7
    iget-object p1, p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 14727
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14682
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    .line 14683
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 14685
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    .line 15133
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 15134
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 15136
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 15137
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 15138
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_0

    .line 15140
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 15142
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 15144
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15146
    :goto_1
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 15204
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 15006
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15007
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 15008
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15009
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 15011
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 14661
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 14812
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14813
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14814
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 14810
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 14834
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    .line 14835
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14836
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 14832
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 15120
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 15121
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 15122
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 15124
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15126
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 15103
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 15107
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 15108
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 15105
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 15110
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15112
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 14674
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 0

    .line 15199
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14556
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14904
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14905
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14906
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14907
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14909
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 14887
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 14891
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->ensureValueIsMutable()V

    .line 14892
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14893
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14889
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 14895
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method
