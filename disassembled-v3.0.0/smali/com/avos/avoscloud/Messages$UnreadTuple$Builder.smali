.class public final Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$UnreadTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;"
    }
.end annotation


# instance fields
.field private binaryMsg_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private convType_:I

.field private data_:Ljava/lang/Object;

.field private from_:Ljava/lang/Object;

.field private mentioned_:Z

.field private mid_:Ljava/lang/Object;

.field private patchTimestamp_:J

.field private timestamp_:J

.field private unread_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2506
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 2720
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2828
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2936
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 3012
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 3152
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 2507
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 2489
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 2512
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 2720
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2828
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2936
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 3012
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 3152
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 2513
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 2489
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2495
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2517
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$1400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 0

    .line 2635
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 2

    .line 2555
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    .line 2556
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2557
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 6

    .line 2563
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$UnreadTuple;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 2564
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2569
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$1602(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 2573
    :cond_1
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->unread_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$1702(Lcom/avos/avoscloud/Messages$UnreadTuple;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 2577
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$1802(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 2581
    :cond_3
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->timestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$1902(Lcom/avos/avoscloud/Messages$UnreadTuple;J)J

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 2585
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2002(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 2589
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2102(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 2593
    :cond_6
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->patchTimestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2202(Lcom/avos/avoscloud/Messages$UnreadTuple;J)J

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 2597
    :cond_7
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mentioned_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2302(Lcom/avos/avoscloud/Messages$UnreadTuple;Z)Z

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 2601
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2402(Lcom/avos/avoscloud/Messages$UnreadTuple;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 2605
    :cond_9
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->convType_:I

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2502(Lcom/avos/avoscloud/Messages$UnreadTuple;I)I

    .line 2606
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2602(Lcom/avos/avoscloud/Messages$UnreadTuple;I)I

    .line 2607
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 5

    .line 2521
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 2522
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2523
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 2524
    iput v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->unread_:I

    .line 2525
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2526
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2527
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    .line 2528
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->timestamp_:J

    .line 2529
    iget v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2530
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 2531
    iget v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2532
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 2533
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2534
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->patchTimestamp_:J

    .line 2535
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2536
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mentioned_:Z

    .line 2537
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2538
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 2539
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2540
    iput v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->convType_:I

    .line 2541
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clear()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBinaryMsg()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 3181
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3182
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 3183
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2777
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2778
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2779
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConvType()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 3213
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3214
    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->convType_:I

    .line 3215
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearData()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 3069
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3070
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 3071
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 0

    .line 2621
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFrom()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2993
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2994
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 2995
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMentioned()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 3146
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3147
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mentioned_:Z

    .line 3148
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMid()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2885
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2886
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2887
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 0

    .line 2625
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPatchTimestamp()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2

    .line 3114
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 3115
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->patchTimestamp_:J

    .line 3116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2

    .line 2930
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2931
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->timestamp_:J

    .line 2932
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUnread()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2822
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2823
    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->unread_:I

    .line 2824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2612
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

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

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->clone()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3163
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 2731
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2732
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2733
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2735
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2736
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2741
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2749
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2750
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2751
    check-cast v0, Ljava/lang/String;

    .line 2752
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2754
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 2757
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getConvType()I
    .locals 1

    .line 3198
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->convType_:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 3023
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 3024
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3025
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3027
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3028
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3029
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3033
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3041
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 3042
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3043
    check-cast v0, Ljava/lang/String;

    .line 3044
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3046
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    return-object v0

    .line 3049
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1

    .line 2551
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2547
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 2947
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 2948
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2949
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2951
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2952
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2953
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2957
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2965
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 2966
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2967
    check-cast v0, Ljava/lang/String;

    .line 2968
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2970
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    return-object v0

    .line 2973
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentioned()Z
    .locals 1

    .line 3131
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mentioned_:Z

    return v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 2839
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2840
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2841
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2843
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2844
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2845
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2849
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2857
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2858
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2859
    check-cast v0, Ljava/lang/String;

    .line 2860
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2862
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    return-object v0

    .line 2865
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 3099
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->patchTimestamp_:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 2915
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getUnread()I
    .locals 1

    .line 2807
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->unread_:I

    return v0
.end method

.method public hasBinaryMsg()Z
    .locals 2

    .line 3157
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 2725
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasConvType()Z
    .locals 2

    .line 3192
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasData()Z
    .locals 2

    .line 3017
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasFrom()Z
    .locals 2

    .line 2941
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasMentioned()Z
    .locals 2

    .line 3125
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasMid()Z
    .locals 2

    .line 2833
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 3093
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 2909
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

.method public hasUnread()Z
    .locals 2

    .line 2801
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

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

    .line 2500
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$1100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    const-class v2, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2501
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2692
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->hasCid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2695
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->hasUnread()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2

    .line 2647
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2648
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2649
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2650
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$1600(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2651
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    .line 2653
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasUnread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2654
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getUnread()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setUnread(I)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2656
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2657
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2658
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$1800(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    .line 2661
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2662
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setTimestamp(J)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2664
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2665
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2666
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2000(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 2667
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    .line 2669
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2670
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2671
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2100(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 2672
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    .line 2674
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasPatchTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2675
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getPatchTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2677
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMentioned()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2678
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMentioned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setMentioned(Z)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2680
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasBinaryMsg()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2681
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setBinaryMsg(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2683
    :cond_9
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasConvType()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2684
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getConvType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setConvType(I)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2686
    :cond_a
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->access$2700(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 2687
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2707
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2713
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2709
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$UnreadTuple;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2710
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

    .line 2713
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2638
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    if-eqz v0, :cond_0

    .line 2639
    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1

    .line 2641
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

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

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

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

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

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

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

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 0

    .line 3225
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryMsg(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3172
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3173
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 3174
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 3170
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2768
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2769
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2770
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 2766
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2790
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2791
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->cid_:Ljava/lang/Object;

    .line 2792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 2788
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setConvType(I)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 3204
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3205
    iput p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->convType_:I

    .line 3206
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3060
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3061
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 3062
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 3058
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3082
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3083
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->data_:Ljava/lang/Object;

    .line 3084
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 3080
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 0

    .line 2617
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2984
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2985
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 2986
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 2982
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3006
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3007
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->from_:Ljava/lang/Object;

    .line 3008
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 3004
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMentioned(Z)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 3137
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3138
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mentioned_:Z

    .line 3139
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2876
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2877
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2878
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 2874
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2898
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2899
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mid_:Ljava/lang/Object;

    .line 2900
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0

    .line 2896
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 3105
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 3106
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->patchTimestamp_:J

    .line 3107
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 0

    .line 2630
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimestamp(J)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2921
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2922
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->timestamp_:J

    .line 2923
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 0

    .line 3220
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnread(I)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2813
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->bitField0_:I

    .line 2814
    iput p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->unread_:I

    .line 2815
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->onChanged()V

    return-object p0
.end method
