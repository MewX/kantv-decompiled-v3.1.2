.class public final Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$DirectCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$DirectCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private binaryMsg_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private convType_:I

.field private dt_:Ljava/lang/Object;

.field private fromPeerId_:Ljava/lang/Object;

.field private hasMore_:Z

.field private id_:Ljava/lang/Object;

.field private mentionAll_:Z

.field private mentionPids_:Lcom/google/protobuf/LazyStringList;

.field private msg_:Ljava/lang/Object;

.field private offline_:Z

.field private patchTimestamp_:J

.field private pushData_:Ljava/lang/Object;

.field private r_:Z

.field private roomId_:Ljava/lang/Object;

.field private timestamp_:J

.field private toPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private transient_:Z

.field private uid_:Ljava/lang/Object;

.field private will_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 12413
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 12735
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12811
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12887
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 13059
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 13184
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 13260
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 13368
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 13444
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 13520
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 13660
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 13695
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 12414
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 12396
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 12419
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 12735
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12811
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12887
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 13059
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 13184
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 13260
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 13368
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 13444
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 13520
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 13660
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 13695
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 12420
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 12396
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureMentionPidsIsMutable()V
    .locals 3

    .line 13697
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 13698
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 13699
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureToPeerIdsIsMutable()V
    .locals 3

    .line 13061
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 13062
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 13063
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12402
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$11600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 12424
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12000()Z

    return-void
.end method


