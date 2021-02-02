.class public final Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$ReadTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$ReadTuple$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private mid_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27547
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 27691
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27799
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27548
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 27530
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 27553
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 27691
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27799
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27554
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 27530
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27536
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$27700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 27558
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28100()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 0

    .line 27634
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 2

    .line 27582
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    .line 27583
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadTuple;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27584
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 6

    .line 27590
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadTuple;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$ReadTuple;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 27591
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 27596
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28302(Lcom/avos/avoscloud/Messages$ReadTuple;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 27600
    :cond_1
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->timestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28402(Lcom/avos/avoscloud/Messages$ReadTuple;J)J

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 27604
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28502(Lcom/avos/avoscloud/Messages$ReadTuple;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27605
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28602(Lcom/avos/avoscloud/Messages$ReadTuple;I)I

    .line 27606
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 3

    .line 27562
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 27563
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27564
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 27565
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->timestamp_:J

    .line 27566
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27567
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27568
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27748
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27749
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27750
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 0

    .line 27620
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMid()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27856
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27857
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27858
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 0

    .line 27624
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearTimestamp()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 2

    .line 27793
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 27794
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->timestamp_:J

    .line 27795
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27611
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

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

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 27702
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27703
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 27704
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27706
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27707
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27708
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 27712
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 27720
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27721
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27722
    check-cast v0, Ljava/lang/String;

    .line 27723
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27725
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 27728
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1

    .line 27578
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27574
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$27700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 27810
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27811
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 27812
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27814
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27815
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27816
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 27820
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 27828
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27829
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27830
    check-cast v0, Ljava/lang/String;

    .line 27831
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27833
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    return-object v0

    .line 27836
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 27778
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasCid()Z
    .locals 2

    .line 27696
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMid()Z
    .locals 2

    .line 27804
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 27772
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

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

    .line 27541
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$27800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ReadTuple;

    const-class v2, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    .line 27542
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 27666
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->hasCid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 2

    .line 27646
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 27647
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27648
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27649
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28300(Lcom/avos/avoscloud/Messages$ReadTuple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27650
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    .line 27652
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27653
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setTimestamp(J)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    .line 27655
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasMid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27656
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27657
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28500(Lcom/avos/avoscloud/Messages$ReadTuple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27658
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    .line 27660
    :cond_3
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->access$28700(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    .line 27661
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27678
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 27684
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27680
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$ReadTuple;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27681
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

    .line 27684
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27637
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$ReadTuple;

    if-eqz v0, :cond_0

    .line 27638
    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1

    .line 27640
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

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

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

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

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

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

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

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 0

    .line 27881
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 27739
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27740
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27741
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0

    .line 27737
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 27761
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27762
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 27763
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0

    .line 27759
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 0

    .line 27616
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 27847
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27848
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27849
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0

    .line 27845
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 27869
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27870
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 27871
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0

    .line 27867
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 0

    .line 27629
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimestamp(J)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27784
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->bitField0_:I

    .line 27785
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->timestamp_:J

    .line 27786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 0

    .line 27876
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27530
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method
