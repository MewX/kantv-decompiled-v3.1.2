.class public final Lcom/avos/avoscloud/Messages$DataCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$DataCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$DataCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ids_:Lcom/google/protobuf/LazyStringList;

.field private msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private msg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation
.end field

.field private offline_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6288
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 6471
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 6565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6289
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 6271
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6294
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6471
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 6565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6295
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 6271
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureIdsIsMutable()V
    .locals 3

    .line 6473
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 6474
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 6475
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMsgIsMutable()V
    .locals 3

    .line 6567
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 6568
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6569
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6277
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMsgFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6792
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6793
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6797
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 6798
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 6799
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6801
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 6299
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6300
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$DataCommand$Builder;"
        }
    .end annotation

    .line 6535
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureIdsIsMutable()V

    .line 6536
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6538
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllMsg(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$DataCommand$Builder;"
        }
    .end annotation

    .line 6703
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6704
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6705
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6707
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6709
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6525
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureIdsIsMutable()V

    .line 6526
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 6527
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0

    .line 6523
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 6558
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureIdsIsMutable()V

    .line 6559
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 6560
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0

    .line 6556
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addMsg(ILcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6689
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6690
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6691
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6692
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6694
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMsg(ILcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6658
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 6662
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6663
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6664
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6660
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 6666
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMsg(Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6675
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6676
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6677
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6678
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6680
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMsg(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6641
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 6645
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6646
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6647
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6643
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 6649
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMsgBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 2

    .line 6771
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6772
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 6771
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object v0
.end method

.method public addMsgBuilder(I)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 2

    .line 6779
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6780
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 6779
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 0

    .line 6386
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 2

    .line 6328
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    .line 6329
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DataCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6330
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 5

    .line 6336
    new-instance v0, Lcom/avos/avoscloud/Messages$DataCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$DataCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 6337
    iget v1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6340
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 6341
    iget v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    .line 6343
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6702(Lcom/avos/avoscloud/Messages$DataCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 6344
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_2

    .line 6345
    iget v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 6346
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6347
    iget v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    .line 6349
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6802(Lcom/avos/avoscloud/Messages$DataCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 6351
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6802(Lcom/avos/avoscloud/Messages$DataCommand;Ljava/util/List;)Ljava/util/List;

    :goto_0
    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 6356
    :goto_1
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->offline_:Z

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6902(Lcom/avos/avoscloud/Messages$DataCommand;Z)Z

    .line 6357
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$DataCommand;->access$7002(Lcom/avos/avoscloud/Messages$DataCommand;I)I

    .line 6358
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6304
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6305
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 6306
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    .line 6307
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6309
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 6311
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 6313
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->offline_:Z

    .line 6314
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 0

    .line 6372
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearIds()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6545
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 6546
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    .line 6547
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsg()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6717
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6718
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6719
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    .line 6720
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6722
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearOffline()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6830
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 6831
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->offline_:Z

    .line 6832
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 0

    .line 6376
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6363
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

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

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1

    .line 6324
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6320
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIds(I)Ljava/lang/String;
    .locals 1

    .line 6495
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6502
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getIdsCount()I
    .locals 1

    .line 6489
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 6483
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdsList()Ljava/util/List;
    .locals 1

    .line 6271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMsg(I)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 6600
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6601
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p1

    .line 6603
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p1
.end method

.method public getMsgBuilder(I)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 6744
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object p1
.end method

.method public getMsgBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            ">;"
        }
    .end annotation

    .line 6787
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMsgCount()I
    .locals 1

    .line 6590
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6591
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 6593
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getMsgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation

    .line 6580
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6581
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6583
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMsgOrBuilder(I)Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 6751
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6752
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;

    return-object p1

    .line 6753
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;

    return-object p1
.end method

.method public getMsgOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6761
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 6762
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6764
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOffline()Z
    .locals 1

    .line 6815
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->offline_:Z

    return v0
.end method

.method public hasOffline()Z
    .locals 2

    .line 6809
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

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

    .line 6282
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$6200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$DataCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    .line 6283
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6444
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsgCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6445
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsg(I)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 2

    .line 6398
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6399
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6700(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6400
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6401
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6700(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 6402
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 6404
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureIdsIsMutable()V

    .line 6405
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6700(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 6407
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    .line 6409
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 6410
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6800(Lcom/avos/avoscloud/Messages$DataCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6411
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6412
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6800(Lcom/avos/avoscloud/Messages$DataCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6413
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    goto :goto_1

    .line 6415
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6416
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6800(Lcom/avos/avoscloud/Messages$DataCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6418
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_2

    .line 6421
    :cond_4
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6800(Lcom/avos/avoscloud/Messages$DataCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6422
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6423
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 6424
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6425
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6800(Lcom/avos/avoscloud/Messages$DataCommand;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    .line 6426
    iget v1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    .line 6428
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->access$7100()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6429
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->getMsgFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 6431
    :cond_6
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$6800(Lcom/avos/avoscloud/Messages$DataCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6435
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->hasOffline()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6436
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getOffline()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->setOffline(Z)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    .line 6438
    :cond_8
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->access$7200(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    .line 6439
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6458
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6464
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6460
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$DataCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6461
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

    .line 6464
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6389
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$DataCommand;

    if-eqz v0, :cond_0

    .line 6390
    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1

    .line 6392
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

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

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

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

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

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

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

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 0

    .line 6842
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeMsg(I)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6730
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6731
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6732
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6733
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6735
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 0

    .line 6368
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 6512
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureIdsIsMutable()V

    .line 6513
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6514
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0

    .line 6510
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMsg(ILcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6628
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6629
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6630
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6631
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6633
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMsg(ILcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6611
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msgBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 6615
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->ensureMsgIsMutable()V

    .line 6616
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->msg_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6617
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    goto :goto_0

    .line 6613
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 6619
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setOffline(Z)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6821
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->bitField0_:I

    .line 6822
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->offline_:Z

    .line 6823
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 0

    .line 6381
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 0

    .line 6837
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6271
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method
