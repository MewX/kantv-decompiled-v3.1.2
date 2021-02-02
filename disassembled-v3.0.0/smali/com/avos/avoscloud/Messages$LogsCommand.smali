.class public final Lcom/avos/avoscloud/Messages$LogsCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogsCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$LogsCommand$Builder;,
        Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    }
.end annotation


# static fields
.field public static final CHECKSUM_FIELD_NUMBER:I = 0x8

.field public static final CID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogsCommand;

.field public static final DIRECTION_FIELD_NUMBER:I = 0xa

.field public static final LCTYPE_FIELD_NUMBER:I = 0xd

.field public static final LIMIT_FIELD_NUMBER:I = 0x3

.field public static final LOGS_FIELD_NUMBER:I = 0x69

.field public static final L_FIELD_NUMBER:I = 0x2

.field public static final MID_FIELD_NUMBER:I = 0x7

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$LogsCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STORED_FIELD_NUMBER:I = 0x9

.field public static final TINCLUDED_FIELD_NUMBER:I = 0xb

.field public static final TMID_FIELD_NUMBER:I = 0x6

.field public static final TTINCLUDED_FIELD_NUMBER:I = 0xc

.field public static final TT_FIELD_NUMBER:I = 0x5

.field public static final T_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile checksum_:Ljava/lang/Object;

.field private volatile cid_:Ljava/lang/Object;

.field private direction_:I

.field private l_:I

.field private lctype_:I

.field private limit_:I

.field private logs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile mid_:Ljava/lang/Object;

.field private stored_:Z

.field private tIncluded_:Z

.field private t_:J

.field private volatile tmid_:Ljava/lang/Object;

.field private ttIncluded_:Z

