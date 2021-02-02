.class public final Lcom/avos/avoscloud/Messages$ConvCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConvCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    }
.end annotation


# static fields
.field public static final ALLOWEDPIDS_FIELD_NUMBER:I = 0x1e

.field public static final ATTR_FIELD_NUMBER:I = 0x67

.field public static final CDATE_FIELD_NUMBER:I = 0x5

.field public static final CIDS_FIELD_NUMBER:I = 0x19

.field public static final CID_FIELD_NUMBER:I = 0x4

.field public static final COUNT_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvCommand;

.field public static final FAILEDPIDS_FIELD_NUMBER:I = 0x1f

.field public static final FLAG_FIELD_NUMBER:I = 0xa

.field public static final INFO_FIELD_NUMBER:I = 0x1a

.field public static final INITBY_FIELD_NUMBER:I = 0x6

.field public static final LIMIT_FIELD_NUMBER:I = 0x8

.field public static final MAXACKTIMESTAMP_FIELD_NUMBER:I = 0x16

.field public static final MAXREADTIMESTAMP_FIELD_NUMBER:I = 0x15

.field public static final MAXREADTUPLES_FIELD_NUMBER:I = 0x18

.field public static final M_FIELD_NUMBER:I = 0x1

.field public static final NEXT_FIELD_NUMBER:I = 0x28

.field public static final N_FIELD_NUMBER:I = 0xe

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ConvCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUERYALLMEMBERS_FIELD_NUMBER:I = 0x17

.field public static final RESULTS_FIELD_NUMBER:I = 0x64

.field public static final SKIP_FIELD_NUMBER:I = 0x9

.field public static final SORT_FIELD_NUMBER:I = 0x7

.field public static final STATUSPUB_FIELD_NUMBER:I = 0x11

.field public static final STATUSSUB_FIELD_NUMBER:I = 0x10

.field public static final STATUSTTL_FIELD_NUMBER:I = 0x12

.field public static final S_FIELD_NUMBER:I = 0xf

.field public static final TARGETCLIENTID_FIELD_NUMBER:I = 0x14

.field public static final TEMPCONVIDS_FIELD_NUMBER:I = 0x1d

.field public static final TEMPCONVTTL_FIELD_NUMBER:I = 0x1c

.field public static final TEMPCONV_FIELD_NUMBER:I = 0x1b

.field public static final TRANSIENT_FIELD_NUMBER:I = 0x2

.field public static final T_FIELD_NUMBER:I = 0xd

.field public static final UDATE_FIELD_NUMBER:I = 0xc

.field public static final UNIQUEID_FIELD_NUMBER:I = 0x13

.field public static final UNIQUE_FIELD_NUMBER:I = 0x3

.field public static final WHERE_FIELD_NUMBER:I = 0x65

.field private static final serialVersionUID:J


# instance fields
.field private allowedPids_:Lcom/google/protobuf/LazyStringList;

.field private attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

.field private bitField0_:I

.field private volatile cdate_:Ljava/lang/Object;

.field private volatile cid_:Ljava/lang/Object;

.field private cids_:Lcom/google/protobuf/LazyStringList;

.field private count_:I

.field private failedPids_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation
.end field

.field private flag_:I

.field private info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

.field private volatile initBy_:Ljava/lang/Object;

.field private limit_:I

.field private m_:Lcom/google/protobuf/LazyStringList;

.field private maxAckTimestamp_:J

.field private maxReadTimestamp_:J

.field private maxReadTuples_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile n_:Ljava/lang/Object;

.field private volatile next_:Ljava/lang/Object;

.field private queryAllMembers_:Z

.field private results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

.field private volatile s_:Ljava/lang/Object;

.field private skip_:I

.field private volatile sort_:Ljava/lang/Object;

.field private statusPub_:Z

.field private statusSub_:Z

.field private statusTTL_:I

.field private t_:J

.field private volatile targetClientId_:Ljava/lang/Object;

.field private tempConvIds_:Lcom/google/protobuf/LazyStringList;

.field private tempConvTTL_:I

.field private tempConv_:Z

.field private transient_:Z

.field private volatile udate_:Ljava/lang/Object;

.field private volatile uniqueId_:Ljava/lang/Object;

.field private unique_:Z