# virtual methods
.method public addAllMentionPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$DirectCommand$Builder;"
        }
    .end annotation

    .line 13759
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureMentionPidsIsMutable()V

    .line 13760
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 13762
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllToPeerIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$DirectCommand$Builder;"
        }
    .end annotation

    .line 13123
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureToPeerIdsIsMutable()V

    .line 13124
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 13126
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addMentionPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13749
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureMentionPidsIsMutable()V

    .line 13750
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13751
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13747
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addMentionPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13782
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureMentionPidsIsMutable()V

    .line 13783
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 13784
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13780
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 0

    .line 12604
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addToPeerIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13113
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureToPeerIdsIsMutable()V

    .line 13114
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13115
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13111
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addToPeerIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13146
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureToPeerIdsIsMutable()V

    .line 13147
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 13148
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13144
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 2

    .line 12482
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    .line 12483
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 12484
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 6

    .line 12490
    new-instance v0, Lcom/avos/avoscloud/Messages$DirectCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 12491
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 12496
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12202(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 12500
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12302(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 12504
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12402(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 12508
    :cond_3
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->timestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12502(Lcom/avos/avoscloud/Messages$DirectCommand;J)J

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 12512
    :cond_4
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->offline_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12602(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 12516
    :cond_5
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->hasMore_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12702(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z

    .line 12517
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 12518
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 12519
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12521
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12802(Lcom/avos/avoscloud/Messages$DirectCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 12525
    :cond_7
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->r_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12902(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 12529
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13002(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 12533
    :cond_9
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13102(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 12537
    :cond_a
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->transient_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13202(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 12541
    :cond_b
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13302(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    .line 12545
    :cond_c
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13402(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x1000

    .line 12549
    :cond_d
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13502(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x2000

    .line 12553
    :cond_e
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->will_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13602(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z

    const v2, 0x8000

    and-int/2addr v2, v1

    const v4, 0x8000

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x4000

    .line 12557
    :cond_f
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->patchTimestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13702(Lcom/avos/avoscloud/Messages$DirectCommand;J)J

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    const/high16 v4, 0x10000

    if-ne v2, v4, :cond_10

    const v2, 0x8000

    or-int/2addr v3, v2

    .line 12561
    :cond_10
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13802(Lcom/avos/avoscloud/Messages$DirectCommand;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 12562
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/high16 v4, 0x20000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_11

    .line 12563
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 12564
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v4, -0x20001

    and-int/2addr v2, v4

    iput v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12566
    :cond_11
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13902(Lcom/avos/avoscloud/Messages$DirectCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/high16 v4, 0x40000

    if-ne v2, v4, :cond_12

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    .line 12570
    :cond_12
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionAll_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$14002(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/high16 v1, 0x20000

    or-int/2addr v3, v1

    .line 12574
    :cond_13
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->convType_:I

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$14102(Lcom/avos/avoscloud/Messages$DirectCommand;I)I

    .line 12575
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$14202(Lcom/avos/avoscloud/Messages$DirectCommand;I)I

    .line 12576
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 5

    .line 12428
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 12429
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12430
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12431
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12432
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12433
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 12434
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 12435
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->timestamp_:J

    .line 12436
    iget v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v3, 0x0

    .line 12437
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->offline_:Z

    .line 12438
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12439
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->hasMore_:Z

    .line 12440
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12441
    sget-object v4, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 12442
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x41

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12443
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->r_:Z

    .line 12444
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x81

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12445
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 12446
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x101

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12447
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 12448
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x201

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12449
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->transient_:Z

    .line 12450
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x401

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12451
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 12452
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x801

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12453
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 12454
    iget v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12455
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 12456
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12457
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->will_:Z

    .line 12458
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12459
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->patchTimestamp_:J

    .line 12460
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12461
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 12462
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12463
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 12464
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12465
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionAll_:Z

    .line 12466
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12467
    iput v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->convType_:I

    .line 12468
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBinaryMsg()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13689
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13690
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 13691
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13241
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13242
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 13243
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConvType()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13846
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13847
    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->convType_:I

    .line 13848
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDt()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13425
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13426
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 13427
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 0

    .line 12590
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFromPeerId()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12944
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12945
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getFromPeerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 12946
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHasMore()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13053
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13054
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->hasMore_:Z

    .line 13055
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13317
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13318
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 13319
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMentionAll()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13814
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13815
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionAll_:Z

    .line 13816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMentionPids()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13769
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 13770
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13771
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsg()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12792
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12793
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12794
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOffline()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13021
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13022
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->offline_:Z

    .line 13023
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 0

    .line 12594
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPatchTimestamp()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13654
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 13655
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->patchTimestamp_:J

    .line 13656
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPushData()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13577
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13578
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPushData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 13579
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearR()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13178
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13179
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->r_:Z

    .line 13180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRoomId()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13501
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13502
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getRoomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 13503
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 12989
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 12990
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->timestamp_:J

    .line 12991
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToPeerIds()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13133
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 13134
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13135
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTransient()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13362
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13363
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->transient_:Z

    .line 13364
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUid()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12868
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12869
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12870
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWill()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13622
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13623
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->will_:Z

    .line 13624
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12581
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

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

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13671
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 13195
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 13196
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13197
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13199
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13200
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13201
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13205
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13213
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 13214
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13215
    check-cast v0, Ljava/lang/String;

    .line 13216
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13218
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 13221
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getConvType()I
    .locals 1

    .line 13831
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->convType_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1

    .line 12478
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12474
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$11600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDt()Ljava/lang/String;
    .locals 2

    .line 13379
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 13380
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13381
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13383
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13384
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13385
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13389
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDtBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13397
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 13398
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13399
    check-cast v0, Ljava/lang/String;

    .line 13400
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13402
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    return-object v0

    .line 13405
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFromPeerId()Ljava/lang/String;
    .locals 2

    .line 12898
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 12899
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 12900
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12902
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12903
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12904
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 12908
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFromPeerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12916
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 12917
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12918
    check-cast v0, Ljava/lang/String;

    .line 12919
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12921
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    return-object v0

    .line 12924
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 13038
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->hasMore_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 13271
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 13272
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13275
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13276
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13277
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13281
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13289
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 13290
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13291
    check-cast v0, Ljava/lang/String;

    .line 13292
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13294
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 13297
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentionAll()Z
    .locals 1

    .line 13799
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionAll_:Z

    return v0
.end method

.method public getMentionPids(I)Ljava/lang/String;
    .locals 1

    .line 13719
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMentionPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13726
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMentionPidsCount()I
    .locals 1

    .line 13713
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 13707
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMentionPidsList()Ljava/util/List;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    .line 12746
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12747
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 12748
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12750
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12751
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12752
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 12756
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12764
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12765
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12766
    check-cast v0, Ljava/lang/String;

    .line 12767
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12769
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    return-object v0

    .line 12772
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOffline()Z
    .locals 1

    .line 13006
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->offline_:Z

    return v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 13639
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->patchTimestamp_:J

    return-wide v0
.end method

.method public getPushData()Ljava/lang/String;
    .locals 2

    .line 13531
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 13532
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13533
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13535
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13536
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13537
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13541
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPushDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13549
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 13550
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13551
    check-cast v0, Ljava/lang/String;

    .line 13552
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13554
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    return-object v0

    .line 13557
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getR()Z
    .locals 1

    .line 13163
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->r_:Z

    return v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 2

    .line 13455
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 13456
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13457
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13459
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13460
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13461
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13465
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13473
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 13474
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13475
    check-cast v0, Ljava/lang/String;

    .line 13476
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13478
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    return-object v0

    .line 13481
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 12974
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getToPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 13083
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getToPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13090
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getToPeerIdsCount()I
    .locals 1

    .line 13077
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 13071
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getToPeerIdsList()Ljava/util/List;
    .locals 1

    .line 12396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getTransient()Z
    .locals 1

    .line 13347
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->transient_:Z

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .line 12822
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12823
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 12824
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12826
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12827
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12828
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 12832
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12840
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12841
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12842
    check-cast v0, Ljava/lang/String;

    .line 12843
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12845
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    return-object v0

    .line 12848
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getWill()Z
    .locals 1

    .line 13607
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->will_:Z

    return v0
.end method

.method public hasBinaryMsg()Z
    .locals 2

    .line 13665
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 13189
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasConvType()Z
    .locals 2

    .line 13825
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDt()Z
    .locals 2

    .line 13373
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasFromPeerId()Z
    .locals 2

    .line 12892
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasHasMore()Z
    .locals 2

    .line 13032
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 13265
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasMentionAll()Z
    .locals 2

    .line 13793
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMsg()Z
    .locals 2

    .line 12740
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOffline()Z
    .locals 2

    .line 13000
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 13633
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasPushData()Z
    .locals 2

    .line 13525
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .line 13157
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasRoomId()Z
    .locals 2

    .line 13449
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 12968
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasTransient()Z
    .locals 2

    .line 13341
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    .line 12816
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method public hasWill()Z
    .locals 2

    .line 13601
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 12407
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$11700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$DirectCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12408
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 12616
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 12617
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12618
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12619
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12200(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12620
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12622
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12623
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12624
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12300(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12625
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12627
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasFromPeerId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12628
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12629
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12400(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 12630
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12632
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12633
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setTimestamp(J)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12635
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasOffline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12636
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getOffline()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setOffline(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12638
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasHasMore()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12639
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getHasMore()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setHasMore(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12641
    :cond_6
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12800(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12642
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12643
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12800(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 12644
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 12646
    :cond_7
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureToPeerIdsIsMutable()V

    .line 12647
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$12800(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 12649
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12651
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasR()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12652
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getR()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setR(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12654
    :cond_9
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12655
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12656
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13000(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 12657
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12659
    :cond_a
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12660
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12661
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13100(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 12662
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12664
    :cond_b
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTransient()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 12665
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTransient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setTransient(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12667
    :cond_c
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasDt()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12668
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12669
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13300(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 12670
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12672
    :cond_d
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasRoomId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12673
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12674
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13400(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 12675
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12677
    :cond_e
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPushData()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12678
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12679
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13500(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 12680
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12682
    :cond_f
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasWill()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 12683
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getWill()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setWill(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12685
    :cond_10
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPatchTimestamp()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12686
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPatchTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12688
    :cond_11
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasBinaryMsg()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 12689
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setBinaryMsg(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12691
    :cond_12
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13900(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 12692
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 12693
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13900(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 12694
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    goto :goto_1

    .line 12696
    :cond_13
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureMentionPidsIsMutable()V

    .line 12697
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$13900(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 12699
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    .line 12701
    :cond_14
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMentionAll()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12702
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionAll()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setMentionAll(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12704
    :cond_15
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasConvType()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 12705
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getConvType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setConvType(I)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12707
    :cond_16
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->access$14300(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 12708
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12722
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 12728
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12724
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$DirectCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12725
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

    .line 12728
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12607
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$DirectCommand;

    if-eqz v0, :cond_0

    .line 12608
    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1

    .line 12610
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

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

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

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

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

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

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

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 0

    .line 13858
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryMsg(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 13680
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13681
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 13682
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13678
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13232
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13233
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 13234
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13230
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13254
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13255
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->cid_:Ljava/lang/Object;

    .line 13256
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13252
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setConvType(I)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13837
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13838
    iput p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->convType_:I

    .line 13839
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setDt(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13416
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13417
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 13418
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13414
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDtBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13438
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13439
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->dt_:Ljava/lang/Object;

    .line 13440
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13436
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 0

    .line 12586
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFromPeerId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12935
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12936
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 12937
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 12933
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setFromPeerIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12957
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12958
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->fromPeerId_:Ljava/lang/Object;

    .line 12959
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 12955
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setHasMore(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13044
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13045
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->hasMore_:Z

    .line 13046
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13308
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13309
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 13310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13306
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13330
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13331
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->id_:Ljava/lang/Object;

    .line 13332
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13328
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMentionAll(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13805
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13806
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionAll_:Z

    .line 13807
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setMentionPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 13736
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureMentionPidsIsMutable()V

    .line 13737
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13738
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13734
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMsg(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12783
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12784
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12785
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 12781
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12805
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12806
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->msg_:Ljava/lang/Object;

    .line 12807
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 12803
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOffline(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13012
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13013
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->offline_:Z

    .line 13014
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 13645
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13646
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->patchTimestamp_:J

    .line 13647
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setPushData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13568
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13569
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 13570
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13566
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPushDataBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13590
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13591
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->pushData_:Ljava/lang/Object;

    .line 13592
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13588
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setR(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13169
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13170
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->r_:Z

    .line 13171
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 0

    .line 12599
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRoomId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13492
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13493
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 13494
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13490
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRoomIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13514
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13515
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->roomId_:Ljava/lang/Object;

    .line 13516
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13512
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTimestamp(J)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12980
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12981
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->timestamp_:J

    .line 12982
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setToPeerIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 13100
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->ensureToPeerIdsIsMutable()V

    .line 13101
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13102
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 13098
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTransient(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13353
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13354
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->transient_:Z

    .line 13355
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setUid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12859
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12860
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12861
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 12857
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12881
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 12882
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->uid_:Ljava/lang/Object;

    .line 12883
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0

    .line 12879
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 0

    .line 13853
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12396
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWill(Z)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 13613
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->bitField0_:I

    .line 13614
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->will_:Z

    .line 13615
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->onChanged()V

    return-object p0
.end method
