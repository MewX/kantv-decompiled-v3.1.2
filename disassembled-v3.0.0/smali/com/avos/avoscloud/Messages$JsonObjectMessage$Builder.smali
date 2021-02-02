.class public final Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$JsonObjectMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1427
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1551
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1428
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 1410
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1433
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1551
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1434
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 1410
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1416
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1438
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 0

    .line 1502
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 2

    .line 1458
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    .line 1459
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1460
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 3

    .line 1466
    new-instance v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 1467
    iget v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1472
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->access$602(Lcom/avos/avoscloud/Messages$JsonObjectMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->access$702(Lcom/avos/avoscloud/Messages$JsonObjectMessage;I)I

    .line 1474
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1443
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1444
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clear()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clear()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clear()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clear()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1608
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    .line 1609
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1610
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 0

    .line 1488
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 0

    .line 1492
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1479
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clone()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clone()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clone()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clone()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clone()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

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

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->clone()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 1562
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1563
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1564
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1566
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1567
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 1572
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1580
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1581
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1582
    check-cast v0, Ljava/lang/String;

    .line 1583
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1585
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    return-object v0

    .line 1588
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 1454
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1450
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 1556
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

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

    .line 1421
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    const-class v2, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 1422
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1526
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1514
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1515
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1516
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    .line 1517
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->access$600(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1518
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->onChanged()V

    .line 1520
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->access$800(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 1521
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1538
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1544
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1540
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1541
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

    .line 1544
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1505
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v0, :cond_0

    .line 1506
    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1

    .line 1508
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

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

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

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

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

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

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

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 0

    .line 1633
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1599
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    .line 1600
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1601
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->onChanged()V

    return-object p0

    .line 1597
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDataBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1621
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->bitField0_:I

    .line 1622
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->data_:Ljava/lang/Object;

    .line 1623
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->onChanged()V

    return-object p0

    .line 1619
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 0

    .line 1484
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 0

    .line 1497
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 0

    .line 1628
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method