.field private where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22296
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 22304
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ConvCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 17076
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 18350
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    .line 17077
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 17078
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->transient_:Z

    .line 17079
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unique_:Z

    const-string v1, ""

    .line 17080
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    .line 17081
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    .line 17082
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    .line 17083
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    .line 17084
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->limit_:I

    .line 17085
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->skip_:I

    .line 17086
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->flag_:I

    .line 17087
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->count_:I

    .line 17088
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 17089
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->t_:J

    .line 17090
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    .line 17091
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    .line 17092
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusSub_:Z

    .line 17093
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusPub_:Z

    .line 17094
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusTTL_:I

    .line 17095
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    .line 17096
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    .line 17097
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTimestamp_:J

    .line 17098
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxAckTimestamp_:J

    .line 17099
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->queryAllMembers_:Z

    .line 17100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    .line 17101
    sget-object v2, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 17102
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConv_:Z

    .line 17103
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvTTL_:I

    .line 17104
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 17105
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 17106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    .line 17107
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17119
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;-><init>()V

    .line 17123
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/high16 v3, 0x20000000

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x1000000

    const/high16 v6, 0x800000

    const/high16 v7, 0x10000000

    const/4 v8, 0x1

    if-nez v1, :cond_15

    .line 17127
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_0

    .line 17133
    invoke-virtual {p0, p1, v0, p2, v9}, Lcom/avos/avoscloud/Messages$ConvCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 17369
    :sswitch_0
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_1

    .line 17370
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v9}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v10

    .line 17372
    :cond_1
    sget-object v9, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v10, :cond_2

    .line 17374
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v10, v9}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 17375
    invoke-virtual {v10}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v9

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 17377
    :cond_2
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/2addr v9, v7

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    goto :goto_0

    .line 17356
    :sswitch_1
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v11, 0x8000000

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_3

    .line 17357
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v9}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v10

    .line 17359
    :cond_3
    sget-object v9, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v10, :cond_4

    .line 17361
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v10, v9}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 17362
    invoke-virtual {v10}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v9

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 17364
    :cond_4
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/2addr v9, v11

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    goto :goto_0

    .line 17343
    :sswitch_2
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v11, 0x4000000

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_5

    .line 17344
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v9}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v10

    .line 17346
    :cond_5
    sget-object v9, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v10, :cond_6

    .line 17348
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v10, v9}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 17349
    invoke-virtual {v10}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v9

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 17351
    :cond_6
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/2addr v9, v11

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    goto/16 :goto_0

    .line 17336
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17337
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17338
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_4
    and-int v9, v2, v4

    if-eq v9, v4, :cond_7

    .line 17328
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    or-int/2addr v2, v4

    .line 17331
    :cond_7
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    sget-object v10, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 17332
    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    .line 17331
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17318
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int v10, v2, v3

    if-eq v10, v3, :cond_8

    .line 17320
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    or-int/2addr v2, v3

    .line 17323
    :cond_8
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 17309
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int v10, v2, v7

    if-eq v10, v7, :cond_9

    .line 17311
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    or-int/2addr v2, v7

    .line 17314
    :cond_9
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 17304
    :sswitch_7
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/2addr v9, v5

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17305
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvTTL_:I

    goto/16 :goto_0

    .line 17299
    :sswitch_8
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/2addr v9, v6

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17300
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConv_:Z

    goto/16 :goto_0

    .line 17287
    :sswitch_9
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v11, 0x400000

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_a

    .line 17288
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-virtual {v9}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->toBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v10

    .line 17290
    :cond_a
    sget-object v9, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-eqz v10, :cond_b

    .line 17292
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-virtual {v10, v9}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    .line 17293
    invoke-virtual {v10}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 17295
    :cond_b
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/2addr v9, v11

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    goto/16 :goto_0

    .line 17277
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int v10, v2, v5

    if-eq v10, v5, :cond_c

    .line 17279
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    or-int/2addr v2, v5

    .line 17282
    :cond_c
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    :sswitch_b
    and-int v9, v2, v6

    if-eq v9, v6, :cond_d

    .line 17269
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    or-int/2addr v2, v6

    .line 17272
    :cond_d
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    sget-object v10, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 17273
    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    .line 17272
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17263
    :sswitch_c
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v10, 0x200000

    or-int/2addr v9, v10

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17264
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->queryAllMembers_:Z

    goto/16 :goto_0

    .line 17258
    :sswitch_d
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v10, 0x100000

    or-int/2addr v9, v10

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17259
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxAckTimestamp_:J

    goto/16 :goto_0

    .line 17253
    :sswitch_e
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v10, 0x80000

    or-int/2addr v9, v10

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17254
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTimestamp_:J

    goto/16 :goto_0

    .line 17247
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17248
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v11, 0x40000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17249
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17241
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17242
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v11, 0x20000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17243
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17236
    :sswitch_11
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v10, 0x10000

    or-int/2addr v9, v10

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17237
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusTTL_:I

    goto/16 :goto_0

    .line 17231
    :sswitch_12
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const v10, 0x8000

    or-int/2addr v9, v10

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17232
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusPub_:Z

    goto/16 :goto_0

    .line 17226
    :sswitch_13
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v9, v9, 0x4000

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17227
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusSub_:Z

    goto/16 :goto_0

    .line 17220
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17221
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17222
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17214
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17215
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17216
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17209
    :sswitch_16
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v9, v9, 0x800

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17210
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->t_:J

    goto/16 :goto_0

    .line 17203
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17204
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v10, v10, 0x400

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17205
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17198
    :sswitch_18
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v9, v9, 0x200

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17199
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->count_:I

    goto/16 :goto_0

    .line 17193
    :sswitch_19
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17194
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->flag_:I

    goto/16 :goto_0

    .line 17188
    :sswitch_1a
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit16 v9, v9, 0x80

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17189
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->skip_:I

    goto/16 :goto_0

    .line 17183
    :sswitch_1b
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit8 v9, v9, 0x40

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17184
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->limit_:I

    goto/16 :goto_0

    .line 17177
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17178
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17179
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17171
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17172
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17173
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17165
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17166
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17167
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17159
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 17160
    iget v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17161
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 17154
    :sswitch_20
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unique_:Z

    goto/16 :goto_0

    .line 17149
    :sswitch_21
    iget v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    or-int/2addr v9, v8

    iput v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    .line 17150
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->transient_:Z

    goto/16 :goto_0

    .line 17140
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int/lit8 v10, v2, 0x1

    if-eq v10, v8, :cond_e

    .line 17142
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 17145
    :cond_e
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_23
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17385
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 17386
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17383
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v8, :cond_f

    .line 17389
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    :cond_f
    and-int p2, v2, v6

    if-ne p2, v6, :cond_10

    .line 17392
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    :cond_10
    and-int p2, v2, v5

    if-ne p2, v5, :cond_11

    .line 17395
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    :cond_11
    and-int p2, v2, v7

    if-ne p2, v7, :cond_12

    .line 17398
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    :cond_12
    and-int p2, v2, v3

    if-ne p2, v3, :cond_13

    .line 17401
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    :cond_13
    and-int p2, v2, v4

    if-ne p2, v4, :cond_14

    .line 17404
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    .line 17406
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17407
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_15
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v8, :cond_16

    .line 17389
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    :cond_16
    and-int p1, v2, v6

    if-ne p1, v6, :cond_17

    .line 17392
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    :cond_17
    and-int p1, v2, v5

    if-ne p1, v5, :cond_18

    .line 17395
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    :cond_18
    and-int p1, v2, v7

    if-ne p1, v7, :cond_19

    .line 17398
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    :cond_19
    and-int p1, v2, v3

    if-ne p1, v3, :cond_1a

    .line 17401
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    :cond_1a
    and-int p1, v2, v4

    if-ne p1, v4, :cond_1b

    .line 17404
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    .line 17406
    :cond_1b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17407
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_23
        0xa -> :sswitch_22
        0x10 -> :sswitch_21
        0x18 -> :sswitch_20
        0x22 -> :sswitch_1f
        0x2a -> :sswitch_1e
        0x32 -> :sswitch_1d
        0x3a -> :sswitch_1c
        0x40 -> :sswitch_1b
        0x48 -> :sswitch_1a
        0x50 -> :sswitch_19
        0x58 -> :sswitch_18
        0x62 -> :sswitch_17
        0x68 -> :sswitch_16
        0x72 -> :sswitch_15
        0x7a -> :sswitch_14
        0x80 -> :sswitch_13
        0x88 -> :sswitch_12
        0x90 -> :sswitch_11
        0x9a -> :sswitch_10
        0xa2 -> :sswitch_f
        0xa8 -> :sswitch_e
        0xb0 -> :sswitch_d
        0xb8 -> :sswitch_c
        0xc2 -> :sswitch_b
        0xca -> :sswitch_a
        0xd2 -> :sswitch_9
        0xd8 -> :sswitch_8
        0xe0 -> :sswitch_7
        0xea -> :sswitch_6
        0xf2 -> :sswitch_5
        0xfa -> :sswitch_4
        0x142 -> :sswitch_3
        0x322 -> :sswitch_2
        0x32a -> :sswitch_1
        0x33a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17067
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 17074
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 18350
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 17067
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$18100()Z
    .locals 1

    .line 17067
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ConvCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18300(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$18302(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$18402(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z
    .locals 0

    .line 17067
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->transient_:Z

    return p1
.end method

.method static synthetic access$18502(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z
    .locals 0

    .line 17067
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unique_:Z

    return p1
.end method

.method static synthetic access$18600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18602(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18700(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18702(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18800(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18802(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18900(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18902(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19002(Lcom/avos/avoscloud/Messages$ConvCommand;I)I
    .locals 0

    .line 17067
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->limit_:I

    return p1
.end method

.method static synthetic access$19102(Lcom/avos/avoscloud/Messages$ConvCommand;I)I
    .locals 0

    .line 17067
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->skip_:I

    return p1
.end method

.method static synthetic access$19202(Lcom/avos/avoscloud/Messages$ConvCommand;I)I
    .locals 0

    .line 17067
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->flag_:I

    return p1
.end method

.method static synthetic access$19302(Lcom/avos/avoscloud/Messages$ConvCommand;I)I
    .locals 0

    .line 17067
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->count_:I

    return p1
.end method

.method static synthetic access$19400(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19402(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/avos/avoscloud/Messages$ConvCommand;J)J
    .locals 0

    .line 17067
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->t_:J

    return-wide p1
.end method

.method static synthetic access$19600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19602(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19700(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19702(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19802(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z
    .locals 0

    .line 17067
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusSub_:Z

    return p1
.end method

.method static synthetic access$19902(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z
    .locals 0

    .line 17067
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusPub_:Z

    return p1
.end method

.method static synthetic access$20002(Lcom/avos/avoscloud/Messages$ConvCommand;I)I
    .locals 0

    .line 17067
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusTTL_:I

    return p1
.end method

.method static synthetic access$20100(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20102(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20200(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20202(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20302(Lcom/avos/avoscloud/Messages$ConvCommand;J)J
    .locals 0

    .line 17067
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$20402(Lcom/avos/avoscloud/Messages$ConvCommand;J)J
    .locals 0

    .line 17067
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxAckTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$20502(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z
    .locals 0

    .line 17067
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->queryAllMembers_:Z

    return p1
.end method

.method static synthetic access$20600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$20602(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20700(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$20702(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20802(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p1
.end method

.method static synthetic access$20902(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z
    .locals 0

    .line 17067
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConv_:Z

    return p1
.end method

.method static synthetic access$21002(Lcom/avos/avoscloud/Messages$ConvCommand;I)I
    .locals 0

    .line 17067
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvTTL_:I

    return p1
.end method

.method static synthetic access$21100(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$21102(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$21200(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$21202(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$21300(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$21302(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21400(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$21402(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21502(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p1
.end method

.method static synthetic access$21602(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p1
.end method

.method static synthetic access$21702(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 0

    .line 17067
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p1
.end method

.method static synthetic access$21802(Lcom/avos/avoscloud/Messages$ConvCommand;I)I
    .locals 0

    .line 17067
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$21900()Z
    .locals 1

    .line 17067
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ConvCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$22000()Z
    .locals 1

    .line 17067
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ConvCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$22100(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1

    .line 22300
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17412
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$17700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19055
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19058
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19029
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 19030
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19036
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 19037
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18997
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19003
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19042
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 19043
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19049
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 19050
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19017
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 19018
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19024
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 19025
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18986
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18992
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19007
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19013
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ConvCommand;",
            ">;"
        }
    .end annotation

    .line 22314
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18655
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$ConvCommand;

    if-nez v1, :cond_1

    .line 18656
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18658
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 18661
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 18662
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 18663
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTransient()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTransient()Z

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 18664
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTransient()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 18665
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTransient()Z

    move-result v1

    .line 18666
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTransient()Z

    move-result v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 18668
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUnique()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUnique()Z

    move-result v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 18669
    :goto_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUnique()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    .line 18670
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUnique()Z

    move-result v1

    .line 18671
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUnique()Z

    move-result v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 18673
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCid()Z

    move-result v3

    if-ne v1, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 18674
    :goto_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCid()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 18675
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 18676
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 18678
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCdate()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCdate()Z

    move-result v3

    if-ne v1, v3, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 18679
    :goto_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCdate()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_d

    .line 18680
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCdate()Ljava/lang/String;

    move-result-object v1

    .line 18681
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCdate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    .line 18683
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInitBy()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInitBy()Z

    move-result v3

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    .line 18684
    :goto_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInitBy()Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v1, :cond_10

    .line 18685
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object v1

    .line 18686
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_a
    if-eqz v1, :cond_12

    .line 18688
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSort()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSort()Z

    move-result v3

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 18689
    :goto_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSort()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v1, :cond_13

    .line 18690
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSort()Ljava/lang/String;

    move-result-object v1

    .line 18691
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_c
    if-eqz v1, :cond_15

    .line 18693
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasLimit()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasLimit()Z

    move-result v3

    if-ne v1, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    .line 18694
    :goto_d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasLimit()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v1, :cond_16

    .line 18695
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getLimit()I

    move-result v1

    .line 18696
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getLimit()I

    move-result v3

    if-ne v1, v3, :cond_16

    const/4 v1, 0x1

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_e
    if-eqz v1, :cond_18

    .line 18698
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSkip()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSkip()Z

    move-result v3

    if-ne v1, v3, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    .line 18699
    :goto_f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSkip()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v1, :cond_19

    .line 18700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSkip()I

    move-result v1

    .line 18701
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSkip()I

    move-result v3

    if-ne v1, v3, :cond_19

    const/4 v1, 0x1

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_10
    if-eqz v1, :cond_1b

    .line 18703
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasFlag()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasFlag()Z

    move-result v3

    if-ne v1, v3, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    .line 18704
    :goto_11
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasFlag()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_1c

    .line 18705
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFlag()I

    move-result v1

    .line 18706
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFlag()I

    move-result v3

    if-ne v1, v3, :cond_1c

    const/4 v1, 0x1

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_12
    if-eqz v1, :cond_1e

    .line 18708
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCount()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCount()Z

    move-result v3

    if-ne v1, v3, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    .line 18709
    :goto_13
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCount()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v1, :cond_1f

    .line 18710
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCount()I

    move-result v1

    .line 18711
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCount()I

    move-result v3

    if-ne v1, v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_14

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_14
    if-eqz v1, :cond_21

    .line 18713
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUdate()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUdate()Z

    move-result v3

    if-ne v1, v3, :cond_21

    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    .line 18714
    :goto_15
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUdate()Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v1, :cond_22

    .line 18715
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUdate()Ljava/lang/String;

    move-result-object v1

    .line 18716
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUdate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_16

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_16
    if-eqz v1, :cond_24

    .line 18718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasT()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasT()Z

    move-result v3

    if-ne v1, v3, :cond_24

    const/4 v1, 0x1

    goto :goto_17

    :cond_24
    const/4 v1, 0x0

    .line 18719
    :goto_17
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasT()Z

    move-result v3

    if-eqz v3, :cond_26

    if-eqz v1, :cond_25

    .line 18720
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getT()J

    move-result-wide v3

    .line 18721
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getT()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_18

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_18
    if-eqz v1, :cond_27

    .line 18723
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasN()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasN()Z

    move-result v3

    if-ne v1, v3, :cond_27

    const/4 v1, 0x1

    goto :goto_19

    :cond_27
    const/4 v1, 0x0

    .line 18724
    :goto_19
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasN()Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz v1, :cond_28

    .line 18725
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getN()Ljava/lang/String;

    move-result-object v1

    .line 18726
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1a

    :cond_28
    const/4 v1, 0x0

    :cond_29
    :goto_1a
    if-eqz v1, :cond_2a

    .line 18728
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasS()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasS()Z

    move-result v3

    if-ne v1, v3, :cond_2a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v1, 0x0

    .line 18729
    :goto_1b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasS()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v1, :cond_2b

    .line 18730
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getS()Ljava/lang/String;

    move-result-object v1

    .line 18731
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v1, 0x0

    :cond_2c
    :goto_1c
    if-eqz v1, :cond_2d

    .line 18733
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusSub()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusSub()Z

    move-result v3

    if-ne v1, v3, :cond_2d

    const/4 v1, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v1, 0x0

    .line 18734
    :goto_1d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusSub()Z

    move-result v3

    if-eqz v3, :cond_2f

    if-eqz v1, :cond_2e

    .line 18735
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusSub()Z

    move-result v1

    .line 18736
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusSub()Z

    move-result v3

    if-ne v1, v3, :cond_2e

    const/4 v1, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v1, 0x0

    :cond_2f
    :goto_1e
    if-eqz v1, :cond_30

    .line 18738
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusPub()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusPub()Z

    move-result v3

    if-ne v1, v3, :cond_30

    const/4 v1, 0x1

    goto :goto_1f

    :cond_30
    const/4 v1, 0x0

    .line 18739
    :goto_1f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusPub()Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v1, :cond_31

    .line 18740
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusPub()Z

    move-result v1

    .line 18741
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusPub()Z

    move-result v3

    if-ne v1, v3, :cond_31

    const/4 v1, 0x1

    goto :goto_20

    :cond_31
    const/4 v1, 0x0

    :cond_32
    :goto_20
    if-eqz v1, :cond_33

    .line 18743
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusTTL()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusTTL()Z

    move-result v3

    if-ne v1, v3, :cond_33

    const/4 v1, 0x1

    goto :goto_21

    :cond_33
    const/4 v1, 0x0

    .line 18744
    :goto_21
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusTTL()Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v1, :cond_34

    .line 18745
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusTTL()I

    move-result v1

    .line 18746
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusTTL()I

    move-result v3

    if-ne v1, v3, :cond_34

    const/4 v1, 0x1

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    :cond_35
    :goto_22
    if-eqz v1, :cond_36

    .line 18748
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUniqueId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUniqueId()Z

    move-result v3

    if-ne v1, v3, :cond_36

    const/4 v1, 0x1

    goto :goto_23

    :cond_36
    const/4 v1, 0x0

    .line 18749
    :goto_23
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUniqueId()Z

    move-result v3

    if-eqz v3, :cond_38

    if-eqz v1, :cond_37

    .line 18750
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 18751
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_24

    :cond_37
    const/4 v1, 0x0

    :cond_38
    :goto_24
    if-eqz v1, :cond_39

    .line 18753
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTargetClientId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTargetClientId()Z

    move-result v3

    if-ne v1, v3, :cond_39

    const/4 v1, 0x1

    goto :goto_25

    :cond_39
    const/4 v1, 0x0

    .line 18754
    :goto_25
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTargetClientId()Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz v1, :cond_3a

    .line 18755
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTargetClientId()Ljava/lang/String;

    move-result-object v1

    .line 18756
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTargetClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_26

    :cond_3a
    const/4 v1, 0x0

    :cond_3b
    :goto_26
    if-eqz v1, :cond_3c

    .line 18758
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxReadTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxReadTimestamp()Z

    move-result v3

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x1

    goto :goto_27

    :cond_3c
    const/4 v1, 0x0

    .line 18759
    :goto_27
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxReadTimestamp()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eqz v1, :cond_3d

    .line 18760
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTimestamp()J

    move-result-wide v3

    .line 18761
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3d

    const/4 v1, 0x1

    goto :goto_28

    :cond_3d
    const/4 v1, 0x0

    :cond_3e
    :goto_28
    if-eqz v1, :cond_3f

    .line 18763
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxAckTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxAckTimestamp()Z

    move-result v3

    if-ne v1, v3, :cond_3f

    const/4 v1, 0x1

    goto :goto_29

    :cond_3f
    const/4 v1, 0x0

    .line 18764
    :goto_29
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxAckTimestamp()Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz v1, :cond_40

    .line 18765
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxAckTimestamp()J

    move-result-wide v3

    .line 18766
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxAckTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_40

    const/4 v1, 0x1

    goto :goto_2a

    :cond_40
    const/4 v1, 0x0

    :cond_41
    :goto_2a
    if-eqz v1, :cond_42

    .line 18768
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasQueryAllMembers()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasQueryAllMembers()Z

    move-result v3

    if-ne v1, v3, :cond_42

    const/4 v1, 0x1

    goto :goto_2b

    :cond_42
    const/4 v1, 0x0

    .line 18769
    :goto_2b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasQueryAllMembers()Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v1, :cond_43

    .line 18770
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getQueryAllMembers()Z

    move-result v1

    .line 18771
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getQueryAllMembers()Z

    move-result v3

    if-ne v1, v3, :cond_43

    const/4 v1, 0x1

    goto :goto_2c

    :cond_43
    const/4 v1, 0x0

    :cond_44
    :goto_2c
    if-eqz v1, :cond_45

    .line 18773
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTuplesList()Ljava/util/List;

    move-result-object v1

    .line 18774
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTuplesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    goto :goto_2d

    :cond_45
    const/4 v1, 0x0

    :goto_2d
    if-eqz v1, :cond_46

    .line 18775
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 18776
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x1

    goto :goto_2e

    :cond_46
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_47

    .line 18777
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInfo()Z

    move-result v3

    if-ne v1, v3, :cond_47

    const/4 v1, 0x1

    goto :goto_2f

    :cond_47
    const/4 v1, 0x0

    .line 18778
    :goto_2f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInfo()Z

    move-result v3

    if-eqz v3, :cond_49

    if-eqz v1, :cond_48

    .line 18779
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v1

    .line 18780
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    goto :goto_30

    :cond_48
    const/4 v1, 0x0

    :cond_49
    :goto_30
    if-eqz v1, :cond_4a

    .line 18782
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConv()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConv()Z

    move-result v3

    if-ne v1, v3, :cond_4a

    const/4 v1, 0x1

    goto :goto_31

    :cond_4a
    const/4 v1, 0x0

    .line 18783
    :goto_31
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConv()Z

    move-result v3

    if-eqz v3, :cond_4c

    if-eqz v1, :cond_4b

    .line 18784
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConv()Z

    move-result v1

    .line 18785
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConv()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    const/4 v1, 0x1

    goto :goto_32

    :cond_4b
    const/4 v1, 0x0

    :cond_4c
    :goto_32
    if-eqz v1, :cond_4d

    .line 18787
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConvTTL()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConvTTL()Z

    move-result v3

    if-ne v1, v3, :cond_4d

    const/4 v1, 0x1

    goto :goto_33

    :cond_4d
    const/4 v1, 0x0

    .line 18788
    :goto_33
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConvTTL()Z

    move-result v3

    if-eqz v3, :cond_4f

    if-eqz v1, :cond_4e

    .line 18789
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvTTL()I

    move-result v1

    .line 18790
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvTTL()I

    move-result v3

    if-ne v1, v3, :cond_4e

    const/4 v1, 0x1

    goto :goto_34

    :cond_4e
    const/4 v1, 0x0

    :cond_4f
    :goto_34
    if-eqz v1, :cond_50

    .line 18792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 18793
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    goto :goto_35

    :cond_50
    const/4 v1, 0x0

    :goto_35
    if-eqz v1, :cond_51

    .line 18794
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 18795
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x1

    goto :goto_36

    :cond_51
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_52

    .line 18796
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object v1

    .line 18797
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x1

    goto :goto_37

    :cond_52
    const/4 v1, 0x0

    :goto_37
    if-eqz v1, :cond_53

    .line 18798
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasNext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasNext()Z

    move-result v3

    if-ne v1, v3, :cond_53

    const/4 v1, 0x1

    goto :goto_38

    :cond_53
    const/4 v1, 0x0

    .line 18799
    :goto_38
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    if-eqz v1, :cond_54

    .line 18800
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getNext()Ljava/lang/String;

    move-result-object v1

    .line 18801
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getNext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v1, 0x1

    goto :goto_39

    :cond_54
    const/4 v1, 0x0

    :cond_55
    :goto_39
    if-eqz v1, :cond_56

    .line 18803
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasResults()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasResults()Z

    move-result v3

    if-ne v1, v3, :cond_56

    const/4 v1, 0x1

    goto :goto_3a

    :cond_56
    const/4 v1, 0x0

    .line 18804
    :goto_3a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasResults()Z

    move-result v3

    if-eqz v3, :cond_58

    if-eqz v1, :cond_57

    .line 18805
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 18806
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x1

    goto :goto_3b

    :cond_57
    const/4 v1, 0x0

    :cond_58
    :goto_3b
    if-eqz v1, :cond_59

    .line 18808
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasWhere()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasWhere()Z

    move-result v3

    if-ne v1, v3, :cond_59

    const/4 v1, 0x1

    goto :goto_3c

    :cond_59
    const/4 v1, 0x0

    .line 18809
    :goto_3c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasWhere()Z

    move-result v3

    if-eqz v3, :cond_5b

    if-eqz v1, :cond_5a

    .line 18810
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 18811
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    goto :goto_3d

    :cond_5a
    const/4 v1, 0x0

    :cond_5b
    :goto_3d
    if-eqz v1, :cond_5c

    .line 18813
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasAttr()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasAttr()Z

    move-result v3

    if-ne v1, v3, :cond_5c

    const/4 v1, 0x1

    goto :goto_3e

    :cond_5c
    const/4 v1, 0x0

    .line 18814
    :goto_3e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasAttr()Z

    move-result v3

    if-eqz v3, :cond_5e

    if-eqz v1, :cond_5d

    .line 18815
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 18816
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v1, 0x1

    goto :goto_3f

    :cond_5d
    const/4 v1, 0x0

    :cond_5e
    :goto_3f
    if-eqz v1, :cond_5f

    .line 18818
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_40

    :cond_5f
    const/4 v0, 0x0

    :goto_40
    return v0
.end method

.method public getAllowedPids(I)Ljava/lang/String;
    .locals 1

    .line 18188
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 18195
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedPidsCount()I
    .locals 1

    .line 18182
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 18176
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getAllowedPidsList()Ljava/util/List;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 18341
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAttrOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 18347
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCdate()Ljava/lang/String;
    .locals 2

    .line 17536
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    .line 17537
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17538
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17540
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17542
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17543
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17544
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCdateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17554
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    .line 17555
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17556
    check-cast v0, Ljava/lang/String;

    .line 17557
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17559
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    return-object v0

    .line 17562
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 17494
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    .line 17495
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17496
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17498
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17500
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17501
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17502
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17512
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    .line 17513
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17514
    check-cast v0, Ljava/lang/String;

    .line 17515
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17517
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 17520
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCids(I)Ljava/lang/String;
    .locals 1

    .line 18079
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 18086
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCidsCount()I
    .locals 1

    .line 18073
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 18067
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getCidsList()Ljava/util/List;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 17707
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->count_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1

    .line 22323
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 18223
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p1
.end method

.method public getFailedPidsCount()I
    .locals 1

    .line 18217
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFailedPidsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation

    .line 18204
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    return-object v0
.end method

.method public getFailedPidsOrBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
    .locals 1

    .line 18230
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;

    return-object p1
.end method

.method public getFailedPidsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 18211
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 17692
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->flag_:I

    return v0
.end method

.method public getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1

    .line 18101
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInfoOrBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;
    .locals 1

    .line 18107
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInitBy()Ljava/lang/String;
    .locals 2

    .line 17578
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    .line 17579
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17580
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17582
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17584
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17585
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17586
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getInitByBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17596
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    .line 17597
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17598
    check-cast v0, Ljava/lang/String;

    .line 17599
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17601
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    return-object v0

    .line 17604
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 17662
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->limit_:I

    return v0
.end method

.method public getM(I)Ljava/lang/String;
    .locals 1

    .line 17442
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17449
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMCount()I
    .locals 1

    .line 17436
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 17430
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getMList()Ljava/util/List;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAckTimestamp()J
    .locals 2

    .line 18007
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxAckTimestamp_:J

    return-wide v0
.end method

.method public getMaxReadTimestamp()J
    .locals 2

    .line 17992
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTimestamp_:J

    return-wide v0
.end method

.method public getMaxReadTuples(I)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1

    .line 18050
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p1
.end method

.method public getMaxReadTuplesCount()I
    .locals 1

    .line 18044
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMaxReadTuplesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation

    .line 18031
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    return-object v0
.end method

.method public getMaxReadTuplesOrBuilder(I)Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;
    .locals 1

    .line 18057
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;

    return-object p1
.end method

.method public getMaxReadTuplesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 18038
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 17779
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    .line 17780
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17781
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17783
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17785
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17786
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17787
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17797
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    .line 17798
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17799
    check-cast v0, Ljava/lang/String;

    .line 17800
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17802
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    return-object v0

    .line 17805
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 2

    .line 18253
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    .line 18254
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18255
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 18257
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18259
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18260
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18261
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18275
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    .line 18276
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18277
    check-cast v0, Ljava/lang/String;

    .line 18278
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18280
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    return-object v0

    .line 18283
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ConvCommand;",
            ">;"
        }
    .end annotation

    .line 22319
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getQueryAllMembers()Z
    .locals 1

    .line 18022
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->queryAllMembers_:Z

    return v0
.end method

.method public getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 18299
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResultsOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 18305
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 17821
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    .line 17822
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17823
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17825
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17827
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17828
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17829
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17839
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    .line 17840
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17841
    check-cast v0, Ljava/lang/String;

    .line 17842
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17844
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    return-object v0

    .line 17847
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 18495
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 18501
    :goto_0
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 18502
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/Messages$ConvCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 18505
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    const/4 v3, 0x1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 18507
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    and-int/2addr v1, v3

    const/4 v4, 0x2

    if-ne v1, v3, :cond_2

    .line 18508
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->transient_:Z

    .line 18509
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18511
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    .line 18512
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unique_:Z

    .line 18513
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18515
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 18516
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18518
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 18519
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18521
    :cond_5
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v5, 0x10

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const/4 v1, 0x6

    .line 18522
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18524
    :cond_6
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v6, 0x20

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_7

    const/4 v1, 0x7

    .line 18525
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18527
    :cond_7
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v6, 0x40

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_8

    .line 18528
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->limit_:I

    .line 18529
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 18531
    :cond_8
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    const/16 v1, 0x9

    .line 18532
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->skip_:I

    .line 18533
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 18535
    :cond_9
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    const/16 v1, 0xa

    .line 18536
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->flag_:I

    .line 18537
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 18539
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    const/16 v1, 0xb

    .line 18540
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->count_:I

    .line 18541
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 18543
    :cond_b
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_c

    const/16 v1, 0xc

    .line 18544
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18546
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    const/16 v1, 0xd

    .line 18547
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->t_:J

    .line 18548
    invoke-static {v1, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18550
    :cond_d
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_e

    const/16 v1, 0xe

    .line 18551
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18553
    :cond_e
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_f

    const/16 v1, 0xf

    .line 18554
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18556
    :cond_f
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_10

    .line 18557
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusSub_:Z

    .line 18558
    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18560
    :cond_10
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_11

    const/16 v1, 0x11

    .line 18561
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusPub_:Z

    .line 18562
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18564
    :cond_11
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_12

    const/16 v1, 0x12

    .line 18565
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusTTL_:I

    .line 18566
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 18568
    :cond_12
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_13

    const/16 v1, 0x13

    .line 18569
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18571
    :cond_13
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_14

    const/16 v1, 0x14

    .line 18572
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18574
    :cond_14
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_15

    const/16 v1, 0x15

    .line 18575
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTimestamp_:J

    .line 18576
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18578
    :cond_15
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_16

    const/16 v1, 0x16

    .line 18579
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxAckTimestamp_:J

    .line 18580
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18582
    :cond_16
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_17

    const/16 v1, 0x17

    .line 18583
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->queryAllMembers_:Z

    .line 18584
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v2, v1

    :cond_17
    const/4 v1, 0x0

    .line 18586
    :goto_1
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_18

    const/16 v3, 0x18

    .line 18587
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    .line 18588
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_18
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 18592
    :goto_2
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_19

    .line 18593
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$ConvCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    add-int/2addr v2, v3

    .line 18596
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 18598
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1a

    const/16 v1, 0x1a

    .line 18600
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    .line 18602
    :cond_1a
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1b

    const/16 v1, 0x1b

    .line 18603
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConv_:Z

    .line 18604
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 18606
    :cond_1b
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1c

    const/16 v1, 0x1c

    .line 18607
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvTTL_:I

    .line 18608
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    :cond_1c
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 18612
    :goto_3
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1d

    .line 18613
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$ConvCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1d
    add-int/2addr v2, v3

    .line 18616
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 18620
    :goto_4
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1e

    .line 18621
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$ConvCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    add-int/2addr v2, v3

    .line 18624
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 18626
    :goto_5
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    const/16 v1, 0x1f

    .line 18627
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    .line 18628
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 18630
    :cond_1f
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    const/16 v0, 0x28

    .line 18631
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 18633
    :cond_20
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    const/16 v0, 0x64

    .line 18635
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 18637
    :cond_21
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    const/16 v0, 0x65

    .line 18639
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 18641
    :cond_22
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_23

    const/16 v0, 0x67

    .line 18643
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 18645
    :cond_23
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 18646
    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedSize:I

    return v2
.end method

.method public getSkip()I
    .locals 1

    .line 17677
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->skip_:I

    return v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 2

    .line 17620
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    .line 17621
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17622
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17624
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17626
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17627
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17628
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSortBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17638
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    .line 17639
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17640
    check-cast v0, Ljava/lang/String;

    .line 17641
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17643
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    return-object v0

    .line 17646
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatusPub()Z
    .locals 1

    .line 17878
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusPub_:Z

    return v0
.end method

.method public getStatusSub()Z
    .locals 1

    .line 17863
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusSub_:Z

    return v0
.end method

.method public getStatusTTL()I
    .locals 1

    .line 17893
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusTTL_:I

    return v0
.end method

.method public getT()J
    .locals 2

    .line 17764
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->t_:J

    return-wide v0
.end method

.method public getTargetClientId()Ljava/lang/String;
    .locals 2

    .line 17950
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    .line 17951
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17952
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17954
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17956
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17957
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17958
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTargetClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17968
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    .line 17969
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17970
    check-cast v0, Ljava/lang/String;

    .line 17971
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17973
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    return-object v0

    .line 17976
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTempConv()Z
    .locals 1

    .line 18122
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConv_:Z

    return v0
.end method

.method public getTempConvIds(I)Ljava/lang/String;
    .locals 1

    .line 18159
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTempConvIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 18166
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getTempConvIdsCount()I
    .locals 1

    .line 18153
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 18147
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getTempConvIdsList()Ljava/util/List;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getTempConvTTL()I
    .locals 1

    .line 18137
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvTTL_:I

    return v0
.end method

.method public getTransient()Z
    .locals 1

    .line 17464
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->transient_:Z

    return v0
.end method

.method public getUdate()Ljava/lang/String;
    .locals 2

    .line 17722
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    .line 17723
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17724
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17726
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17728
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17729
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17730
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getUdateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17740
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    .line 17741
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17742
    check-cast v0, Ljava/lang/String;

    .line 17743
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17745
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    return-object v0

    .line 17748
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUnique()Z
    .locals 1

    .line 17479
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unique_:Z

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    .line 17908
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    .line 17909
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17910
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17912
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17914
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17915
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17916
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 17926
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    .line 17927
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17928
    check-cast v0, Ljava/lang/String;

    .line 17929
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17931
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    return-object v0

    .line 17934
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 17113
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 18320
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWhereOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 18326
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAttr()Z
    .locals 2

    .line 18335
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCdate()Z
    .locals 2

    .line 17530
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 17488
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasCount()Z
    .locals 2

    .line 17701
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasFlag()Z
    .locals 2

    .line 17686
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasInfo()Z
    .locals 2

    .line 18095
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitBy()Z
    .locals 2

    .line 17572
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasLimit()Z
    .locals 2

    .line 17656
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasMaxAckTimestamp()Z
    .locals 2

    .line 18001
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxReadTimestamp()Z
    .locals 2

    .line 17986
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasN()Z
    .locals 2

    .line 17773
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasNext()Z
    .locals 2

    .line 18243
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQueryAllMembers()Z
    .locals 2

    .line 18016
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResults()Z
    .locals 2

    .line 18293
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasS()Z
    .locals 2

    .line 17815
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSkip()Z
    .locals 2

    .line 17671
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasSort()Z
    .locals 2

    .line 17614
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasStatusPub()Z
    .locals 2

    .line 17872
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusSub()Z
    .locals 2

    .line 17857
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusTTL()Z
    .locals 2

    .line 17887
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x10000

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

    .line 17758
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasTargetClientId()Z
    .locals 2

    .line 17944
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTempConv()Z
    .locals 2

    .line 18116
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTempConvTTL()Z
    .locals 2

    .line 18131
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransient()Z
    .locals 2

    .line 17458
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUdate()Z
    .locals 2

    .line 17716
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasUnique()Z
    .locals 2

    .line 17473
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

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

.method public hasUniqueId()Z
    .locals 2

    .line 17902
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWhere()Z
    .locals 2

    .line 18314
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x8000000

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
    .locals 3

    .line 18824
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 18825
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 18828
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18829
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 18831
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18833
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTransient()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 18836
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTransient()Z

    move-result v1

    .line 18835
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 18838
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUnique()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 18841
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUnique()Z

    move-result v1

    .line 18840
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 18843
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 18845
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18847
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCdate()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 18849
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18851
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInitBy()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 18853
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18855
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSort()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 18857
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18859
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 18861
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 18863
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSkip()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 18865
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSkip()I

    move-result v1

    add-int/2addr v0, v1

    .line 18867
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasFlag()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 18869
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFlag()I

    move-result v1

    add-int/2addr v0, v1

    .line 18871
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCount()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 18873
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 18875
    :cond_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUdate()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 18877
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18879
    :cond_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasT()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 18882
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getT()J

    move-result-wide v1

    .line 18881
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 18884
    :cond_d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasN()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 18886
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18888
    :cond_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasS()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 18890
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18892
    :cond_f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusSub()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 18895
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusSub()Z

    move-result v1

    .line 18894
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 18897
    :cond_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusPub()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 18900
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusPub()Z

    move-result v1

    .line 18899
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 18902
    :cond_11
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusTTL()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 18904
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusTTL()I

    move-result v1

    add-int/2addr v0, v1

    .line 18906
    :cond_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUniqueId()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 18908
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18910
    :cond_13
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTargetClientId()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 18912
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTargetClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18914
    :cond_14
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxReadTimestamp()Z

    move-result v1

    if-eqz v1, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 18917
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTimestamp()J

    move-result-wide v1

    .line 18916
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 18919
    :cond_15
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxAckTimestamp()Z

    move-result v1

    if-eqz v1, :cond_16

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 18922
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxAckTimestamp()J

    move-result-wide v1

    .line 18921
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 18924
    :cond_16
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasQueryAllMembers()Z

    move-result v1

    if-eqz v1, :cond_17

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 18927
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getQueryAllMembers()Z

    move-result v1

    .line 18926
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 18929
    :cond_17
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTuplesCount()I

    move-result v1

    if-lez v1, :cond_18

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 18931
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTuplesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18933
    :cond_18
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCidsCount()I

    move-result v1

    if-lez v1, :cond_19

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 18935
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18937
    :cond_19
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInfo()Z

    move-result v1

    if-eqz v1, :cond_1a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 18939
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18941
    :cond_1a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConv()Z

    move-result v1

    if-eqz v1, :cond_1b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 18944
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConv()Z

    move-result v1

    .line 18943
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 18946
    :cond_1b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConvTTL()Z

    move-result v1

    if-eqz v1, :cond_1c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 18948
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvTTL()I

    move-result v1

    add-int/2addr v0, v1

    .line 18950
    :cond_1c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvIdsCount()I

    move-result v1

    if-lez v1, :cond_1d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x35

    .line 18952
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18954
    :cond_1d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAllowedPidsCount()I

    move-result v1

    if-lez v1, :cond_1e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x35

    .line 18956
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18958
    :cond_1e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFailedPidsCount()I

    move-result v1

    if-lez v1, :cond_1f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 18960
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18962
    :cond_1f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x28

    mul-int/lit8 v0, v0, 0x35

    .line 18964
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18966
    :cond_20
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasResults()Z

    move-result v1

    if-eqz v1, :cond_21

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x35

    .line 18968
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18970
    :cond_21
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasWhere()Z

    move-result v1

    if-eqz v1, :cond_22

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x65

    mul-int/lit8 v0, v0, 0x35

    .line 18972
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18974
    :cond_22
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasAttr()Z

    move-result v1

    if-eqz v1, :cond_23

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x67

    mul-int/lit8 v0, v0, 0x35

    .line 18976
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    mul-int/lit8 v0, v0, 0x1d

    .line 18978
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18979
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 17417
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$17800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ConvCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 17418
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 18352
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 18356
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFailedPidsCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 18357
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/Messages$ErrorCommand;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 18358
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18362
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18363
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18364
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    return v2

    .line 18368
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasWhere()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18369
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18370
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    return v2

    .line 18374
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasAttr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18375
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18376
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    return v2

    .line 18380
    :cond_6
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19053
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->newBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 19068
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17067
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 19061
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 19062
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 17067
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18386
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 18387
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18389
    :cond_0
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    and-int/2addr v1, v3

    const/4 v2, 0x2

    if-ne v1, v3, :cond_1

    .line 18390
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->transient_:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18392
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 18393
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unique_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18395
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 18396
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18398
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 18399
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cdate_:Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18401
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x6

    .line 18402
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->initBy_:Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18404
    :cond_5
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const/4 v1, 0x7

    .line 18405
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->sort_:Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18407
    :cond_6
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    .line 18408
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->limit_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18410
    :cond_7
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 18411
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->skip_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18413
    :cond_8
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    .line 18414
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->flag_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18416
    :cond_9
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xb

    .line 18417
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->count_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18419
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    .line 18420
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->udate_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18422
    :cond_b
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    .line 18423
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->t_:J

    invoke-virtual {p1, v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18425
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    .line 18426
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->n_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18428
    :cond_d
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xf

    .line 18429
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->s_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18431
    :cond_e
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 18432
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusSub_:Z

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18434
    :cond_f
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    const/16 v1, 0x11

    .line 18435
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusPub_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18437
    :cond_10
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    const/16 v1, 0x12

    .line 18438
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->statusTTL_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18440
    :cond_11
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    const/16 v1, 0x13

    .line 18441
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->uniqueId_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18443
    :cond_12
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/16 v1, 0x14

    .line 18444
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->targetClientId_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18446
    :cond_13
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    const/16 v1, 0x15

    .line 18447
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18449
    :cond_14
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    const/16 v1, 0x16

    .line 18450
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxAckTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18452
    :cond_15
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    const/16 v1, 0x17

    .line 18453
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->queryAllMembers_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_16
    const/4 v1, 0x0

    .line 18455
    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    const/16 v2, 0x18

    .line 18456
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_17
    const/4 v1, 0x0

    .line 18458
    :goto_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    const/16 v2, 0x19

    .line 18459
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18461
    :cond_18
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_19

    const/16 v1, 0x1a

    .line 18462
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18464
    :cond_19
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1a

    const/16 v1, 0x1b

    .line 18465
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConv_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18467
    :cond_1a
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1b

    const/16 v1, 0x1c

    .line 18468
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvTTL_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1b
    const/4 v1, 0x0

    .line 18470
    :goto_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    const/16 v2, 0x1d

    .line 18471
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1c
    const/4 v1, 0x0

    .line 18473
    :goto_4
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    const/16 v2, 0x1e

    .line 18474
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 18476
    :cond_1d
    :goto_5
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    const/16 v1, 0x1f

    .line 18477
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 18479
    :cond_1e
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1f

    const/16 v0, 0x28

    .line 18480
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->next_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18482
    :cond_1f
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    const/16 v0, 0x64

    .line 18483
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18485
    :cond_20
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    const/16 v0, 0x65

    .line 18486
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18488
    :cond_21
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    const/16 v0, 0x67

    .line 18489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18491
    :cond_22
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
