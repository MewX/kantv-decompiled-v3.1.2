.class public final Lcom/avos/avoscloud/Messages$PatchItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$PatchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$PatchItem$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;"
    }
.end annotation


# instance fields
.field private binaryMsg_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private data_:Ljava/lang/Object;

.field private from_:Ljava/lang/Object;

.field private mentionAll_:Z

.field private mentionPids_:Lcom/google/protobuf/LazyStringList;

.field private mid_:Ljava/lang/Object;

.field private patchTimestamp_:J

.field private recall_:Z

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32279
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 32495
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32571
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32711
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32819
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32895
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 32962
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 32280
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 32262
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 32285
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 32495
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32571
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32711
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32819
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32895
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 32962
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 32286
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 32262
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureMentionPidsIsMutable()V
    .locals 3

    .line 32964
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 32965
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 32966
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 32268
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$33800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 32290
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34200()Z

    return-void
.end method


# virtual methods
.method public addAllMentionPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$PatchItem$Builder;"
        }
    .end annotation

    .line 33026
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->ensureMentionPidsIsMutable()V

    .line 33027
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 33029
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public addMentionPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 33016
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->ensureMentionPidsIsMutable()V

    .line 33017
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 33018
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 33014
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addMentionPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 33049
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->ensureMentionPidsIsMutable()V

    .line 33050
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 33051
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 33047
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 0

    .line 32409
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 2

    .line 32328
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    .line 32329
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 32330
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->build()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 6

    .line 32336
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$PatchItem;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 32337
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 32342
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34402(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 32346
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34502(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 32350
    :cond_2
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->timestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34602(Lcom/avos/avoscloud/Messages$PatchItem;J)J

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 32354
    :cond_3
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->recall_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34702(Lcom/avos/avoscloud/Messages$PatchItem;Z)Z

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 32358
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34802(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 32362
    :cond_5
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->patchTimestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34902(Lcom/avos/avoscloud/Messages$PatchItem;J)J

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 32366
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35002(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 32370
    :cond_7
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35102(Lcom/avos/avoscloud/Messages$PatchItem;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 32374
    :cond_8
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionAll_:Z

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35202(Lcom/avos/avoscloud/Messages$PatchItem;Z)Z

    .line 32375
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    .line 32376
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 32377
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32379
    :cond_9
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35302(Lcom/avos/avoscloud/Messages$PatchItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 32380
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35402(Lcom/avos/avoscloud/Messages$PatchItem;I)I

    .line 32381
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 5

    .line 32294
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 32295
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32296
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32297
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32298
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 32299
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->timestamp_:J

    .line 32300
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const/4 v3, 0x0

    .line 32301
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->recall_:Z

    .line 32302
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32303
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32304
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32305
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->patchTimestamp_:J

    .line 32306
    iget v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32307
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32308
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32309
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 32310
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32311
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionAll_:Z

    .line 32312
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32313
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 32314
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clear()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBinaryMsg()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32924
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32925
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 32926
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32552
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32553
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32554
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearData()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32768
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32769
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32770
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 0

    .line 32395
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFrom()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32876
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32877
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32878
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMentionAll()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32956
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 32957
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionAll_:Z

    .line 32958
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMentionPids()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 33036
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 33037
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 33038
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMid()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32628
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32629
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32630
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 0

    .line 32399
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPatchTimestamp()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2

    .line 32813
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 32814
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->patchTimestamp_:J

    .line 32815
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRecall()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32705
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 32706
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->recall_:Z

    .line 32707
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2

    .line 32673
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 32674
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->timestamp_:J

    .line 32675
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32386
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

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

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->clone()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 32906
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 32506
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32507
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 32508
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32510
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32511
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32512
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 32516
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 32524
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32525
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32526
    check-cast v0, Ljava/lang/String;

    .line 32527
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32529
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 32532
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 32722
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32723
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 32724
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32726
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32727
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32728
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 32732
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 32740
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32741
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32742
    check-cast v0, Ljava/lang/String;

    .line 32743
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32745
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    return-object v0

    .line 32748
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1

    .line 32324
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 32320
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$33800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 32830
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32831
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 32832
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32834
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32835
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32836
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 32840
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 32848
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32849
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32850
    check-cast v0, Ljava/lang/String;

    .line 32851
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32853
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    return-object v0

    .line 32856
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentionAll()Z
    .locals 1

    .line 32941
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionAll_:Z

    return v0
.end method

.method public getMentionPids(I)Ljava/lang/String;
    .locals 1

    .line 32986
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMentionPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 32993
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMentionPidsCount()I
    .locals 1

    .line 32980
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 32974
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMentionPidsList()Ljava/util/List;
    .locals 1

    .line 32262
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 32582
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32583
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 32584
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32586
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32587
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32588
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 32592
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 32600
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32601
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32602
    check-cast v0, Ljava/lang/String;

    .line 32603
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32605
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    return-object v0

    .line 32608
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 32798
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->patchTimestamp_:J

    return-wide v0
.end method

.method public getRecall()Z
    .locals 1

    .line 32690
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->recall_:Z

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 32658
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasBinaryMsg()Z
    .locals 2

    .line 32900
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 32500
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasData()Z
    .locals 2

    .line 32716
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

.method public hasFrom()Z
    .locals 2

    .line 32824
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

.method public hasMentionAll()Z
    .locals 2

    .line 32935
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

.method public hasMid()Z
    .locals 2

    .line 32576
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 32792
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

.method public hasRecall()Z
    .locals 2

    .line 32684
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 32652
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

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

    .line 32273
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$33900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PatchItem;

    const-class v2, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 32274
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2

    .line 32421
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 32422
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32423
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32424
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34400(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32425
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    .line 32427
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32428
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32429
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34500(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32430
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    .line 32432
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32433
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setTimestamp(J)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 32435
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasRecall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32436
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getRecall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setRecall(Z)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 32438
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32439
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32440
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$34800(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32441
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    .line 32443
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasPatchTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32444
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 32446
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32447
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32448
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35000(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32449
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    .line 32451
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasBinaryMsg()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32452
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setBinaryMsg(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 32454
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMentionAll()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32455
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionAll()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setMentionAll(Z)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 32457
    :cond_9
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35300(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 32458
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32459
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35300(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 32460
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    goto :goto_0

    .line 32462
    :cond_a
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->ensureMentionPidsIsMutable()V

    .line 32463
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35300(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 32465
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    .line 32467
    :cond_b
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->access$35500(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 32468
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32482
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 32488
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32484
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$PatchItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32485
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

    .line 32488
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32412
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$PatchItem;

    if-eqz v0, :cond_0

    .line 32413
    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1

    .line 32415
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

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

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

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

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

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

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

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 0

    .line 33061
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryMsg(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32915
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32916
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 32917
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32913
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32543
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32544
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32545
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32541
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32565
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32566
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->cid_:Ljava/lang/Object;

    .line 32567
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32563
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32759
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32760
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32761
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32757
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32781
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32782
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->data_:Ljava/lang/Object;

    .line 32783
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32779
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 0

    .line 32391
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32867
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32868
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32865
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32889
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32890
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->from_:Ljava/lang/Object;

    .line 32891
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32887
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMentionAll(Z)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32947
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32948
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionAll_:Z

    .line 32949
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setMentionPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 33003
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->ensureMentionPidsIsMutable()V

    .line 33004
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33005
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 33001
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32619
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32620
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32621
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32617
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 32641
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32642
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mid_:Ljava/lang/Object;

    .line 32643
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0

    .line 32639
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32804
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32805
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->patchTimestamp_:J

    .line 32806
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setRecall(Z)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32696
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32697
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->recall_:Z

    .line 32698
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 0

    .line 32404
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimestamp(J)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32664
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->bitField0_:I

    .line 32665
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->timestamp_:J

    .line 32666
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 0

    .line 33056
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 32262
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method
