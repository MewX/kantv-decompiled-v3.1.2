.class public abstract Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected extensions:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 463
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method private eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/ExtensionRegistryLite;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 728
    invoke-static {p4, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p4

    .line 729
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    return-void
.end method

.method private mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 740
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 743
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 745
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 746
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    .line 748
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method private mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 677
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 682
    :cond_1
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_2

    .line 683
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    invoke-virtual {p3, p1, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    goto :goto_0

    .line 688
    :cond_2
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_4

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 693
    invoke-direct {p0, p2, v3, p3, v1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/ExtensionRegistryLite;I)V

    move-object v2, v0

    goto :goto_0

    .line 699
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    goto :goto_0

    .line 702
    :cond_4
    invoke-virtual {p2, v4}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 707
    :goto_1
    sget p1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    .line 712
    invoke-direct {p0, v2, p3, v3}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 715
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private parseExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 513
    :cond_1
    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 514
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    .line 513
    invoke-static {v3, v1}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :cond_2
    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v3, v3, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v3, v3, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 518
    invoke-virtual {v3}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 520
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    .line 519
    invoke-static {v3, v2}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {p0, p4, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v3, :cond_7

    .line 532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p2

    .line 533
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p2

    .line 534
    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p4

    sget-object p5, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p4, p5, :cond_5

    .line 535
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_6

    .line 536
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p4

    .line 537
    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 538
    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object p5

    invoke-interface {p5, p4}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object p4

    if-nez p4, :cond_4

    return v2

    .line 544
    :cond_4
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 545
    invoke-virtual {p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 544
    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 548
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_6

    .line 549
    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 551
    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p4

    .line 550
    invoke-static {p1, p4, v1}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p4

    .line 553
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 556
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_6

    .line 559
    :cond_7
    sget-object p4, Lcom/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v0

    aget p4, p4, v0

    if-eq p4, v2, :cond_a

    const/4 p2, 0x2

    if-eq p4, p2, :cond_8

    .line 595
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 596
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p2

    .line 595
    invoke-static {p1, p2, v1}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 584
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 585
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object p2

    .line 586
    invoke-interface {p2, p1}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object p2

    if-nez p2, :cond_9

    .line 590
    invoke-virtual {p0, p5, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeVarintField(II)V

    return v2

    :cond_9
    move-object p1, p2

    goto :goto_5

    :cond_a
    const/4 p4, 0x0

    .line 562
    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result p5

    if-nez p5, :cond_b

    .line 563
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 564
    invoke-virtual {p5, v0}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/protobuf/MessageLite;

    if-eqz p5, :cond_b

    .line 566
    invoke-interface {p5}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p4

    :cond_b
    if-nez p4, :cond_c

    .line 570
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object p4

    .line 571
    invoke-interface {p4}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p4

    .line 573
    :cond_c
    iget-object p5, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p5, v0, :cond_d

    .line 575
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result p5

    invoke-virtual {p1, p5, p4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_4

    .line 578
    :cond_d
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 580
    :goto_4
    invoke-interface {p4}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    .line 601
    :goto_5
    iget-object p2, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 602
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 603
    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 602
    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_6

    .line 605
    :cond_e
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object p4, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 606
    invoke-virtual {p3, p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 605
    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_6
    return v2
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 753
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    .line 754
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 756
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 453
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 788
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 790
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 793
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 795
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/google/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 805
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 807
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 809
    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    .line 808
    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/ExtensionLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 777
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 779
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/google/protobuf/ExtensionLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 766
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 768
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method protected final makeImmutable()V
    .locals 1

    .line 819
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 821
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method protected final mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    return-void
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 453
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 868
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 871
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 495
    invoke-virtual {p3, p1, v5}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    .line 498
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    move-result p1

    return p1
.end method

.method protected parseUnknownFieldAsMessageSet(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    sget v0, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-ne p4, v0, :cond_0

    .line 627
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    const/4 p1, 0x1

    return p1

    .line 633
    :cond_0
    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 635
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result p1

    return p1

    .line 638
    :cond_1
    invoke-virtual {p2, p4}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 453
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method final visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$Visitor;",
            "TMessageType;)V"
        }
    .end annotation

    .line 475
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitExtensions(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/FieldSet;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method bridge synthetic visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite;)V
    .locals 0

    .line 453
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method