.field private tt_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26015
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 26023
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$LogsCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 23919
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 24505
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23920
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 23921
    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->l_:I

    .line 23922
    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->limit_:I

    const-wide/16 v2, 0x0

    .line 23923
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->t_:J

    .line 23924
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tt_:J

    .line 23925
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    .line 23926
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    .line 23927
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    .line 23928
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->stored_:Z

    const/4 v0, 0x1

    .line 23929
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    .line 23930
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tIncluded_:Z

    .line 23931
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->ttIncluded_:Z

    .line 23932
    iput v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->lctype_:I

    .line 23933
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23945
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;-><init>()V

    .line 23948
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x2000

    if-nez v1, :cond_4

    .line 23952
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 23958
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$LogsCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    and-int/lit16 v4, v2, 0x2000

    if-eq v4, v3, :cond_1

    .line 24041
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x2000

    .line 24044
    :cond_1
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    sget-object v5, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 24045
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 24044
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24035
    :sswitch_1
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 24036
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->lctype_:I

    goto :goto_0

    .line 24030
    :sswitch_2
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 24031
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->ttIncluded_:Z

    goto :goto_0

    .line 24025
    :sswitch_3
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 24026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tIncluded_:Z

    goto :goto_0

    .line 24014
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 24015
    invoke-static {v4}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->valueOf(I)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    move-result-object v5

    if-nez v5, :cond_2

    const/16 v5, 0xa

    .line 24017
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 24019
    :cond_2
    iget v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 24020
    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    goto :goto_0

    .line 24009
    :sswitch_5
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 24010
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->stored_:Z

    goto :goto_0

    .line 24003
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 24004
    iget v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 24005
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23997
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 23998
    iget v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 23999
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23991
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 23992
    iget v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 23993
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 23986
    :sswitch_9
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 23987
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tt_:J

    goto/16 :goto_0

    .line 23981
    :sswitch_a
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 23982
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->t_:J

    goto/16 :goto_0

    .line 23976
    :sswitch_b
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 23977
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->limit_:I

    goto/16 :goto_0

    .line 23971
    :sswitch_c
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 23972
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->l_:I

    goto/16 :goto_0

    .line 23965
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 23966
    iget v6, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    .line 23967
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
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

    .line 24053
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 24054
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 24051
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x2000

    if-ne p2, v3, :cond_3

    .line 24057
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    .line 24059
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 24060
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_4
    and-int/lit16 p1, v2, 0x2000

    if-ne p1, v3, :cond_5

    .line 24057
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    .line 24059
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 24060
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x28 -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x68 -> :sswitch_1
        0x34a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23910
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogsCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 23917
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 24505
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 23910
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$24300()Z
    .locals 1

    .line 23910
    sget-boolean v0, Lcom/avos/avoscloud/Messages$LogsCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$24500(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$24502(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/avos/avoscloud/Messages$LogsCommand;I)I
    .locals 0

    .line 23910
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->l_:I

    return p1
.end method

.method static synthetic access$24702(Lcom/avos/avoscloud/Messages$LogsCommand;I)I
    .locals 0

    .line 23910
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->limit_:I

    return p1
.end method

.method static synthetic access$24802(Lcom/avos/avoscloud/Messages$LogsCommand;J)J
    .locals 0

    .line 23910
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->t_:J

    return-wide p1
.end method

.method static synthetic access$24902(Lcom/avos/avoscloud/Messages$LogsCommand;J)J
    .locals 0

    .line 23910
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tt_:J

    return-wide p1
.end method

.method static synthetic access$25000(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$25002(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25100(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$25102(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25200(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$25202(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23910
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25302(Lcom/avos/avoscloud/Messages$LogsCommand;Z)Z
    .locals 0

    .line 23910
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->stored_:Z

    return p1
.end method

.method static synthetic access$25402(Lcom/avos/avoscloud/Messages$LogsCommand;I)I
    .locals 0

    .line 23910
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    return p1
.end method

.method static synthetic access$25502(Lcom/avos/avoscloud/Messages$LogsCommand;Z)Z
    .locals 0

    .line 23910
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tIncluded_:Z

    return p1
.end method

.method static synthetic access$25602(Lcom/avos/avoscloud/Messages$LogsCommand;Z)Z
    .locals 0

    .line 23910
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->ttIncluded_:Z

    return p1
.end method

.method static synthetic access$25702(Lcom/avos/avoscloud/Messages$LogsCommand;I)I
    .locals 0

    .line 23910
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->lctype_:I

    return p1
.end method

.method static synthetic access$25800(Lcom/avos/avoscloud/Messages$LogsCommand;)Ljava/util/List;
    .locals 0

    .line 23910
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$25802(Lcom/avos/avoscloud/Messages$LogsCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23910
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$25902(Lcom/avos/avoscloud/Messages$LogsCommand;I)I
    .locals 0

    .line 23910
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$26000()Z
    .locals 1

    .line 23910
    sget-boolean v0, Lcom/avos/avoscloud/Messages$LogsCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$26100(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 23910
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1

    .line 26019
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 24065
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$23900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 24850
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->toBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 24853
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->toBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24824
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 24825
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24831
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 24832
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24792
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24798
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24837
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 24838
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24844
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 24845
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24812
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 24813
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24819
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 24820
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24781
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24787
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24802
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24808
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$LogsCommand;",
            ">;"
        }
    .end annotation

    .line 26033
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 24629
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$LogsCommand;

    if-nez v1, :cond_1

    .line 24630
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 24632
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 24635
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasCid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 24636
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 24637
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 24638
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getCid()Ljava/lang/String;

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

    .line 24640
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasL()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasL()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 24641
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasL()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 24642
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getL()I

    move-result v1

    .line 24643
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getL()I

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 24645
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLimit()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLimit()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 24646
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 24647
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLimit()I

    move-result v1

    .line 24648
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLimit()I

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 24650
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasT()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasT()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 24651
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasT()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 24652
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getT()J

    move-result-wide v1

    .line 24653
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getT()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 24655
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTt()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 24656
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTt()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 24657
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTt()J

    move-result-wide v1

    .line 24658
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTt()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 24660
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTmid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTmid()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 24661
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTmid()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 24662
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTmid()Ljava/lang/String;

    move-result-object v1

    .line 24663
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTmid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 24665
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasMid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasMid()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 24666
    :goto_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasMid()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 24667
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 24668
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 24670
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasChecksum()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasChecksum()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 24671
    :goto_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasChecksum()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 24672
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getChecksum()Ljava/lang/String;

    move-result-object v1

    .line 24673
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getChecksum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 24675
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasStored()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasStored()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    .line 24676
    :goto_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasStored()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 24677
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getStored()Z

    move-result v1

    .line 24678
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getStored()Z

    move-result v2

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 24680
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasDirection()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasDirection()Z

    move-result v2

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    .line 24681
    :goto_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasDirection()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1e

    .line 24682
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    iget v2, p1, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 24684
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTIncluded()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTIncluded()Z

    move-result v2

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_14

    :cond_20
    const/4 v1, 0x0

    .line 24685
    :goto_14
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTIncluded()Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v1, :cond_21

    .line 24686
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTIncluded()Z

    move-result v1

    .line 24687
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTIncluded()Z

    move-result v2

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_15
    if-eqz v1, :cond_23

    .line 24689
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTtIncluded()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTtIncluded()Z

    move-result v2

    if-ne v1, v2, :cond_23

    const/4 v1, 0x1

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    .line 24690
    :goto_16
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTtIncluded()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_24

    .line 24691
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTtIncluded()Z

    move-result v1

    .line 24692
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTtIncluded()Z

    move-result v2

    if-ne v1, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_17

    :cond_24
    const/4 v1, 0x0

    :cond_25
    :goto_17
    if-eqz v1, :cond_26

    .line 24694
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLctype()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLctype()Z

    move-result v2

    if-ne v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    .line 24695
    :goto_18
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLctype()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v1, :cond_27

    .line 24696
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLctype()I

    move-result v1

    .line 24697
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLctype()I

    move-result v2

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    goto :goto_19

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_19
    if-eqz v1, :cond_29

    .line 24699
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLogsList()Ljava/util/List;

    move-result-object v1

    .line 24700
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLogsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_1a

    :cond_29
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_2a

    .line 24701
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_1b

    :cond_2a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 2

    .line 24364
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    .line 24365
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24366
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 24368
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24370
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24371
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24372
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getChecksumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 24382
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    .line 24383
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24384
    check-cast v0, Ljava/lang/String;

    .line 24385
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24387
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    return-object v0

    .line 24390
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 24178
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    .line 24179
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24180
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 24182
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24184
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24185
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24186
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 24196
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    .line 24197
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24198
    check-cast v0, Ljava/lang/String;

    .line 24199
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24201
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 24204
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1

    .line 26042
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 23910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 23910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    .locals 1

    .line 24421
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->valueOf(I)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24422
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->OLD:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    :cond_0
    return-object v0
.end method

.method public getL()I
    .locals 1

    .line 24220
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->l_:I

    return v0
.end method

.method public getLctype()I
    .locals 1

    .line 24467
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->lctype_:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .line 24235
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->limit_:I

    return v0
.end method

.method public getLogs(I)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1

    .line 24495
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p1
.end method

.method public getLogsCount()I
    .locals 1

    .line 24489
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 24476
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    return-object v0
.end method

.method public getLogsOrBuilder(I)Lcom/avos/avoscloud/Messages$LogItemOrBuilder;
    .locals 1

    .line 24502
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 24483
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 24322
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    .line 24323
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24324
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 24326
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24328
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24329
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24330
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 24340
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    .line 24341
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24342
    check-cast v0, Ljava/lang/String;

    .line 24343
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24345
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    return-object v0

    .line 24348
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
            "Lcom/avos/avoscloud/Messages$LogsCommand;",
            ">;"
        }
    .end annotation

    .line 26038
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 24563
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 24567
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 24568
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 24570
    :goto_0
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 24571
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->l_:I

    .line 24572
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24574
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 24575
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->limit_:I

    .line 24576
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24578
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 24579
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->t_:J

    .line 24580
    invoke-static {v3, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 24582
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 24583
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tt_:J

    .line 24584
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 24586
    :cond_5
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    .line 24587
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24589
    :cond_6
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    .line 24590
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24592
    :cond_7
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 24593
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24595
    :cond_8
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    const/16 v1, 0x9

    .line 24596
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->stored_:Z

    .line 24597
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 24599
    :cond_9
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    const/16 v1, 0xa

    .line 24600
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    .line 24601
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24603
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    const/16 v1, 0xb

    .line 24604
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tIncluded_:Z

    .line 24605
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 24607
    :cond_b
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_c

    const/16 v1, 0xc

    .line 24608
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->ttIncluded_:Z

    .line 24609
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 24611
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    const/16 v1, 0xd

    .line 24612
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->lctype_:I

    .line 24613
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24615
    :cond_d
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_e

    const/16 v1, 0x69

    .line 24616
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    .line 24617
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24619
    :cond_e
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 24620
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedSize:I

    return v0
.end method

.method public getStored()Z
    .locals 1

    .line 24406
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->stored_:Z

    return v0
.end method

.method public getT()J
    .locals 2

    .line 24250
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->t_:J

    return-wide v0
.end method

.method public getTIncluded()Z
    .locals 1

    .line 24437
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tIncluded_:Z

    return v0
.end method

.method public getTmid()Ljava/lang/String;
    .locals 2

    .line 24280
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    .line 24281
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24282
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 24284
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24286
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24287
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24288
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTmidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 24298
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    .line 24299
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24300
    check-cast v0, Ljava/lang/String;

    .line 24301
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24303
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    return-object v0

    .line 24306
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTt()J
    .locals 2

    .line 24265
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tt_:J

    return-wide v0
.end method

.method public getTtIncluded()Z
    .locals 1

    .line 24452
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->ttIncluded_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 23939
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasChecksum()Z
    .locals 2

    .line 24358
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24172
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24415
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24214
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24461
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24229
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24316
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24400
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24244
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24431
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24274
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24259
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

    .line 24446
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 24707
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 24708
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 24711
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24712
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 24714
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24716
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasL()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 24718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getL()I

    move-result v1

    add-int/2addr v0, v1

    .line 24720
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 24722
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 24724
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasT()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 24727
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getT()J

    move-result-wide v1

    .line 24726
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 24729
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTt()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 24732
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTt()J

    move-result-wide v1

    .line 24731
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 24734
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTmid()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 24736
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTmid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24738
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasMid()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 24740
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24742
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasChecksum()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 24744
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getChecksum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24746
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasStored()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 24749
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getStored()Z

    move-result v1

    .line 24748
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 24751
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasDirection()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 24753
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    add-int/2addr v0, v1

    .line 24755
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTIncluded()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 24758
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTIncluded()Z

    move-result v1

    .line 24757
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 24760
    :cond_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasTtIncluded()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 24763
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getTtIncluded()Z

    move-result v1

    .line 24762
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 24765
    :cond_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->hasLctype()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 24767
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLctype()I

    move-result v1

    add-int/2addr v0, v1

    .line 24769
    :cond_d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLogsCount()I

    move-result v1

    if-lez v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x69

    mul-int/lit8 v0, v0, 0x35

    .line 24771
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->getLogsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    mul-int/lit8 v0, v0, 0x1d

    .line 24773
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24774
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 24070
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$24000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$LogsCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 24071
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 24507
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 24511
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 1

    .line 24848
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->newBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 2

    .line 24863
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 23910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 23910
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 23910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 2

    .line 24856
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogsCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 24857
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 23910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->toBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 23910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand;->toBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24517
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 24518
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 24520
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 24521
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->l_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 24523
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 24524
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->limit_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 24526
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 24527
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->t_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 24529
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 24530
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tt_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 24532
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 24533
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tmid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 24535
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 24536
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->mid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 24538
    :cond_6
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 24539
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->checksum_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 24541
    :cond_7
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 24542
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->stored_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 24544
    :cond_8
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 24545
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->direction_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 24547
    :cond_9
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 24548
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->tIncluded_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 24550
    :cond_a
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    .line 24551
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->ttIncluded_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 24553
    :cond_b
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    .line 24554
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->lctype_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_c
    const/4 v0, 0x0

    .line 24556
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    const/16 v1, 0x69

    .line 24557
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->logs_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24559
    :cond_d
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
