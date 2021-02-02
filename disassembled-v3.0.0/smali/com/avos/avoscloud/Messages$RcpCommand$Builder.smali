.class public final Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$RcpCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$RcpCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private from_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private read_:Z

.field private t_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26607
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 26768
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26844
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26984
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 26608
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 26590
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 26613
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 26768
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26844
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26984
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 26614
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 26590
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26596
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$26300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 26618
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$26700()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 0

    .line 26706
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 2

    .line 26646
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    .line 26647
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 26648
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 6

    .line 26654
    new-instance v0, Lcom/avos/avoscloud/Messages$RcpCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$RcpCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 26655
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 26660
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$26902(Lcom/avos/avoscloud/Messages$RcpCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 26664
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27002(Lcom/avos/avoscloud/Messages$RcpCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 26668
    :cond_2
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->t_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27102(Lcom/avos/avoscloud/Messages$RcpCommand;J)J

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 26672
    :cond_3
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->read_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27202(Lcom/avos/avoscloud/Messages$RcpCommand;Z)Z

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 26676
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27302(Lcom/avos/avoscloud/Messages$RcpCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26677
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27402(Lcom/avos/avoscloud/Messages$RcpCommand;I)I

    .line 26678
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 3

    .line 26622
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 26623
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26624
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26625
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26626
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 26627
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->t_:J

    .line 26628
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 26629
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->read_:Z

    .line 26630
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26631
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 26632
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26901
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26902
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26903
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 0

    .line 26692
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFrom()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 27041
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 27042
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 27043
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26825
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26826
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26827
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 0

    .line 26696
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRead()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26978
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 26979
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->read_:Z

    .line 26980
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearT()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 2

    .line 26946
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 26947
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->t_:J

    .line 26948
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26683
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

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

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 26855
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26856
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 26857
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26859
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26860
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26861
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 26865
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 26873
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26874
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26875
    check-cast v0, Ljava/lang/String;

    .line 26876
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26878
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 26881
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1

    .line 26642
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 26590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26638
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$26300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 26995
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 26996
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 26997
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26999
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27000
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27001
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 27005
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 27013
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 27014
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27015
    check-cast v0, Ljava/lang/String;

    .line 27016
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27018
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    return-object v0

    .line 27021
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 26779
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26780
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 26781
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26783
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26784
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26785
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 26789
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 26797
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26798
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26799
    check-cast v0, Ljava/lang/String;

    .line 26800
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26802
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 26805
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRead()Z
    .locals 1

    .line 26963
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->read_:Z

    return v0
.end method

.method public getT()J
    .locals 2

    .line 26931
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->t_:J

    return-wide v0
.end method

.method public hasCid()Z
    .locals 2

    .line 26849
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

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

    .line 26989
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 26773
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRead()Z
    .locals 2

    .line 26957
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

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

.method public hasT()Z
    .locals 2

    .line 26925
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

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

    .line 26601
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$26400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$RcpCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    .line 26602
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 2

    .line 26718
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 26719
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26720
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26721
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$26900(Lcom/avos/avoscloud/Messages$RcpCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26722
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    .line 26724
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26725
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26726
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27000(Lcom/avos/avoscloud/Messages$RcpCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26727
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    .line 26729
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26730
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    .line 26732
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26733
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setRead(Z)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    .line 26735
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26736
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26737
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27300(Lcom/avos/avoscloud/Messages$RcpCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 26738
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    .line 26740
    :cond_5
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->access$27500(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    .line 26741
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26755
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 26761
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26757
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$RcpCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26758
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

    .line 26761
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26709
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$RcpCommand;

    if-eqz v0, :cond_0

    .line 26710
    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1

    .line 26712
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

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

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

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

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

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

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

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 0

    .line 27066
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 26892
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26893
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26894
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0

    .line 26890
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 26914
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26915
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->cid_:Ljava/lang/Object;

    .line 26916
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0

    .line 26912
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 0

    .line 26688
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 27032
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 27033
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 27034
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0

    .line 27030
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setFromBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 27054
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 27055
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->from_:Ljava/lang/Object;

    .line 27056
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0

    .line 27052
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 26816
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26817
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26818
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0

    .line 26814
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 26838
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26839
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->id_:Ljava/lang/Object;

    .line 26840
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0

    .line 26836
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRead(Z)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26969
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26970
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->read_:Z

    .line 26971
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 0

    .line 26701
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setT(J)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26937
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->bitField0_:I

    .line 26938
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->t_:J

    .line 26939
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 0

    .line 27061
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26590
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method
