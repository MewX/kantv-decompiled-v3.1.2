.class public final Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$RoomCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$RoomCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private byPeerId_:Ljava/lang/Object;

.field private n_:Ljava/lang/Object;

.field private roomId_:Ljava/lang/Object;

.field private roomPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private s_:Ljava/lang/Object;

.field private t_:J

.field private transient_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23044
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 23233
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23309
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23417
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23525
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 23618
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23045
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 23027
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 23050
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 23233
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23309
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23417
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23525
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 23618
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23051
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 23027
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureRoomPeerIdsIsMutable()V
    .locals 3

    .line 23527
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 23528
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 23529
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 23033
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$22300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 23055
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$22700()Z

    return-void
.end method


# virtual methods
.method public addAllRoomPeerIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$RoomCommand$Builder;"
        }
    .end annotation

    .line 23589
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->ensureRoomPeerIdsIsMutable()V

    .line 23590
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 23592
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 0

    .line 23156
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRoomPeerIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23579
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->ensureRoomPeerIdsIsMutable()V

    .line 23580
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 23581
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23577
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRoomPeerIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23612
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->ensureRoomPeerIdsIsMutable()V

    .line 23613
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 23614
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23610
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 2

    .line 23087
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    .line 23088
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 23089
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 6

    .line 23095
    new-instance v0, Lcom/avos/avoscloud/Messages$RoomCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$RoomCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 23096
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 23101
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$22902(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 23105
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23002(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 23109
    :cond_2
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->t_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23102(Lcom/avos/avoscloud/Messages$RoomCommand;J)J

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 23113
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23202(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 23117
    :cond_4
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->transient_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23302(Lcom/avos/avoscloud/Messages$RoomCommand;Z)Z

    .line 23118
    iget v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    .line 23119
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 23120
    iget v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23122
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23402(Lcom/avos/avoscloud/Messages$RoomCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 23126
    :cond_6
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23502(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23127
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23602(Lcom/avos/avoscloud/Messages$RoomCommand;I)I

    .line 23128
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 3

    .line 23059
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 23060
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23061
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23062
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23063
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 23064
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->t_:J

    .line 23065
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23066
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23067
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 23068
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->transient_:Z

    .line 23069
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23070
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 23071
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23072
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23073
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearByPeerId()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23675
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23676
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getByPeerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23677
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 0

    .line 23142
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearN()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23474
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23475
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23476
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 0

    .line 23146
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRoomId()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23290
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23291
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23292
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRoomPeerIds()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23599
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 23600
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23601
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearS()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23366
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23367
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23368
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearT()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 2

    .line 23411
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 23412
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->t_:J

    .line 23413
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTransient()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23519
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 23520
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->transient_:Z

    .line 23521
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23133
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

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

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getByPeerId()Ljava/lang/String;
    .locals 2

    .line 23629
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23630
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 23631
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23633
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23634
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23635
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 23639
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getByPeerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 23647
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23648
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23649
    check-cast v0, Ljava/lang/String;

    .line 23650
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23652
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    return-object v0

    .line 23655
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1

    .line 23083
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 23079
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$22300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 23428
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23429
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 23430
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23432
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23433
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23434
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 23438
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 23446
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23447
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23448
    check-cast v0, Ljava/lang/String;

    .line 23449
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23451
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    return-object v0

    .line 23454
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 2

    .line 23244
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23245
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 23246
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23248
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23249
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23250
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 23254
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 23262
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23263
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23264
    check-cast v0, Ljava/lang/String;

    .line 23265
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23267
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    return-object v0

    .line 23270
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRoomPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 23549
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRoomPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 23556
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRoomPeerIdsCount()I
    .locals 1

    .line 23543
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 23537
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRoomPeerIdsList()Ljava/util/List;
    .locals 1

    .line 23027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 23320
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23321
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 23322
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 23324
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23325
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23326
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 23330
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 23338
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23340
    check-cast v0, Ljava/lang/String;

    .line 23341
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23343
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    return-object v0

    .line 23346
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getT()J
    .locals 2

    .line 23396
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->t_:J

    return-wide v0
.end method

.method public getTransient()Z
    .locals 1

    .line 23504
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->transient_:Z

    return v0
.end method

.method public hasByPeerId()Z
    .locals 2

    .line 23623
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

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

.method public hasN()Z
    .locals 2

    .line 23422
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

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

.method public hasRoomId()Z
    .locals 2

    .line 23238
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasS()Z
    .locals 2

    .line 23314
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

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

.method public hasT()Z
    .locals 2

    .line 23390
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

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

.method public hasTransient()Z
    .locals 2

    .line 23498
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 23038
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$22400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$RoomCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    .line 23039
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 2

    .line 23168
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 23169
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasRoomId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23170
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23171
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$22900(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23172
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    .line 23174
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23175
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23176
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23000(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23177
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    .line 23179
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23180
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    .line 23182
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23183
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23184
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23200(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23185
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    .line 23187
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasTransient()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23188
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getTransient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setTransient(Z)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    .line 23190
    :cond_5
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23400(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 23191
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23192
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23400(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 23193
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 23195
    :cond_6
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->ensureRoomPeerIdsIsMutable()V

    .line 23196
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23400(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 23198
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    .line 23200
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasByPeerId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23201
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23202
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23500(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23203
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    .line 23205
    :cond_8
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->access$23700(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    .line 23206
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23220
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 23226
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23222
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$RoomCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23223
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

    .line 23226
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23159
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$RoomCommand;

    if-eqz v0, :cond_0

    .line 23160
    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1

    .line 23162
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

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

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

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

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

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

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

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 0

    .line 23700
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setByPeerId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23666
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23667
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23668
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23664
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setByPeerIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23688
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23689
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->byPeerId_:Ljava/lang/Object;

    .line 23690
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23686
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 0

    .line 23138
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setN(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23465
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23466
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23467
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23463
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23487
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23488
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->n_:Ljava/lang/Object;

    .line 23489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23485
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 0

    .line 23151
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRoomId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23281
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23282
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23283
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23279
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRoomIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23303
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23304
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 23305
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23301
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRoomPeerIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 23566
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->ensureRoomPeerIdsIsMutable()V

    .line 23567
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23568
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23564
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setS(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23357
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23358
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23359
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23355
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 23379
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23380
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->s_:Ljava/lang/Object;

    .line 23381
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0

    .line 23377
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setT(J)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23402
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23403
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->t_:J

    .line 23404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTransient(Z)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23510
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->bitField0_:I

    .line 23511
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->transient_:Z

    .line 23512
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 0

    .line 23695
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23027
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method
