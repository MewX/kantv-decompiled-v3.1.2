.class public final Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$ReportCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$ReportCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Ljava/lang/Object;

.field private initiative_:Z

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 31223
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31299
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31051
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 31033
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 31056
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 31223
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31299
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31057
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 31033
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 31039
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$32600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 31061
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33000()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 0

    .line 31137
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 2

    .line 31085
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    .line 31086
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReportCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 31087
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 5

    .line 31093
    new-instance v0, Lcom/avos/avoscloud/Messages$ReportCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$ReportCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 31094
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 31099
    :goto_0
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->initiative_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33202(Lcom/avos/avoscloud/Messages$ReportCommand;Z)Z

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 31103
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33302(Lcom/avos/avoscloud/Messages$ReportCommand;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 31107
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33402(Lcom/avos/avoscloud/Messages$ReportCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31108
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33502(Lcom/avos/avoscloud/Messages$ReportCommand;I)I

    .line 31109
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 2

    .line 31065
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 31066
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->initiative_:Z

    .line 31067
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    const-string v0, ""

    .line 31068
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31069
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31070
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31071
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31356
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31357
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31358
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 0

    .line 31123
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearInitiative()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31217
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 31218
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->initiative_:Z

    .line 31219
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 0

    .line 31127
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearType()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31280
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31281
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31282
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31114
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

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

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 31310
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31311
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 31312
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31314
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31315
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31316
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 31320
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 31328
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31329
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31330
    check-cast v0, Ljava/lang/String;

    .line 31331
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31333
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    return-object v0

    .line 31336
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1

    .line 31081
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 31033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 31077
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$32600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInitiative()Z
    .locals 1

    .line 31202
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->initiative_:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 31234
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31235
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 31236
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31238
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31239
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31240
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 31244
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 31252
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31254
    check-cast v0, Ljava/lang/String;

    .line 31255
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31257
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 31260
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 31304
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

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

.method public hasInitiative()Z
    .locals 2

    .line 31196
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasType()Z
    .locals 2

    .line 31228
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

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

    .line 31044
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$32700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ReportCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    .line 31045
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31149
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 31150
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasInitiative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31151
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->getInitiative()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->setInitiative(Z)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    .line 31153
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31154
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31155
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33300(Lcom/avos/avoscloud/Messages$ReportCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31156
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    .line 31158
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31159
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31160
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33400(Lcom/avos/avoscloud/Messages$ReportCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31161
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    .line 31163
    :cond_3
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->access$33600(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    .line 31164
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31178
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 31184
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31180
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$ReportCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31181
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

    .line 31184
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31140
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$ReportCommand;

    if-eqz v0, :cond_0

    .line 31141
    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1

    .line 31143
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

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

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

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

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

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

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

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 0

    .line 31381
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 31347
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31348
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31349
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0

    .line 31345
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 31369
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31370
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->data_:Ljava/lang/Object;

    .line 31371
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0

    .line 31367
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 0

    .line 31119
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInitiative(Z)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31208
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31209
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->initiative_:Z

    .line 31210
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 0

    .line 31132
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 31271
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31272
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31273
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0

    .line 31269
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 31293
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->bitField0_:I

    .line 31294
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->type_:Ljava/lang/Object;

    .line 31295
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->onChanged()V

    return-object p0

    .line 31291
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 0

    .line 31376
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31033
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method
