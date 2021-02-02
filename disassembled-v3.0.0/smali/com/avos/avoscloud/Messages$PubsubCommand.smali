.class public final Lcom/avos/avoscloud/Messages$PubsubCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PubsubCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    }
.end annotation


# static fields
.field public static final CIDS_FIELD_NUMBER:I = 0x2

.field public static final CID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PubsubCommand;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PubsubCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULTS_FIELD_NUMBER:I = 0x7

.field public static final SUBTOPICS_FIELD_NUMBER:I = 0x6

.field public static final SUBTOPIC_FIELD_NUMBER:I = 0x4

.field public static final TOPICS_FIELD_NUMBER:I = 0x5

.field public static final TOPIC_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private cids_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

.field private volatile subtopic_:Ljava/lang/Object;

.field private subtopics_:Lcom/google/protobuf/LazyStringList;

.field private volatile topic_:Ljava/lang/Object;

.field private topics_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35575
    new-instance v0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 35583
    new-instance v0, Lcom/avos/avoscloud/Messages$PubsubCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34076
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 34439
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedIsInitialized:B

    const-string v0, ""

    .line 34077
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    .line 34078
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 34079
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    .line 34080
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    .line 34081
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    .line 34082
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34094
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;-><init>()V

    .line 34097
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x10

    const/4 v5, 0x2

    if-nez v1, :cond_11

    .line 34101
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_d

    const/16 v8, 0xa

    if-eq v6, v8, :cond_c

    const/16 v8, 0x12

    if-eq v6, v8, :cond_a

    const/16 v8, 0x1a

    if-eq v6, v8, :cond_9

    const/16 v8, 0x22

    if-eq v6, v8, :cond_8

    const/16 v8, 0x2a

    if-eq v6, v8, :cond_6

    const/16 v8, 0x32

    if-eq v6, v8, :cond_4

    const/16 v8, 0x3a

    if-eq v6, v8, :cond_1

    .line 34107
    invoke-virtual {p0, p1, v0, p2, v6}, Lcom/avos/avoscloud/Messages$PubsubCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 34160
    iget v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/16 v8, 0x8

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_2

    .line 34161
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v6

    .line 34163
    :cond_2
    sget-object v7, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    iput-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v6, :cond_3

    .line 34165
    iget-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v6, v7}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 34166
    invoke-virtual {v6}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v6

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 34168
    :cond_3
    iget v6, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    goto :goto_0

    .line 34150
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    and-int/lit8 v7, v2, 0x20

    if-eq v7, v3, :cond_5

    .line 34152
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x20

    .line 34155
    :cond_5
    iget-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 34141
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    and-int/lit8 v7, v2, 0x10

    if-eq v7, v4, :cond_7

    .line 34143
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x10

    .line 34146
    :cond_7
    iget-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 34135
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 34136
    iget v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    .line 34137
    iput-object v6, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 34129
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 34130
    iget v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    or-int/2addr v7, v5

    iput v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    .line 34131
    iput-object v6, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 34120
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    and-int/lit8 v7, v2, 0x2

    if-eq v7, v5, :cond_b

    .line 34122
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 34125
    :cond_b
    iget-object v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 34114
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 34115
    iget v8, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    or-int/2addr v7, v8

    iput v7, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    .line 34116
    iput-object v6, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34176
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 34177
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 34174
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v5, :cond_e

    .line 34180
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v4, :cond_f

    .line 34183
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v3, :cond_10

    .line 34186
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    .line 34188
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34189
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_11
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v5, :cond_12

    .line 34180
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    :cond_12
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v4, :cond_13

    .line 34183
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    :cond_13
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v3, :cond_14

    .line 34186
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    .line 34188
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34189
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34067
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PubsubCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 34074
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 34439
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 34067
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$37300()Z
    .locals 1

    .line 34067
    sget-boolean v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$37500(Lcom/avos/avoscloud/Messages$PubsubCommand;)Ljava/lang/Object;
    .locals 0

    .line 34067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$37502(Lcom/avos/avoscloud/Messages$PubsubCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$37600(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 34067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$37602(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 34067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$37700(Lcom/avos/avoscloud/Messages$PubsubCommand;)Ljava/lang/Object;
    .locals 0

    .line 34067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$37702(Lcom/avos/avoscloud/Messages$PubsubCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$37800(Lcom/avos/avoscloud/Messages$PubsubCommand;)Ljava/lang/Object;
    .locals 0

    .line 34067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$37802(Lcom/avos/avoscloud/Messages$PubsubCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$37900(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 34067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$37902(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 34067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$38000(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 34067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$38002(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 34067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$38102(Lcom/avos/avoscloud/Messages$PubsubCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 0

    .line 34067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p1
.end method

.method static synthetic access$38202(Lcom/avos/avoscloud/Messages$PubsubCommand;I)I
    .locals 0

    .line 34067
    iput p1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$38300(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 34067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1

    .line 35579
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 34194
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$36900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 34681
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 34684
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34655
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 34656
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34662
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 34663
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34623
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34629
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34668
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 34669
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34675
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 34676
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34643
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 34644
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34650
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 34651
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34612
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34618
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34633
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34639
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PubsubCommand;",
            ">;"
        }
    .end annotation

    .line 35593
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 34533
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-nez v1, :cond_1

    .line 34534
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 34536
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 34539
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasCid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 34540
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 34541
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 34542
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 34544
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 34545
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 34546
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasTopic()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasTopic()Z

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 34547
    :goto_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasTopic()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 34548
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopic()Ljava/lang/String;

    move-result-object v1

    .line 34549
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 34551
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasSubtopic()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasSubtopic()Z

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 34552
    :goto_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasSubtopic()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_a

    .line 34553
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopic()Ljava/lang/String;

    move-result-object v1

    .line 34554
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 34556
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 34557
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_d

    .line 34558
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 34559
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    .line 34560
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasResults()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasResults()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    .line 34561
    :goto_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasResults()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 34562
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 34563
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    .line 34565
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 34217
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    .line 34218
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34219
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 34221
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34223
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34224
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34225
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 34235
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    .line 34236
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34237
    check-cast v0, Ljava/lang/String;

    .line 34238
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34240
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 34243
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCids(I)Ljava/lang/String;
    .locals 1

    .line 34266
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 34273
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCidsCount()I
    .locals 1

    .line 34260
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 34254
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getCidsList()Ljava/util/List;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1

    .line 35602
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PubsubCommand;",
            ">;"
        }
    .end annotation

    .line 35598
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 34430
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResultsOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 34436
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 34482
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 34486
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 34487
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 34491
    :goto_1
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 34492
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$PubsubCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 34495
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 34497
    iget v3, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 34498
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 34500
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 34501
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 34505
    :goto_2
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 34506
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$PubsubCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v0, v4

    .line 34509
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 34513
    :goto_3
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 34514
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/Messages$PubsubCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v0, v3

    .line 34517
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 34519
    iget v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 34521
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34523
    :cond_7
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 34524
    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedSize:I

    return v0
.end method

.method public getSubtopic()Ljava/lang/String;
    .locals 2

    .line 34330
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    .line 34331
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34332
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 34334
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34336
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34337
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34338
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSubtopicBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 34348
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    .line 34349
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34350
    check-cast v0, Ljava/lang/String;

    .line 34351
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34353
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    return-object v0

    .line 34356
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSubtopics(I)Ljava/lang/String;
    .locals 1

    .line 34408
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSubtopicsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 34415
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSubtopicsCount()I
    .locals 1

    .line 34402
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 34396
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getSubtopicsList()Ljava/util/List;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 2

    .line 34288
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    .line 34289
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34290
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 34292
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34294
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34295
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34296
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTopicBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 34306
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    .line 34307
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34308
    check-cast v0, Ljava/lang/String;

    .line 34309
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34311
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    return-object v0

    .line 34314
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTopics(I)Ljava/lang/String;
    .locals 1

    .line 34379
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTopicsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 34386
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getTopicsCount()I
    .locals 1

    .line 34373
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTopicsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 34367
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getTopicsList()Ljava/util/List;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 34088
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 34211
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

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

    .line 34424
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

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

.method public hasSubtopic()Z
    .locals 2

    .line 34324
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

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

.method public hasTopic()Z
    .locals 2

    .line 34282
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    .line 34571
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 34572
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 34575
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34576
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 34578
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34580
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCidsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 34582
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34584
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasTopic()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 34586
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34588
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasSubtopic()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 34590
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34592
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopicsCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 34594
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getTopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34596
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopicsCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 34598
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getSubtopicsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34600
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasResults()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 34602
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 34604
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34605
    iput v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 34199
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$37000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PubsubCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    .line 34200
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 34441
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 34445
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34446
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 34447
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedIsInitialized:B

    return v2

    .line 34451
    :cond_2
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 1

    .line 34679
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->newBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 2

    .line 34694
    new-instance v0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 34067
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 2

    .line 34687
    sget-object v0, Lcom/avos/avoscloud/Messages$PubsubCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PubsubCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 34688
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 34067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34457
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 34458
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34460
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    .line 34461
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34463
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    .line 34464
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topic_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 34466
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 34467
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopic_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    const/4 v1, 0x0

    .line 34469
    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 34470
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->topics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34472
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 34473
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->subtopics_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34475
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 34476
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34478
    :cond_6
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PubsubCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
