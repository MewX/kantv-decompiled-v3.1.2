.class public final Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$PubsubCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private cids_:Lcom/google/protobuf/LazyStringList;

.field private resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

.field private subtopic_:Ljava/lang/Object;

.field private subtopics_:Lcom/google/protobuf/LazyStringList;

.field private topic_:Ljava/lang/Object;

.field private topics_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 34717
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 34934
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 35010
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 35103
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 35179
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 35255
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 35348
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 35441
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 34718
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 34700
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 34723
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 34934
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 35010
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 35103
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 35179
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 35255
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 35348
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    const/4 p1, 0x0

    .line 35441
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 34724
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 34700
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureCidsIsMutable()V
    .locals 3

    .line 35012
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 35013
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 35014
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSubtopicsIsMutable()V
    .locals 3

    .line 35350
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 35351
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    .line 35352
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTopicsIsMutable()V
    .locals 3

    .line 35257
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 35258
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 35259
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 34706
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$36900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getResultsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 35548
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 35549
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 35551
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 35552
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 35553
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 35554
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 35556
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 34728
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34729
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getResultsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllCids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;"
        }
    .end annotation

    .line 35074
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureCidsIsMutable()V

    .line 35075
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 35077
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllSubtopics(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;"
        }
    .end annotation

    .line 35412
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureSubtopicsIsMutable()V

    .line 35413
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 35415
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllTopics(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;"
        }
    .end annotation

    .line 35319
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureTopicsIsMutable()V

    .line 35320
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 35322
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addCids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35064
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureCidsIsMutable()V

    .line 35065
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 35066
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35062
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addCidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35097
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureCidsIsMutable()V

    .line 35098
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 35099
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35095
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 0

    .line 34840
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSubtopics(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35402
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureSubtopicsIsMutable()V

    .line 35403
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 35404
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35400
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addSubtopicsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35435
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureSubtopicsIsMutable()V

    .line 35436
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 35437
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35433
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addTopics(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35309
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureTopicsIsMutable()V

    .line 35310
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 35311
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35307
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addTopicsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35342
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureTopicsIsMutable()V

    .line 35343
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 35344
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35340
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 2

    .line 34765
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    .line 34766
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 34767
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 5

    .line 34773
    new-instance v0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$PubsubCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 34774
    iget v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 34779
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37502(Lcom/avos/avoscloud/Messages$PubsubCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34780
    iget v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 34781
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 34782
    iget v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34784
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37602(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 34788
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37702(Lcom/avos/avoscloud/Messages$PubsubCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 34792
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37802(Lcom/avos/avoscloud/Messages$PubsubCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34793
    iget v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 34794
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 34795
    iget v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34797
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37902(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 34798
    iget v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    .line 34799
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    .line 34800
    iget v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34802
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38002(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x8

    .line 34806
    :cond_6
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 34807
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38102(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_1

    .line 34809
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38102(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 34811
    :goto_1
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38202(Lcom/avos/avoscloud/Messages$PubsubCommand;I)I

    .line 34812
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 2

    .line 34733
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 34734
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 34735
    iget v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34736
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 34737
    iget v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34738
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 34739
    iget v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34740
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 34741
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34742
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 34743
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34744
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    .line 34745
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34746
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 34747
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_0

    .line 34749
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 34751
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 34991
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34992
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 34993
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCids()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35084
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 35085
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35086
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 0

    .line 34826
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 0

    .line 34830
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearResults()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35514
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 35515
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 35516
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    goto :goto_0

    .line 35518
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 35520
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearSubtopic()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35236
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35237
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 35238
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSubtopics()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35422
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    .line 35423
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35424
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTopic()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35160
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35161
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 35162
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTopics()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35329
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 35330
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 34817
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

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

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 34945
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 34946
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 34947
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34949
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34950
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34951
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 34955
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 34963
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 34964
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34965
    check-cast v0, Ljava/lang/String;

    .line 34966
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34968
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 34971
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCids(I)Ljava/lang/String;
    .locals 1

    .line 35034
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 35041
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCidsCount()I
    .locals 1

    .line 35028
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 35022
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCidsList()Ljava/util/List;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1

    .line 34761
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 34757
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$36900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 35454
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 35455
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0

    .line 35457
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object v0
.end method

.method public getResultsBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 35527
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35528
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    .line 35529
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getResultsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object v0
.end method

.method public getResultsOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 35535
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 35536
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;

    return-object v0

    .line 35538
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_1

    .line 35539
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSubtopic()Ljava/lang/String;
    .locals 2

    .line 35190
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 35191
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 35192
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35194
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35195
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35196
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 35200
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubtopicBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 35208
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 35209
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35210
    check-cast v0, Ljava/lang/String;

    .line 35211
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35213
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    return-object v0

    .line 35216
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSubtopics(I)Ljava/lang/String;
    .locals 1

    .line 35372
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSubtopicsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 35379
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSubtopicsCount()I
    .locals 1

    .line 35366
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 35360
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubtopicsList()Ljava/util/List;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 2

    .line 35114
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 35115
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 35116
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35118
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35119
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35120
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 35124
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTopicBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 35132
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 35133
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35134
    check-cast v0, Ljava/lang/String;

    .line 35135
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35137
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    return-object v0

    .line 35140
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTopics(I)Ljava/lang/String;
    .locals 1

    .line 35279
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTopicsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 35286
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getTopicsCount()I
    .locals 1

    .line 35273
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTopicsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 35267
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTopicsList()Ljava/util/List;
    .locals 1

    .line 34700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getTopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 34939
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasResults()Z
    .locals 2

    .line 35448
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

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

.method public hasSubtopic()Z
    .locals 2

    .line 35184
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

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

.method public hasTopic()Z
    .locals 2

    .line 35108
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

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

    .line 34711
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$37000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PubsubCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    .line 34712
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 34907
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34908
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 2

    .line 34852
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 34853
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34854
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34855
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37500(Lcom/avos/avoscloud/Messages$PubsubCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 34856
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    .line 34858
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37600(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34859
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34860
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37600(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 34861
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 34863
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureCidsIsMutable()V

    .line 34864
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37600(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 34866
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    .line 34868
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasTopic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34869
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34870
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37700(Lcom/avos/avoscloud/Messages$PubsubCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 34871
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    .line 34873
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasSubtopic()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34874
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34875
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37800(Lcom/avos/avoscloud/Messages$PubsubCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 34876
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    .line 34878
    :cond_5
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37900(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 34879
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34880
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37900(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 34881
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    goto :goto_1

    .line 34883
    :cond_6
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureTopicsIsMutable()V

    .line 34884
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$37900(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 34886
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    .line 34888
    :cond_7
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38000(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 34889
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34890
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38000(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    .line 34891
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    goto :goto_2

    .line 34893
    :cond_8
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureSubtopicsIsMutable()V

    .line 34894
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38000(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 34896
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    .line 34898
    :cond_9
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34899
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    .line 34901
    :cond_a
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->access$38300(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    .line 34902
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 34921
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 34927
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34923
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$PubsubCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34924
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

    .line 34927
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 34843
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-eqz v0, :cond_0

    .line 34844
    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1

    .line 34846
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

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

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

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

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

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

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

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 3

    .line 35494
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 35495
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v0, :cond_0

    .line 35497
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 35498
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 35499
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilder(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_0

    .line 35501
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 35503
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    goto :goto_1

    .line 35505
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 35507
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 0

    .line 35565
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 34982
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 34983
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 34984
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 34980
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35004
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35005
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cid_:Ljava/lang/Object;

    .line 35006
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 35051
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureCidsIsMutable()V

    .line 35052
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35053
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35049
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 0

    .line 34822
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 0

    .line 34835
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35481
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 35482
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 35483
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    goto :goto_0

    .line 35485
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 35487
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 35464
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 35468
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 35469
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    goto :goto_0

    .line 35466
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 35471
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 35473
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setSubtopic(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35227
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35228
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 35229
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35225
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSubtopicBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35249
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35250
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopic_:Ljava/lang/Object;

    .line 35251
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35247
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSubtopics(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 35389
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureSubtopicsIsMutable()V

    .line 35390
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35391
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35387
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTopic(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35151
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35152
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 35153
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35149
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTopicBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 35173
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->bitField0_:I

    .line 35174
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topic_:Ljava/lang/Object;

    .line 35175
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35171
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTopics(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 35296
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->ensureTopicsIsMutable()V

    .line 35297
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35298
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->onChanged()V

    return-object p0

    .line 35294
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 0

    .line 35560
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34700
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method
