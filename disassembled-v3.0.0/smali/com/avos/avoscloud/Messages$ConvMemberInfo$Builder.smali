.class public final Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$ConvMemberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private infoId_:Ljava/lang/Object;

.field private pid_:Ljava/lang/Object;

.field private role_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5421
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 5564
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5640
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5716
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5422
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 5404
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5427
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 5564
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5640
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5716
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5428
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 5404
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5410
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$4900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5432
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5300()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 0

    .line 5508
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 2

    .line 5456
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    .line 5457
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5458
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->build()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->build()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 5

    .line 5464
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 5465
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5470
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5502(Lcom/avos/avoscloud/Messages$ConvMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5474
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5602(Lcom/avos/avoscloud/Messages$ConvMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 5478
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5702(Lcom/avos/avoscloud/Messages$ConvMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5479
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5802(Lcom/avos/avoscloud/Messages$ConvMemberInfo;I)I

    .line 5480
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 2

    .line 5436
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 5437
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5438
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5439
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5440
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5441
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5442
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 0

    .line 5494
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearInfoId()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5773
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5774
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getInfoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5775
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 0

    .line 5498
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPid()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5621
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5622
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getPid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5623
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRole()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5697
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5698
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getRole()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5699
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5485
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

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

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1

    .line 5452
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5448
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$4900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfoId()Ljava/lang/String;
    .locals 2

    .line 5727
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5728
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5729
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5731
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5732
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5733
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 5737
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInfoIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5745
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5746
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5747
    check-cast v0, Ljava/lang/String;

    .line 5748
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5750
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    return-object v0

    .line 5753
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 2

    .line 5575
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5576
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5577
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5579
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5580
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5581
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 5585
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5593
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5594
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5595
    check-cast v0, Ljava/lang/String;

    .line 5596
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5598
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    return-object v0

    .line 5601
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 2

    .line 5651
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5652
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5653
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5655
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5656
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5657
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 5661
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRoleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5669
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5670
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5671
    check-cast v0, Ljava/lang/String;

    .line 5672
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5674
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    return-object v0

    .line 5677
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasInfoId()Z
    .locals 2

    .line 5721
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

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

.method public hasPid()Z
    .locals 2

    .line 5569
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRole()Z
    .locals 2

    .line 5645
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

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

    .line 5415
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$5000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    const-class v2, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    .line 5416
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5520
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5521
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasPid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5522
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5523
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5500(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5524
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    .line 5526
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasRole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5527
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5528
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5600(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5529
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    .line 5531
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasInfoId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5532
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5533
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5700(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5534
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    .line 5536
    :cond_3
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->access$5900(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    .line 5537
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5551
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5557
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5553
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5554
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

    .line 5557
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5511
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-eqz v0, :cond_0

    .line 5512
    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1

    .line 5514
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

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

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

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

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

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

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

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 0

    .line 5798
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 0

    .line 5490
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInfoId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5764
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5765
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5766
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0

    .line 5762
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setInfoIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5786
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5787
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->infoId_:Ljava/lang/Object;

    .line 5788
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0

    .line 5784
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5612
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5613
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5614
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0

    .line 5610
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5634
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5635
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->pid_:Ljava/lang/Object;

    .line 5636
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0

    .line 5632
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 0

    .line 5503
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRole(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5688
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5689
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5690
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0

    .line 5686
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRoleBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5710
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->bitField0_:I

    .line 5711
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->role_:Ljava/lang/Object;

    .line 5712
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->onChanged()V

    return-object p0

    .line 5708
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 0

    .line 5793
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5404
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method
