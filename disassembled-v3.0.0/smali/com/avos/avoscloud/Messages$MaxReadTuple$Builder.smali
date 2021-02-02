.class public final Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$MaxReadTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxAckTimestamp_:J

.field private maxReadTimestamp_:J

.field private pid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28327
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 28466
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28328
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 28310
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 28333
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 28466
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28334
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 28310
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28316
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$28900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 28338
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->access$29300()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 0

    .line 28414
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 2

    .line 28362
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    .line 28363
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 28364
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 6

    .line 28370
    new-instance v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 28371
    iget v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 28376
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->access$29502(Lcom/avos/avoscloud/Messages$MaxReadTuple;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 28380
    :cond_1
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxAckTimestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->access$29602(Lcom/avos/avoscloud/Messages$MaxReadTuple;J)J

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 28384
    :cond_2
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxReadTimestamp_:J

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->access$29702(Lcom/avos/avoscloud/Messages$MaxReadTuple;J)J

    .line 28385
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->access$29802(Lcom/avos/avoscloud/Messages$MaxReadTuple;I)I

    .line 28386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 3

    .line 28342
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 28343
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28344
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 28345
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxAckTimestamp_:J

    .line 28346
    iget v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    .line 28347
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxReadTimestamp_:J

    .line 28348
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 0

    .line 28400
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMaxAckTimestamp()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2

    .line 28568
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 28569
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxAckTimestamp_:J

    .line 28570
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxReadTimestamp()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2

    .line 28600
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 28601
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxReadTimestamp_:J

    .line 28602
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 0

    .line 28404
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPid()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28523
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    .line 28524
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getPid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28525
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28391
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

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

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1

    .line 28358
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 28310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28354
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$28900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAckTimestamp()J
    .locals 2

    .line 28553
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxAckTimestamp_:J

    return-wide v0
.end method

.method public getMaxReadTimestamp()J
    .locals 2

    .line 28585
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxReadTimestamp_:J

    return-wide v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 2

    .line 28477
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28478
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 28479
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28481
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28482
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28483
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 28487
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 28495
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28496
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28497
    check-cast v0, Ljava/lang/String;

    .line 28498
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28500
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    return-object v0

    .line 28503
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMaxAckTimestamp()Z
    .locals 2

    .line 28547
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

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

.method public hasMaxReadTimestamp()Z
    .locals 2

    .line 28579
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

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

    .line 28471
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

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

    .line 28321
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$29000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    const-class v2, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    .line 28322
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2

    .line 28426
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 28427
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasPid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28428
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    .line 28429
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->access$29500(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28430
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    .line 28432
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxAckTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28433
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxAckTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setMaxAckTimestamp(J)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    .line 28435
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxReadTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28436
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxReadTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setMaxReadTimestamp(J)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    .line 28438
    :cond_3
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->access$29900(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    .line 28439
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28453
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 28459
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28455
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$MaxReadTuple;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28456
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

    .line 28459
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28417
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    if-eqz v0, :cond_0

    .line 28418
    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1

    .line 28420
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

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

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

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

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

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

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

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 0

    .line 28612
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 0

    .line 28396
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAckTimestamp(J)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28559
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    .line 28560
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxAckTimestamp_:J

    .line 28561
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxReadTimestamp(J)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28591
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    .line 28592
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->maxReadTimestamp_:J

    .line 28593
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public setPid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 28514
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    .line 28515
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28516
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0

    .line 28512
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 28536
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->bitField0_:I

    .line 28537
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->pid_:Ljava/lang/Object;

    .line 28538
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->onChanged()V

    return-object p0

    .line 28534
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 0

    .line 28409
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 0

    .line 28607
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28310
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method
