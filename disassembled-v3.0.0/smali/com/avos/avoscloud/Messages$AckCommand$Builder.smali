.class public final Lcom/avos/avoscloud/Messages$AckCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$AckCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$AckCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private appCode_:I

.field private bitField0_:I

.field private cid_:Ljava/lang/Object;

.field private code_:I

.field private fromts_:J

.field private ids_:Lcom/google/protobuf/LazyStringList;

.field private mid_:Ljava/lang/Object;

.field private reason_:Ljava/lang/Object;

.field private t_:J

.field private tots_:J

.field private type_:Ljava/lang/Object;

.field private uid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14833
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 15092
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 15168
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 15244
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 15352
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15492
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15568
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 14834
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 14816
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 14839
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 15092
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 15168
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 15244
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 15352
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15492
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15568
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 14840
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 14816
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureIdsIsMutable()V
    .locals 3

    .line 15570
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 15571
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 15572
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14822
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$14500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 14844
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->access$14900()Z

    return-void
.end method


# virtual methods
.method public addAllIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$AckCommand$Builder;"
        }
    .end annotation

    .line 15632
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ensureIdsIsMutable()V

    .line 15633
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 15635
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15622
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ensureIdsIsMutable()V

    .line 15623
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 15624
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15620
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15655
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ensureIdsIsMutable()V

    .line 15656
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 15657
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15653
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 0

    .line 14969
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 2

    .line 14884
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    .line 14885
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 14886
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->build()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->build()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 6

    .line 14892
    new-instance v0, Lcom/avos/avoscloud/Messages$AckCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$AckCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 14893
    iget v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 14898
    :goto_0
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->code_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15102(Lcom/avos/avoscloud/Messages$AckCommand;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 14902
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15202(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 14906
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15302(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 14910
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15402(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 14914
    :cond_4
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->t_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15502(Lcom/avos/avoscloud/Messages$AckCommand;J)J

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 14918
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15602(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 14922
    :cond_6
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->fromts_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15702(Lcom/avos/avoscloud/Messages$AckCommand;J)J

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 14926
    :cond_7
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->tots_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15802(Lcom/avos/avoscloud/Messages$AckCommand;J)J

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 14930
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15902(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14931
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    .line 14932
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 14933
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14935
    :cond_9
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->access$16002(Lcom/avos/avoscloud/Messages$AckCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 14939
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->appCode_:I

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$16102(Lcom/avos/avoscloud/Messages$AckCommand;I)I

    .line 14940
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$AckCommand;->access$16202(Lcom/avos/avoscloud/Messages$AckCommand;I)I

    .line 14941
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 5

    .line 14848
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 14849
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->code_:I

    .line 14850
    iget v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const-string v1, ""

    .line 14851
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 14852
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14853
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 14854
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14855
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 14856
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    .line 14857
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->t_:J

    .line 14858
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14859
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 14860
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14861
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->fromts_:J

    .line 14862
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x41

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14863
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->tots_:J

    .line 14864
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14865
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 14866
    iget v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14867
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 14868
    iget v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14869
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->appCode_:I

    .line 14870
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppCode()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15687
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 15688
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->appCode_:I

    .line 15689
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15301
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15302
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 15303
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCode()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15086
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 15087
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->code_:I

    .line 15088
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 0

    .line 14955
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFromts()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 2

    .line 15454
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 15455
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->fromts_:J

    .line 15456
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIds()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15642
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 15643
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15644
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMid()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15225
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15226
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 15227
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 0

    .line 14959
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearReason()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15149
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15150
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 15151
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearT()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 2

    .line 15346
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 15347
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->t_:J

    .line 15348
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTots()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 2

    .line 15486
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 15487
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->tots_:J

    .line 15488
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15549
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15550
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15551
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUid()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15409
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15410
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15411
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 14946
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

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

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppCode()I
    .locals 1

    .line 15672
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->appCode_:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 15255
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 15256
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 15257
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15259
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15260
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15261
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 15265
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 15273
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 15274
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15275
    check-cast v0, Ljava/lang/String;

    .line 15276
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15278
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 15281
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 15071
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->code_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1

    .line 14880
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14876
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$14500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFromts()J
    .locals 2

    .line 15439
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->fromts_:J

    return-wide v0
.end method

.method public getIds(I)Ljava/lang/String;
    .locals 1

    .line 15592
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15599
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getIdsCount()I
    .locals 1

    .line 15586
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 15580
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdsList()Ljava/util/List;
    .locals 1

    .line 14816
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 15179
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 15180
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 15181
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15183
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15184
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15185
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 15189
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 15197
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 15198
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15199
    check-cast v0, Ljava/lang/String;

    .line 15200
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15202
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    return-object v0

    .line 15205
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 15103
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 15104
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 15105
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15107
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15108
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15109
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 15113
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 15121
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 15122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15123
    check-cast v0, Ljava/lang/String;

    .line 15124
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15126
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    return-object v0

    .line 15129
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getT()J
    .locals 2

    .line 15331
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->t_:J

    return-wide v0
.end method

.method public getTots()J
    .locals 2

    .line 15471
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->tots_:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 15503
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15504
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 15505
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15507
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15508
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15509
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 15513
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 15521
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15522
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15523
    check-cast v0, Ljava/lang/String;

    .line 15524
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15526
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    return-object v0

    .line 15529
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .line 15363
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15364
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 15365
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15367
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 15368
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15369
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 15373
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 15381
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15382
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15383
    check-cast v0, Ljava/lang/String;

    .line 15384
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15386
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    return-object v0

    .line 15389
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAppCode()Z
    .locals 2

    .line 15666
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 15249
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasCode()Z
    .locals 2

    .line 15065
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFromts()Z
    .locals 2

    .line 15433
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasMid()Z
    .locals 2

    .line 15173
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasReason()Z
    .locals 2

    .line 15097
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasT()Z
    .locals 2

    .line 15325
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasTots()Z
    .locals 2

    .line 15465
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 15497
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    .line 15357
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14827
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$14600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$AckCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 14828
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 2

    .line 14981
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 14982
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14983
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setCode(I)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 14985
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14986
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14987
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15200(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 14988
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    .line 14990
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasMid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14991
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14992
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15300(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 14993
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    .line 14995
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14996
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 14997
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15400(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 14998
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    .line 15000
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15001
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 15003
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15004
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15005
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15600(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15006
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    .line 15008
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasFromts()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15009
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getFromts()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setFromts(J)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 15011
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasTots()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15012
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getTots()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setTots(J)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 15014
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasType()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15015
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15016
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$15900(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15017
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    .line 15019
    :cond_9
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$16000(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 15020
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15021
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$16000(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 15022
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 15024
    :cond_a
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ensureIdsIsMutable()V

    .line 15025
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$16000(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 15027
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    .line 15029
    :cond_b
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasAppCode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15030
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getAppCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setAppCode(I)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 15032
    :cond_c
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->access$16300(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 15033
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 15047
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 15053
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15049
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$AckCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15050
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

    .line 15053
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 14972
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$AckCommand;

    if-eqz v0, :cond_0

    .line 14973
    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1

    .line 14975
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

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

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

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

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

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

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

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 0

    .line 15699
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppCode(I)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15678
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15679
    iput p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->appCode_:I

    .line 15680
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15292
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15293
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 15294
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15290
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15314
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15315
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->cid_:Ljava/lang/Object;

    .line 15316
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15312
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCode(I)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15077
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15078
    iput p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->code_:I

    .line 15079
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 0

    .line 14951
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFromts(J)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15445
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15446
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->fromts_:J

    .line 15447
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 15609
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ensureIdsIsMutable()V

    .line 15610
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15611
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15607
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15216
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15217
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 15218
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15214
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15238
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15239
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mid_:Ljava/lang/Object;

    .line 15240
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15236
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setReason(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15140
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15141
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 15142
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15138
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15162
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15163
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->reason_:Ljava/lang/Object;

    .line 15164
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15160
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 0

    .line 14964
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setT(J)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15337
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15338
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->t_:J

    .line 15339
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTots(J)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 15477
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15478
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->tots_:J

    .line 15479
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15540
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15541
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15542
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15538
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15562
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15563
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->type_:Ljava/lang/Object;

    .line 15564
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15560
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15400
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15401
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15402
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15398
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 15422
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->bitField0_:I

    .line 15423
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->uid_:Ljava/lang/Object;

    .line 15424
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->onChanged()V

    return-object p0

    .line 15420
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 0

    .line 15694
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14816
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method
