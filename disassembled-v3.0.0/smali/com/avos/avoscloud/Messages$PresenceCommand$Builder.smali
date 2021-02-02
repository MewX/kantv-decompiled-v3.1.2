.class public final Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$PresenceCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private status_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30215
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    .line 30362
    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->status_:I

    .line 30398
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    .line 30491
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30216
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 30198
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 30221
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    .line 30362
    iput p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->status_:I

    .line 30398
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    const-string p1, ""

    .line 30491
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30222
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 30198
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureSessionPeerIdsIsMutable()V
    .locals 3

    .line 30400
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 30401
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 30402
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 30204
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$31400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 30226
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$31800()Z

    return-void
.end method


# virtual methods
.method public addAllSessionPeerIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;"
        }
    .end annotation

    .line 30462
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 30463
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 30465
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 0

    .line 30303
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSessionPeerIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 30452
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 30453
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 30454
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0

    .line 30450
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addSessionPeerIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 30485
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 30486
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 30487
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0

    .line 30483
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 2

    .line 30250
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    .line 30251
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 30252
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 5

    .line 30258
    new-instance v0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$PresenceCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 30259
    iget v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 30264
    :goto_0
    iget v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->status_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32002(Lcom/avos/avoscloud/Messages$PresenceCommand;I)I

    .line 30265
    iget v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 30266
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 30267
    iget v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30269
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32102(Lcom/avos/avoscloud/Messages$PresenceCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 30273
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32202(Lcom/avos/avoscloud/Messages$PresenceCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30274
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32302(Lcom/avos/avoscloud/Messages$PresenceCommand;I)I

    .line 30275
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30230
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x1

    .line 30231
    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->status_:I

    .line 30232
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30233
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 30234
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    const-string v0, ""

    .line 30235
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30236
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30548
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30549
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 0

    .line 30289
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 0

    .line 30293
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearSessionPeerIds()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30472
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 30473
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30474
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStatus()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30392
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 30393
    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->status_:I

    .line 30394
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30280
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

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

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 30502
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30503
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 30504
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30506
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30507
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30508
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 30512
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 30520
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30521
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30522
    check-cast v0, Ljava/lang/String;

    .line 30523
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30525
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 30528
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1

    .line 30246
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 30242
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$31400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 30422
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSessionPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 30429
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSessionPeerIdsCount()I
    .locals 1

    .line 30416
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 30410
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionPeerIdsList()Ljava/util/List;
    .locals 1

    .line 30198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/avos/avoscloud/Messages$StatusType;
    .locals 1

    .line 30373
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->status_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$StatusType;->valueOf(I)Lcom/avos/avoscloud/Messages$StatusType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30374
    sget-object v0, Lcom/avos/avoscloud/Messages$StatusType;->on:Lcom/avos/avoscloud/Messages$StatusType;

    :cond_0
    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 30496
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .line 30367
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

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

    .line 30209
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$31500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PresenceCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    .line 30210
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 2

    .line 30315
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 30316
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30317
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getStatus()Lcom/avos/avoscloud/Messages$StatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->setStatus(Lcom/avos/avoscloud/Messages$StatusType;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    .line 30319
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32100(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 30320
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30321
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32100(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 30322
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 30324
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 30325
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32100(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 30327
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    .line 30329
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30330
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30331
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32200(Lcom/avos/avoscloud/Messages$PresenceCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30332
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    .line 30334
    :cond_4
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->access$32400(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    .line 30335
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 30349
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 30355
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30351
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$PresenceCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30352
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

    .line 30355
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30306
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-eqz v0, :cond_0

    .line 30307
    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1

    .line 30309
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

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

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

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

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

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

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

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 0

    .line 30573
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 30539
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30540
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30541
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0

    .line 30537
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 30561
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30562
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->cid_:Ljava/lang/Object;

    .line 30563
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0

    .line 30559
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 0

    .line 30285
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 0

    .line 30298
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionPeerIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 30439
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 30440
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30441
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0

    .line 30437
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setStatus(Lcom/avos/avoscloud/Messages$StatusType;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 30383
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->bitField0_:I

    .line 30384
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$StatusType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->status_:I

    .line 30385
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->onChanged()V

    return-object p0

    .line 30381
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 0

    .line 30568
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30198
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method
