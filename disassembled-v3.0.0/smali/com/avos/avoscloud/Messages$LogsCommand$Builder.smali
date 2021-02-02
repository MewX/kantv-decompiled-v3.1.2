.class public final Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$LogsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$LogsCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private checksum_:Ljava/lang/Object;

.field private cid_:Ljava/lang/Object;

.field private direction_:I

.field private l_:I

.field private lctype_:I

.field private limit_:I

.field private logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            "Lcom/avos/avoscloud/Messages$LogItem$Builder;",
            "Lcom/avos/avoscloud/Messages$LogItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private logs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mid_:Ljava/lang/Object;

.field private stored_:Z

.field private tIncluded_:Z

.field private t_:J

.field private tmid_:Ljava/lang/Object;

.field private ttIncluded_:Z

.field private tt_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24886
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 25163
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25367
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25443
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25519
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 25627
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->direction_:I

    .line 25760
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 24887
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 24869
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 24892
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 25163
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25367
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25443
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25519
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 25627
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->direction_:I

    .line 25760
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 24893
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 24869
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureLogsIsMutable()V
    .locals 3

    .line 25762
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 25763
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 25764
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 24875
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$23900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLogsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            "Lcom/avos/avoscloud/Messages$LogItem$Builder;",
            "Lcom/avos/avoscloud/Messages$LogItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25987
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25988
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 25992
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 25993
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 25994
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 25996
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 24897
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$24300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24898
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getLogsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllLogs(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$LogsCommand$Builder;"
        }
    .end annotation

    .line 25898
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25899
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25900
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 25902
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25904
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLogs(ILcom/avos/avoscloud/Messages$LogItem$Builder;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25884
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25885
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25886
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25887
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25889
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLogs(ILcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25853
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 25857
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25858
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25859
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25855
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 25861
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLogs(Lcom/avos/avoscloud/Messages$LogItem$Builder;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25870
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25871
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25872
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25873
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25875
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLogs(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25836
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 25840
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25841
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25842
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25838
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 25844
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLogsBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 25966
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getLogsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25967
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v1

    .line 25966
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object v0
.end method

.method public addLogsBuilder(I)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 25974
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getLogsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 25975
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v1

    .line 25974
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 0

    .line 25049
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 2

    .line 24948
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    .line 24949
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24950
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->build()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->build()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 6

    .line 24956
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 24957
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 24962
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$24502(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 24966
    :cond_1
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->l_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$24602(Lcom/avos/avoscloud/Messages$LogsCommand;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 24970
    :cond_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->limit_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$24702(Lcom/avos/avoscloud/Messages$LogsCommand;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 24974
    :cond_3
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->t_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$24802(Lcom/avos/avoscloud/Messages$LogsCommand;J)J

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 24978
    :cond_4
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tt_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$24902(Lcom/avos/avoscloud/Messages$LogsCommand;J)J

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 24982
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25002(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 24986
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25102(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 24990
    :cond_7
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25202(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 24994
    :cond_8
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->stored_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25302(Lcom/avos/avoscloud/Messages$LogsCommand;Z)Z

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 24998
    :cond_9
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->direction_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25402(Lcom/avos/avoscloud/Messages$LogsCommand;I)I

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 25002
    :cond_a
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tIncluded_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25502(Lcom/avos/avoscloud/Messages$LogsCommand;Z)Z

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    .line 25006
    :cond_b
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ttIncluded_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25602(Lcom/avos/avoscloud/Messages$LogsCommand;Z)Z

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    or-int/lit16 v3, v3, 0x1000

    .line 25010
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->lctype_:I

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25702(Lcom/avos/avoscloud/Messages$LogsCommand;I)I

    .line 25011
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_e

    .line 25012
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    .line 25013
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 25014
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25016
    :cond_d
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25802(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 25018
    :cond_e
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25802(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/util/List;)Ljava/util/List;

    .line 25020
    :goto_1
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25902(Lcom/avos/avoscloud/Messages$LogsCommand;I)I

    .line 25021
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 5

    .line 24902
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 24903
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 24904
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 24905
    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->l_:I

    .line 24906
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24907
    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->limit_:I

    .line 24908
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    .line 24909
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->t_:J

    .line 24910
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24911
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tt_:J

    .line 24912
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24913
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 24914
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24915
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 24916
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24917
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    .line 24918
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24919
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->stored_:Z

    .line 24920
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 24921
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->direction_:I

    .line 24922
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24923
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tIncluded_:Z

    .line 24924
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24925
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ttIncluded_:Z

    .line 24926
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24927
    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->lctype_:I

    .line 24928
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 24929
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24930
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 24931
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 24933
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearChecksum()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25576
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25577
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getChecksum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    .line 25578
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25220
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25221
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25222
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDirection()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25657
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 25658
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->direction_:I

    .line 25659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 0

    .line 25035
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearL()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25265
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 25266
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->l_:I

    .line 25267
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLctype()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25753
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 25754
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->lctype_:I

    .line 25755
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLimit()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25297
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 25298
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->limit_:I

    .line 25299
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLogs()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25912
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25913
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 25914
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25915
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25917
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearMid()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25500
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25501
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25502
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 0

    .line 25039
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStored()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25621
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 25622
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->stored_:Z

    .line 25623
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearT()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 2

    .line 25329
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 25330
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->t_:J

    .line 25331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTIncluded()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25689
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 25690
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tIncluded_:Z

    .line 25691
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTmid()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25424
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25425
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25426
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTt()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 2

    .line 25361
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 25362
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tt_:J

    .line 25363
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTtIncluded()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25721
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 25722
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ttIncluded_:Z

    .line 25723
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25026
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

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

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 2

    .line 25530
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    .line 25531
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 25532
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25534
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25535
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25536
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 25540
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getChecksumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 25548
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    .line 25549
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25550
    check-cast v0, Ljava/lang/String;

    .line 25551
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25553
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    return-object v0

    .line 25556
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 25174
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25175
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 25176
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25178
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25179
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25180
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 25184
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 25192
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25193
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25194
    check-cast v0, Ljava/lang/String;

    .line 25195
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25197
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 25200
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1

    .line 24944
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 24869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 24940
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$23900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    .locals 1

    .line 25638
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->direction_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->valueOf(I)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25639
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->OLD:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    :cond_0
    return-object v0
.end method

.method public getL()I
    .locals 1

    .line 25250
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->l_:I

    return v0
.end method

.method public getLctype()I
    .locals 1

    .line 25738
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->lctype_:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .line 25282
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->limit_:I

    return v0
.end method

.method public getLogs(I)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1

    .line 25795
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25796
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p1

    .line 25798
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p1
.end method

.method public getLogsBuilder(I)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 25939
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getLogsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    return-object p1
.end method

.method public getLogsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$LogItem$Builder;",
            ">;"
        }
    .end annotation

    .line 25982
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getLogsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogsCount()I
    .locals 1

    .line 25785
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25786
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 25788
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;"
        }
    .end annotation

    .line 25775
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25776
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25778
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogsOrBuilder(I)Lcom/avos/avoscloud/Messages$LogItemOrBuilder;
    .locals 1

    .line 25946
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25947
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItemOrBuilder;

    return-object p1

    .line 25948
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItemOrBuilder;

    return-object p1
.end method

.method public getLogsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$LogItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25956
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 25957
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25959
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 25454
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25455
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 25456
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25458
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25459
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25460
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 25464
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 25472
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25473
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25474
    check-cast v0, Ljava/lang/String;

    .line 25475
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25477
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    return-object v0

    .line 25480
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStored()Z
    .locals 1

    .line 25606
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->stored_:Z

    return v0
.end method

.method public getT()J
    .locals 2

    .line 25314
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->t_:J

    return-wide v0
.end method

.method public getTIncluded()Z
    .locals 1

    .line 25674
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tIncluded_:Z

    return v0
.end method

.method public getTmid()Ljava/lang/String;
    .locals 2

    .line 25378
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25379
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 25380
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25382
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25383
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25384
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 25388
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTmidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 25396
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25397
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25398
    check-cast v0, Ljava/lang/String;

    .line 25399
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25401
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    return-object v0

    .line 25404
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTt()J
    .locals 2

    .line 25346
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tt_:J

    return-wide v0
.end method

.method public getTtIncluded()Z
    .locals 1

    .line 25706
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ttIncluded_:Z

    return v0
.end method

.method public hasChecksum()Z
    .locals 2

    .line 25524
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 25168
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDirection()Z
    .locals 2

    .line 25632
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasL()Z
    .locals 2

    .line 25244
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasLctype()Z
    .locals 2

    .line 25732
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLimit()Z
    .locals 2

    .line 25276
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasMid()Z
    .locals 2

    .line 25448
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasStored()Z
    .locals 2

    .line 25600
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasT()Z
    .locals 2

    .line 25308
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasTIncluded()Z
    .locals 2

    .line 25668
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasTmid()Z
    .locals 2

    .line 25372
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasTt()Z
    .locals 2

    .line 25340
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

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

.method public hasTtIncluded()Z
    .locals 2

    .line 25700
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    const/16 v1, 0x800

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

    .line 24880
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$24000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$LogsCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 24881
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 2

    .line 25061
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 25062
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25063
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25064
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$24500(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25065
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    .line 25067
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25068
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getL()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setL(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25070
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25071
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setLimit(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25073
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25074
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25076
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25077
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setTt(J)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25079
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTmid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25080
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25081
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25000(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25082
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    .line 25084
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasMid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25085
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25086
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25100(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25087
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    .line 25089
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasChecksum()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25090
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25091
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25200(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    .line 25092
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    .line 25094
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasStored()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25095
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getStored()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setStored(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25097
    :cond_9
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasDirection()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25098
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDirection()Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setDirection(Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25100
    :cond_a
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTIncluded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25101
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTIncluded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setTIncluded(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25103
    :cond_b
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTtIncluded()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25104
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTtIncluded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setTtIncluded(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25106
    :cond_c
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLctype()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25107
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLctype()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setLctype(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25109
    :cond_d
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    .line 25110
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25800(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 25111
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 25112
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25800(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 25113
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 25115
    :cond_e
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25116
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25800(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25118
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_1

    .line 25121
    :cond_f
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25800(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 25122
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 25123
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 25124
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 25125
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25800(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    .line 25126
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25128
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$26000()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 25129
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->getLogsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 25131
    :cond_11
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$25800(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 25135
    :cond_12
    :goto_1
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->access$26100(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 25136
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25150
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 25156
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25152
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$LogsCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25153
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

    .line 25156
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25052
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$LogsCommand;

    if-eqz v0, :cond_0

    .line 25053
    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1

    .line 25055
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

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

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

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

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

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

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

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 0

    .line 26005
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeLogs(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25925
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25926
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25927
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25928
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25930
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setChecksum(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25567
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25568
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    .line 25569
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25565
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setChecksumBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25589
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25590
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->checksum_:Ljava/lang/Object;

    .line 25591
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25587
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25211
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25212
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25213
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25209
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25233
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25234
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->cid_:Ljava/lang/Object;

    .line 25235
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25231
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDirection(Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25648
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25649
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->direction_:I

    .line 25650
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25646
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 0

    .line 25031
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setL(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25256
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25257
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->l_:I

    .line 25258
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setLctype(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25744
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25745
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->lctype_:I

    .line 25746
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setLimit(I)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25288
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25289
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->limit_:I

    .line 25290
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setLogs(ILcom/avos/avoscloud/Messages$LogItem$Builder;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25823
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25824
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25825
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25826
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25828
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->build()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLogs(ILcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25806
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 25810
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ensureLogsIsMutable()V

    .line 25811
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->logs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25812
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    goto :goto_0

    .line 25808
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 25814
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25491
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25492
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25493
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25489
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25513
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25514
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mid_:Ljava/lang/Object;

    .line 25515
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25511
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 0

    .line 25044
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStored(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25612
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25613
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->stored_:Z

    .line 25614
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setT(J)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25320
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25321
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->t_:J

    .line 25322
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTIncluded(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25680
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25681
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tIncluded_:Z

    .line 25682
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTmid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25415
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25416
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25417
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25413
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTmidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 25437
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25438
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tmid_:Ljava/lang/Object;

    .line 25439
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0

    .line 25435
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTt(J)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25352
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25353
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->tt_:J

    .line 25354
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTtIncluded(Z)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 25712
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->bitField0_:I

    .line 25713
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->ttIncluded_:Z

    .line 25714
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 0

    .line 26000
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 24869
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method
