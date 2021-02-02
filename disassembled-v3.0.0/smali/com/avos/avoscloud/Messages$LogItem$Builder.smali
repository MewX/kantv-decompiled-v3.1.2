.class public final Lcom/avos/avoscloud/Messages$LogItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$LogItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$LogItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$LogItem$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$LogItemOrBuilder;"
    }
.end annotation


# instance fields
.field private ackAt_:J

.field private bin_:Z

.field private bitField0_:I

.field private convType_:I

.field private data_:Ljava/lang/Object;

.field private from_:Ljava/lang/Object;

.field private mentionAll_:Z

.field private mentionPids_:Lcom/google/protobuf/LazyStringList;

.field private msgId_:Ljava/lang/Object;

.field private patchTimestamp_:J

.field private readAt_:J

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4139
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4362
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4438
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4546
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4750
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 4140
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 4122
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 4145
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 4362
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4438
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4546
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4750
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 4146
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 4122
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureMentionPidsIsMutable()V
    .locals 3

    .line 4752
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4753
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 4754
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4128
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4150
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->access$3300()Z

    return-void
.end method


# virtual methods
.method public addAllMentionPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$LogItem$Builder;"
        }
    .end annotation

    .line 4814
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ensureMentionPidsIsMutable()V

    .line 4815
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4817
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public addMentionPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4804
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ensureMentionPidsIsMutable()V

    .line 4805
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 4806
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4802
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addMentionPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4837
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ensureMentionPidsIsMutable()V

    .line 4838
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 4839
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4835
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 0

    .line 4275
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$LogItem;
    .locals 2

    .line 4190
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    .line 4191
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4192
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$LogItem;
    .locals 6

    .line 4198
    new-instance v0, Lcom/avos/avoscloud/Messages$LogItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$LogItem;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 4199
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4204
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogItem;->access$3502(Lcom/avos/avoscloud/Messages$LogItem;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 4208
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogItem;->access$3602(Lcom/avos/avoscloud/Messages$LogItem;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 4212
    :cond_2
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->timestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$LogItem;->access$3702(Lcom/avos/avoscloud/Messages$LogItem;J)J

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 4216
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogItem;->access$3802(Lcom/avos/avoscloud/Messages$LogItem;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 4220
    :cond_4
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ackAt_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$LogItem;->access$3902(Lcom/avos/avoscloud/Messages$LogItem;J)J

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 4224
    :cond_5
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->readAt_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$LogItem;->access$4002(Lcom/avos/avoscloud/Messages$LogItem;J)J

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 4228
    :cond_6
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->patchTimestamp_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$LogItem;->access$4102(Lcom/avos/avoscloud/Messages$LogItem;J)J

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 4232
    :cond_7
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionAll_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogItem;->access$4202(Lcom/avos/avoscloud/Messages$LogItem;Z)Z

    .line 4233
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 4234
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 4235
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4237
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogItem;->access$4302(Lcom/avos/avoscloud/Messages$LogItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 4241
    :cond_9
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bin_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogItem;->access$4402(Lcom/avos/avoscloud/Messages$LogItem;Z)Z

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 4245
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->convType_:I

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$LogItem;->access$4502(Lcom/avos/avoscloud/Messages$LogItem;I)I

    .line 4246
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$LogItem;->access$4602(Lcom/avos/avoscloud/Messages$LogItem;I)I

    .line 4247
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 4

    .line 4154
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 4155
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4156
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4157
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4158
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 4159
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->timestamp_:J

    .line 4160
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4161
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4162
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4163
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ackAt_:J

    .line 4164
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4165
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->readAt_:J

    .line 4166
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4167
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->patchTimestamp_:J

    .line 4168
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4169
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionAll_:Z

    .line 4170
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4171
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 4172
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4173
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bin_:Z

    .line 4174
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4175
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->convType_:I

    .line 4176
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clear()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clear()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clear()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clear()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAckAt()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 4648
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4649
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ackAt_:J

    .line 4650
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBin()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4869
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4870
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bin_:Z

    .line 4871
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConvType()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4901
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4902
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->convType_:I

    .line 4903
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearData()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4495
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4496
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogItem;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4497
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 0

    .line 4261
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFrom()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4419
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4420
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogItem;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4421
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMentionAll()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4744
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4745
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionAll_:Z

    .line 4746
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMentionPids()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4824
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 4825
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4826
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgId()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4603
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4604
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogItem;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4605
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 0

    .line 4265
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPatchTimestamp()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 4712
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4713
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->patchTimestamp_:J

    .line 4714
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearReadAt()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 4680
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4681
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->readAt_:J

    .line 4682
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 4540
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 4541
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->timestamp_:J

    .line 4542
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clone()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clone()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clone()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clone()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clone()Lcom/avos/avoscloud/Messages$LogItem$Builder;

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

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->clone()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAckAt()J
    .locals 2

    .line 4633
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ackAt_:J

    return-wide v0
.end method

.method public getBin()Z
    .locals 1

    .line 4854
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bin_:Z

    return v0
.end method

.method public getConvType()I
    .locals 1

    .line 4886
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->convType_:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 4449
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4450
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4451
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4453
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4454
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4455
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4459
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4467
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4468
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4469
    check-cast v0, Ljava/lang/String;

    .line 4470
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4472
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    return-object v0

    .line 4475
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1

    .line 4186
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4182
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 4373
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4374
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4375
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4377
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4378
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4379
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4383
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4391
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4392
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4393
    check-cast v0, Ljava/lang/String;

    .line 4394
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4396
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    return-object v0

    .line 4399
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentionAll()Z
    .locals 1

    .line 4729
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionAll_:Z

    return v0
.end method

.method public getMentionPids(I)Ljava/lang/String;
    .locals 1

    .line 4774
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMentionPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4781
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMentionPidsCount()I
    .locals 1

    .line 4768
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 4762
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMentionPidsList()Ljava/util/List;
    .locals 1

    .line 4122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 2

    .line 4557
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4558
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4559
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4561
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4562
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4563
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 4567
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMsgIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4575
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4576
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4577
    check-cast v0, Ljava/lang/String;

    .line 4578
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4580
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    return-object v0

    .line 4583
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 4697
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->patchTimestamp_:J

    return-wide v0
.end method

.method public getReadAt()J
    .locals 2

    .line 4665
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->readAt_:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 4525
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasAckAt()Z
    .locals 2

    .line 4627
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasBin()Z
    .locals 2

    .line 4848
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasConvType()Z
    .locals 2

    .line 4880
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasData()Z
    .locals 2

    .line 4443
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasFrom()Z
    .locals 2

    .line 4367
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMentionAll()Z
    .locals 2

    .line 4723
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasMsgId()Z
    .locals 2

    .line 4551
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 4691
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasReadAt()Z
    .locals 2

    .line 4659
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 4519
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

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

    .line 4133
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$3000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$LogItem;

    const-class v2, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4134
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 4287
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4288
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4289
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4290
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogItem;->access$3500(Lcom/avos/avoscloud/Messages$LogItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4291
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    .line 4293
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4294
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4295
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogItem;->access$3600(Lcom/avos/avoscloud/Messages$LogItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4296
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    .line 4298
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4299
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setTimestamp(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4301
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasMsgId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4302
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4303
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogItem;->access$3800(Lcom/avos/avoscloud/Messages$LogItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4304
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    .line 4306
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasAckAt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4307
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getAckAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setAckAt(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4309
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasReadAt()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4310
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getReadAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setReadAt(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4312
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasPatchTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4313
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getPatchTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4315
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasMentionAll()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4316
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionAll()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setMentionAll(Z)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4318
    :cond_8
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogItem;->access$4300(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4319
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4320
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogItem;->access$4300(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 4321
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    goto :goto_0

    .line 4323
    :cond_9
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ensureMentionPidsIsMutable()V

    .line 4324
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogItem;->access$4300(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 4326
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    .line 4328
    :cond_a
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasBin()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4329
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getBin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setBin(Z)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4331
    :cond_b
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasConvType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4332
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getConvType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setConvType(I)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4334
    :cond_c
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogItem;->access$4700(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 4335
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4349
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4355
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4351
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$LogItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4352
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

    .line 4355
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4278
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$LogItem;

    if-eqz v0, :cond_0

    .line 4279
    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1

    .line 4281
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

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

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

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

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

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

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

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 0

    .line 4913
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAckAt(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4639
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4640
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ackAt_:J

    .line 4641
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setBin(Z)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4860
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4861
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bin_:Z

    .line 4862
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setConvType(I)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4892
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4893
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->convType_:I

    .line 4894
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4486
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4487
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4488
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4484
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4508
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4509
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->data_:Ljava/lang/Object;

    .line 4510
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4506
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 0

    .line 4257
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4410
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4411
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4412
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4408
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4432
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4433
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->from_:Ljava/lang/Object;

    .line 4434
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4430
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMentionAll(Z)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4735
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4736
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionAll_:Z

    .line 4737
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setMentionPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 4791
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->ensureMentionPidsIsMutable()V

    .line 4792
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4793
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4789
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMsgId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4594
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4595
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4596
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4592
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMsgIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4616
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4617
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->msgId_:Ljava/lang/Object;

    .line 4618
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0

    .line 4614
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPatchTimestamp(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4703
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4704
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->patchTimestamp_:J

    .line 4705
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setReadAt(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4671
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4672
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->readAt_:J

    .line 4673
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 0

    .line 4270
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimestamp(J)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4531
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->bitField0_:I

    .line 4532
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem$Builder;->timestamp_:J

    .line 4533
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 0

    .line 4908
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method
