.class public final Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientStreaming_:Z

.field private inputType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

.field private outputType_:Ljava/lang/Object;

.field private serverStreaming_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17956
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 18140
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18216
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18322
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 18398
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 17957
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 17939
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 17962
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 18140
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18216
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18322
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 18398
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 17963
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 17939
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17945
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 18505
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 18506
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18508
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    .line 18509
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 18510
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 18511
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 18513
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 17966
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 17968
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 18070
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 2

    .line 18002
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    .line 18003
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 18004
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 5

    .line 18010
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 18011
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 18016
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13002(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 18020
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13102(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 18024
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13202(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 18028
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_4

    .line 18029
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13302(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_1

    .line 18031
    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13302(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    :goto_1
    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 18036
    :cond_5
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13402(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 18040
    :cond_6
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13502(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 18041
    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13602(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;I)I

    .line 18042
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .line 17972
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 17973
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17974
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 17975
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 17976
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 17977
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 17978
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 17979
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17980
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_0

    .line 17982
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 17984
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 17985
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    .line 17986
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 17987
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    .line 17988
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientStreaming()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18558
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 18559
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    .line 18560
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 18056
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearInputType()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18298
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18299
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18300
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18197
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18198
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18199
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 18060
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOptions()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18471
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 18472
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 18473
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 18475
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18477
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOutputType()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18379
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18380
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 18381
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public clearServerStreaming()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18606
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 18607
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    .line 18608
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18047
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .line 18535
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 17998
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 17939
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17994
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 2

    .line 18237
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18238
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 18239
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18241
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18242
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18243
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 18247
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInputTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18260
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18261
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18262
    check-cast v0, Ljava/lang/String;

    .line 18263
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18265
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    return-object v0

    .line 18268
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 18151
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18152
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 18153
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18155
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18156
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18157
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 18161
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18169
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18170
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18171
    check-cast v0, Ljava/lang/String;

    .line 18172
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18174
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 18177
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 18411
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 18412
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 18414
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public getOptionsBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 18484
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18485
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 18486
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;
    .locals 1

    .line 18492
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 18493
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;

    return-object v0

    .line 18495
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    .line 18496
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getOutputType()Ljava/lang/String;
    .locals 2

    .line 18333
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 18334
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 18335
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18337
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18338
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18339
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 18343
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOutputTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18351
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 18352
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18353
    check-cast v0, Ljava/lang/String;

    .line 18354
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18356
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    return-object v0

    .line 18359
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .line 18583
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    return v0
.end method

.method public hasClientStreaming()Z
    .locals 2

    .line 18525
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

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

.method public hasInputType()Z
    .locals 2

    .line 18226
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 18145
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

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

    .line 18405
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

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

.method public hasOutputType()Z
    .locals 2

    .line 18327
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

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

.method public hasServerStreaming()Z
    .locals 2

    .line 18573
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 17950
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 17951
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 18113
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18114
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
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

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18127
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18133
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18129
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18130
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

    .line 18133
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18082
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 18083
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18084
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18085
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13000(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18086
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 18088
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18089
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18090
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13100(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18091
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 18093
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18094
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18095
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->access$13200(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 18096
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 18098
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18099
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 18101
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18102
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setClientStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 18104
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18105
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setServerStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 18107
    :cond_6
    iget-object p1, p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 18108
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18073
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    .line 18074
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 18076
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

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOptions(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 3

    .line 18451
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 18452
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 18454
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 18455
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 18456
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_0

    .line 18458
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 18460
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 18462
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18464
    :goto_1
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 18618
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClientStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18545
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18546
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    .line 18547
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 18052
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInputType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18284
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18285
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18286
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 18282
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setInputTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18316
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18317
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 18318
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 18314
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18188
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18189
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18190
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 18186
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18210
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18211
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 18212
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 18208
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18438
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 18439
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 18440
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 18442
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18444
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18421
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 18425
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 18426
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 18423
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 18428
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18430
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public setOutputType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18370
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18371
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 18372
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 18368
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOutputTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18392
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18393
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 18394
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0

    .line 18390
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 18065
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setServerStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 18593
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 18594
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    .line 18595
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 18613
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17939
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method
