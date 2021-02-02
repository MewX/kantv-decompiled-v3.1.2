.class public final Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$ErrorCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private appCode_:I

.field private bitField0_:I

.field private code_:I

.field private detail_:Ljava/lang/Object;

.field private pids_:Lcom/google/protobuf/LazyStringList;

.field private reason_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10403
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 10608
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10716
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10792
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 10404
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 10386
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 10409
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 10608
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10716
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10792
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 10410
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 10386
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensurePidsIsMutable()V
    .locals 3

    .line 10794
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 10795
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 10796
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10392
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$10200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 10414
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$10600()Z

    return-void
.end method


# virtual methods
.method public addAllPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;"
        }
    .end annotation

    .line 10856
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->ensurePidsIsMutable()V

    .line 10857
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 10859
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10846
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->ensurePidsIsMutable()V

    .line 10847
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 10848
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0

    .line 10844
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10879
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->ensurePidsIsMutable()V

    .line 10880
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 10881
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0

    .line 10877
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 0

    .line 10503
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 2

    .line 10442
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    .line 10443
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10444
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 5

    .line 10450
    new-instance v0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$ErrorCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 10451
    iget v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 10456
    :goto_0
    iget v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->code_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$10802(Lcom/avos/avoscloud/Messages$ErrorCommand;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 10460
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$10902(Lcom/avos/avoscloud/Messages$ErrorCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 10464
    :cond_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->appCode_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11002(Lcom/avos/avoscloud/Messages$ErrorCommand;I)I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 10468
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11102(Lcom/avos/avoscloud/Messages$ErrorCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10469
    iget v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 10470
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 10471
    iget v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10473
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11202(Lcom/avos/avoscloud/Messages$ErrorCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 10474
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11302(Lcom/avos/avoscloud/Messages$ErrorCommand;I)I

    .line 10475
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 3

    .line 10418
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 10419
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->code_:I

    .line 10420
    iget v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    const-string v1, ""

    .line 10421
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10422
    iget v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10423
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->appCode_:I

    .line 10424
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10425
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10426
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10427
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 10428
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppCode()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10710
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 10711
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->appCode_:I

    .line 10712
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCode()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10602
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 10603
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->code_:I

    .line 10604
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDetail()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10773
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10774
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10775
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 0

    .line 10489
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 0

    .line 10493
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPids()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10866
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 10867
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10868
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearReason()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10665
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10666
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10667
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10480
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

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

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppCode()I
    .locals 1

    .line 10695
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->appCode_:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 10587
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->code_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 10438
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10434
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$10200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 2

    .line 10727
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10728
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 10729
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10731
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10732
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10733
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 10737
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10745
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10746
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10747
    check-cast v0, Ljava/lang/String;

    .line 10748
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10750
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    return-object v0

    .line 10753
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPids(I)Ljava/lang/String;
    .locals 1

    .line 10816
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10823
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPidsCount()I
    .locals 1

    .line 10810
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 10804
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPidsList()Ljava/util/List;
    .locals 1

    .line 10386
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->getPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 10619
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10620
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 10621
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10623
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10624
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10625
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 10629
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10637
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10638
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10639
    check-cast v0, Ljava/lang/String;

    .line 10640
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10642
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    return-object v0

    .line 10645
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAppCode()Z
    .locals 2

    .line 10689
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

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

.method public hasCode()Z
    .locals 2

    .line 10581
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDetail()Z
    .locals 2

    .line 10721
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

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

.method public hasReason()Z
    .locals 2

    .line 10613
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

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

    .line 10397
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$10300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    .line 10398
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 10548
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->hasCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10551
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->hasReason()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2

    .line 10515
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10516
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10517
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setCode(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    .line 10519
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10520
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10521
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$10900(Lcom/avos/avoscloud/Messages$ErrorCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10522
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    .line 10524
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasAppCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10525
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getAppCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setAppCode(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    .line 10527
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasDetail()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10528
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10529
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11100(Lcom/avos/avoscloud/Messages$ErrorCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    .line 10532
    :cond_4
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11200(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10533
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10534
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11200(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 10535
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 10537
    :cond_5
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->ensurePidsIsMutable()V

    .line 10538
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11200(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 10540
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    .line 10542
    :cond_6
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->access$11400(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    .line 10543
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10563
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 10569
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10565
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$ErrorCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10566
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

    .line 10569
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10506
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-eqz v0, :cond_0

    .line 10507
    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1

    .line 10509
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

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

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

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

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

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

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

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 0

    .line 10891
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppCode(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10701
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10702
    iput p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->appCode_:I

    .line 10703
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setCode(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10593
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10594
    iput p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->code_:I

    .line 10595
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setDetail(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10764
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10765
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10766
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0

    .line 10762
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDetailBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10786
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10787
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->detail_:Ljava/lang/Object;

    .line 10788
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0

    .line 10784
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 0

    .line 10485
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 10833
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->ensurePidsIsMutable()V

    .line 10834
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10835
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0

    .line 10831
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setReason(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10656
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10657
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10658
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0

    .line 10654
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 10678
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->bitField0_:I

    .line 10679
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->reason_:Ljava/lang/Object;

    .line 10680
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->onChanged()V

    return-object p0

    .line 10676
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 0

    .line 10498
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 0

    .line 10886
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10386
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method
