.class public final Lcom/avos/avoscloud/Messages$BlacklistCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlacklistCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    }
.end annotation


# static fields
.field public static final ALLOWEDPIDS_FIELD_NUMBER:I = 0xa

.field public static final BLOCKEDCIDS_FIELD_NUMBER:I = 0x9

.field public static final BLOCKEDPIDS_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$BlacklistCommand;

.field public static final FAILEDPIDS_FIELD_NUMBER:I = 0xb

.field public static final LIMIT_FIELD_NUMBER:I = 0x5

.field public static final NEXT_FIELD_NUMBER:I = 0x6

.field public static final N_FIELD_NUMBER:I = 0xd

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SRCCID_FIELD_NUMBER:I = 0x1

.field public static final SRCPID_FIELD_NUMBER:I = 0x3

.field public static final S_FIELD_NUMBER:I = 0xe

.field public static final TOCIDS_FIELD_NUMBER:I = 0x4

.field public static final TOPIDS_FIELD_NUMBER:I = 0x2

.field public static final T_FIELD_NUMBER:I = 0xc

.field private static final serialVersionUID:J


# instance fields
.field private allowedPids_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private blockedCids_:Lcom/google/protobuf/LazyStringList;

.field private blockedPids_:Lcom/google/protobuf/LazyStringList;

.field private failedPids_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation
.end field

.field private limit_:I

.field private memoizedIsInitialized:B

.field private volatile n_:Ljava/lang/Object;

.field private volatile next_:Ljava/lang/Object;

.field private volatile s_:Ljava/lang/Object;

.field private volatile srcCid_:Ljava/lang/Object;

.field private volatile srcPid_:Ljava/lang/Object;

.field private t_:J

.field private toCids_:Lcom/google/protobuf/LazyStringList;

.field private toPids_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38283
    new-instance v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 38291
    new-instance v0, Lcom/avos/avoscloud/Messages$BlacklistCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 35830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 36431
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedIsInitialized:B

    const-string v0, ""

    .line 35831
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    .line 35832
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 35833
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    .line 35834
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    const/4 v1, 0x0

    .line 35835
    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->limit_:I

    .line 35836
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    .line 35837
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 35838
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 35839
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 35840
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 35841
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->t_:J

    .line 35842
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    .line 35843
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35855
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;-><init>()V

    .line 35858
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x100

    const/16 v4, 0x80

    const/16 v5, 0x200

    const/16 v6, 0x40

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-nez v1, :cond_d

    .line 35862
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v9

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    .line 35868
    invoke-virtual {p0, p1, v0, p2, v9}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 35963
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 35964
    iget v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    or-int/2addr v10, v6

    iput v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    .line 35965
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    goto :goto_0

    .line 35957
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 35958
    iget v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    .line 35959
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    goto :goto_0

    .line 35952
    :sswitch_2
    iget v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    .line 35953
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->t_:J

    goto :goto_0

    :sswitch_3
    and-int/lit16 v9, v2, 0x200

    if-eq v9, v5, :cond_1

    .line 35944
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x200

    .line 35947
    :cond_1
    iget-object v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    sget-object v10, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 35948
    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    .line 35947
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35934
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int/lit16 v10, v2, 0x100

    if-eq v10, v3, :cond_2

    .line 35936
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x100

    .line 35939
    :cond_2
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 35925
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int/lit16 v10, v2, 0x80

    if-eq v10, v4, :cond_3

    .line 35927
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x80

    .line 35930
    :cond_3
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 35916
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int/lit8 v10, v2, 0x40

    if-eq v10, v6, :cond_4

    .line 35918
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x40

    .line 35921
    :cond_4
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 35910
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 35911
    iget v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    or-int/2addr v10, v7

    iput v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    .line 35912
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 35905
    :sswitch_8
    iget v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    .line 35906
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->limit_:I

    goto/16 :goto_0

    .line 35896
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int/lit8 v10, v2, 0x8

    if-eq v10, v7, :cond_5

    .line 35898
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x8

    .line 35901
    :cond_5
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 35890
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 35891
    iget v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    or-int/2addr v10, v8

    iput v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    .line 35892
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 35881
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    and-int/lit8 v10, v2, 0x2

    if-eq v10, v8, :cond_6

    .line 35883
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 35886
    :cond_6
    iget-object v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 35875
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 35876
    iget v11, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    or-int/2addr v10, v11

    iput v10, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    .line 35877
    iput-object v9, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_d
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

    .line 35973
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 35974
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 35971
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v8, :cond_7

    .line 35977
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    :cond_7
    and-int/lit8 p2, v2, 0x8

    if-ne p2, v7, :cond_8

    .line 35980
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    :cond_8
    and-int/lit8 p2, v2, 0x40

    if-ne p2, v6, :cond_9

    .line 35983
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    :cond_9
    and-int/lit16 p2, v2, 0x80

    if-ne p2, v4, :cond_a

    .line 35986
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    :cond_a
    and-int/lit16 p2, v2, 0x100

    if-ne p2, v3, :cond_b

    .line 35989
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    :cond_b
    and-int/lit16 p2, v2, 0x200

    if-ne p2, v5, :cond_c

    .line 35992
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    .line 35994
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35995
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v8, :cond_e

    .line 35977
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p1, v2, 0x8

    if-ne p1, v7, :cond_f

    .line 35980
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p1, v2, 0x40

    if-ne p1, v6, :cond_10

    .line 35983
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    :cond_10
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v4, :cond_11

    .line 35986
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    :cond_11
    and-int/lit16 p1, v2, 0x100

    if-ne p1, v3, :cond_12

    .line 35989
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    :cond_12
    and-int/lit16 p1, v2, 0x200

    if-ne p1, v5, :cond_13

    .line 35992
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    .line 35994
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35995
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x28 -> :sswitch_8
        0x32 -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35821
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 35828
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 36431
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 35821
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$38900()Z
    .locals 1

    .line 35821
    sget-boolean v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$39100(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39102(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39200(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$39202(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$39300(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39302(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39400(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$39402(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$39502(Lcom/avos/avoscloud/Messages$BlacklistCommand;I)I
    .locals 0

    .line 35821
    iput p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->limit_:I

    return p1
.end method

.method static synthetic access$39600(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39602(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39700(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$39702(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$39800(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$39802(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$39900(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$39902(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$40000(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/util/List;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$40002(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$40102(Lcom/avos/avoscloud/Messages$BlacklistCommand;J)J
    .locals 0

    .line 35821
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->t_:J

    return-wide p1
.end method

.method static synthetic access$40200(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$40202(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40300(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$40302(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35821
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40402(Lcom/avos/avoscloud/Messages$BlacklistCommand;I)I
    .locals 0

    .line 35821
    iput p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$40500()Z
    .locals 1

    .line 35821
    sget-boolean v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$40600(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 35821
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1

    .line 38287
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 36000
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$38500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 36767
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 36770
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36741
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 36742
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36748
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 36749
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36709
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36715
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36754
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 36755
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36761
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 36762
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36729
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 36730
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36736
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 36737
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36698
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36704
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36719
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36725
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand;",
            ">;"
        }
    .end annotation

    .line 38301
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 36573
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-nez v1, :cond_1

    .line 36574
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 36576
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 36579
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcCid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 36580
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcCid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 36581
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcCid()Ljava/lang/String;

    move-result-object v1

    .line 36582
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcCid()Ljava/lang/String;

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

    .line 36584
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 36585
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToPidsList()Lcom/google/protobuf/ProtocolStringList;

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

    .line 36586
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcPid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcPid()Z

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 36587
    :goto_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcPid()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 36588
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcPid()Ljava/lang/String;

    move-result-object v1

    .line 36589
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcPid()Ljava/lang/String;

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

    .line 36591
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 36592
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_a

    .line 36593
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasLimit()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasLimit()Z

    move-result v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 36594
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_b

    .line 36595
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getLimit()I

    move-result v1

    .line 36596
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getLimit()I

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 36598
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasNext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasNext()Z

    move-result v2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 36599
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_e

    .line 36600
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getNext()Ljava/lang/String;

    move-result-object v1

    .line 36601
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_9
    if-eqz v1, :cond_10

    .line 36603
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 36604
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_11

    .line 36605
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 36606
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_12

    .line 36607
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 36608
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_13

    .line 36609
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object v1

    .line 36610
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_14

    .line 36611
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasT()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasT()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_e

    :cond_14
    const/4 v1, 0x0

    .line 36612
    :goto_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasT()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 36613
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getT()J

    move-result-wide v1

    .line 36614
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getT()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_15

    const/4 v1, 0x1

    goto :goto_f

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_f
    if-eqz v1, :cond_17

    .line 36616
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasN()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasN()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    .line 36617
    :goto_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasN()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 36618
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getN()Ljava/lang/String;

    move-result-object v1

    .line 36619
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_11
    if-eqz v1, :cond_1a

    .line 36621
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasS()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasS()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_12

    :cond_1a
    const/4 v1, 0x0

    .line 36622
    :goto_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasS()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 36623
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getS()Ljava/lang/String;

    move-result-object v1

    .line 36624
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_13

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_13
    if-eqz v1, :cond_1d

    .line 36626
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getAllowedPids(I)Ljava/lang/String;
    .locals 1

    .line 36287
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 36294
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedPidsCount()I
    .locals 1

    .line 36281
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 36275
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getAllowedPidsList()Ljava/util/List;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedCids(I)Ljava/lang/String;
    .locals 1

    .line 36258
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBlockedCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 36265
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBlockedCidsCount()I
    .locals 1

    .line 36252
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 36246
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getBlockedCidsList()Ljava/util/List;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedPids(I)Ljava/lang/String;
    .locals 1

    .line 36229
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBlockedPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 36236
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBlockedPidsCount()I
    .locals 1

    .line 36223
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 36217
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getBlockedPidsList()Ljava/util/List;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1

    .line 38310
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 36322
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p1
.end method

.method public getFailedPidsCount()I
    .locals 1

    .line 36316
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

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

    .line 36303
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    return-object v0
.end method

.method public getFailedPidsOrBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
    .locals 1

    .line 36329
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

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

    .line 36310
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 36165
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->limit_:I

    return v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 36359
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    .line 36360
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36361
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 36363
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36365
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36366
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36367
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 36377
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    .line 36378
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36379
    check-cast v0, Ljava/lang/String;

    .line 36380
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36382
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    return-object v0

    .line 36385
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 2

    .line 36180
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    .line 36181
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36182
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 36184
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36186
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36187
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36188
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 36198
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    .line 36199
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36200
    check-cast v0, Ljava/lang/String;

    .line 36201
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36203
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    return-object v0

    .line 36206
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
            "Lcom/avos/avoscloud/Messages$BlacklistCommand;",
            ">;"
        }
    .end annotation

    .line 38306
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 36401
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    .line 36402
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36403
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 36405
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36407
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36408
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36409
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 36419
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    .line 36420
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36421
    check-cast v0, Ljava/lang/String;

    .line 36422
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36424
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    return-object v0

    .line 36427
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 36492
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 36496
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 36497
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36501
    :goto_1
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 36502
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 36505
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 36507
    iget v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 36508
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36512
    :goto_2
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 36513
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v4

    .line 36516
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 36518
    iget v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 36519
    iget v4, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->limit_:I

    .line 36520
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 36522
    :cond_5
    iget v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    .line 36523
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36527
    :goto_3
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 36528
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v0, v4

    .line 36531
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36535
    :goto_4
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 36536
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    .line 36539
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36543
    :goto_5
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 36544
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    add-int/2addr v0, v4

    .line 36547
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 36549
    :goto_6
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    const/16 v1, 0xb

    .line 36550
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    .line 36551
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 36553
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    .line 36554
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->t_:J

    .line 36555
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 36557
    :cond_b
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    .line 36558
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36560
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    .line 36561
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36563
    :cond_d
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 36564
    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedSize:I

    return v0
.end method

.method public getSrcCid()Ljava/lang/String;
    .locals 2

    .line 36023
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    .line 36024
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36025
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 36027
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36029
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36030
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36031
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSrcCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 36041
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    .line 36042
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36043
    check-cast v0, Ljava/lang/String;

    .line 36044
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36046
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    return-object v0

    .line 36049
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSrcPid()Ljava/lang/String;
    .locals 2

    .line 36094
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    .line 36095
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36096
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 36098
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36100
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 36101
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36102
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSrcPidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 36112
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    .line 36113
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36114
    check-cast v0, Ljava/lang/String;

    .line 36115
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36117
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    return-object v0

    .line 36120
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getT()J
    .locals 2

    .line 36344
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->t_:J

    return-wide v0
.end method

.method public getToCids(I)Ljava/lang/String;
    .locals 1

    .line 36143
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getToCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 36150
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getToCidsCount()I
    .locals 1

    .line 36137
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getToCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 36131
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getToCidsList()Ljava/util/List;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getToPids(I)Ljava/lang/String;
    .locals 1

    .line 36072
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getToPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 36079
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getToPidsCount()I
    .locals 1

    .line 36066
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getToPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 36060
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getToPidsList()Ljava/util/List;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 35849
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasLimit()Z
    .locals 2

    .line 36159
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

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

.method public hasN()Z
    .locals 2

    .line 36353
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

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

.method public hasNext()Z
    .locals 2

    .line 36174
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

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

.method public hasS()Z
    .locals 2

    .line 36395
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

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

.method public hasSrcCid()Z
    .locals 2

    .line 36017
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSrcPid()Z
    .locals 2

    .line 36088
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

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

    .line 36338
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 36632
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 36633
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 36636
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36637
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcCid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 36639
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36641
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToPidsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 36643
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36645
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcPid()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 36647
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36649
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToCidsCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 36651
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getToCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36653
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 36655
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 36657
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 36659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36661
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedPidsCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 36663
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36665
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedCidsCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 36667
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36669
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getAllowedPidsCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 36671
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36673
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getFailedPidsCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 36675
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getFailedPidsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36677
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasT()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 36680
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getT()J

    move-result-wide v1

    .line 36679
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 36682
    :cond_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasN()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 36684
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36686
    :cond_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasS()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 36688
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    mul-int/lit8 v0, v0, 0x1d

    .line 36690
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36691
    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 36005
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$38600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 36006
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 36433
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 36437
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getFailedPidsCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 36438
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/Messages$ErrorCommand;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 36439
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36443
    :cond_3
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 36765
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->newBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 2

    .line 36780
    new-instance v0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 35821
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 2

    .line 36773
    sget-object v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 36774
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 35821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

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

    .line 36449
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 36450
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcCid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36452
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    .line 36453
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36455
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    .line 36456
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->srcPid_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v1, 0x0

    .line 36458
    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    .line 36459
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36461
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x5

    .line 36462
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->limit_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 36464
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 36465
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->next_:Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    const/4 v1, 0x0

    .line 36467
    :goto_2
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 36468
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 36470
    :goto_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0x9

    .line 36471
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 36473
    :goto_4
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0xa

    .line 36474
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 36476
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xb

    .line 36477
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->failedPids_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 36479
    :cond_9
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xc

    .line 36480
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->t_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 36482
    :cond_a
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xd

    .line 36483
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->n_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 36485
    :cond_b
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xe

    .line 36486
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->s_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 36488
    :cond_c
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
