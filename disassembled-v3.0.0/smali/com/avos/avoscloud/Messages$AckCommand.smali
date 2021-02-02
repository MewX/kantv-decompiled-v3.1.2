.class public final Lcom/avos/avoscloud/Messages$AckCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AckCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    }
.end annotation


# static fields
.field public static final APPCODE_FIELD_NUMBER:I = 0xb

.field public static final CID_FIELD_NUMBER:I = 0x4

.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$AckCommand;

.field public static final FROMTS_FIELD_NUMBER:I = 0x7

.field public static final IDS_FIELD_NUMBER:I = 0xa

.field public static final MID_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$AckCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REASON_FIELD_NUMBER:I = 0x2

.field public static final TOTS_FIELD_NUMBER:I = 0x8

.field public static final TYPE_FIELD_NUMBER:I = 0x9

.field public static final T_FIELD_NUMBER:I = 0x5

.field public static final UID_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private appCode_:I

.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private code_:I

.field private fromts_:J

.field private ids_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private volatile mid_:Ljava/lang/Object;

.field private volatile reason_:Ljava/lang/Object;

.field private t_:J

.field private tots_:J

.field private volatile type_:Ljava/lang/Object;

.field private volatile uid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15709
    new-instance v0, Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$AckCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 15717
    new-instance v0, Lcom/avos/avoscloud/Messages$AckCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$AckCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 14050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 14498
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 14051
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->code_:I

    const-string v1, ""

    .line 14052
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    .line 14053
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    .line 14054
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 14055
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->t_:J

    .line 14056
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    .line 14057
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->fromts_:J

    .line 14058
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->tots_:J

    .line 14059
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    .line 14060
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 14061
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->appCode_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14073
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$AckCommand;-><init>()V

    .line 14076
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x200

    if-nez v1, :cond_3

    .line 14080
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 14086
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$AckCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 14152
    :sswitch_0
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14153
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->appCode_:I

    goto :goto_0

    .line 14143
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    and-int/lit16 v5, v2, 0x200

    if-eq v5, v3, :cond_1

    .line 14145
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x200

    .line 14148
    :cond_1
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 14137
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 14138
    iget v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14139
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 14132
    :sswitch_3
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14133
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->tots_:J

    goto :goto_0

    .line 14127
    :sswitch_4
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14128
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->fromts_:J

    goto :goto_0

    .line 14121
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 14122
    iget v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14123
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    goto :goto_0

    .line 14116
    :sswitch_6
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->t_:J

    goto :goto_0

    .line 14110
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 14111
    iget v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14112
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 14104
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 14105
    iget v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14106
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 14098
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 14099
    iget v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14100
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 14093
    :sswitch_a
    iget v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    .line 14094
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->code_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
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

    .line 14161
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 14162
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 14159
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x200

    if-ne p2, v3, :cond_2

    .line 14165
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 14167
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14168
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_3
    and-int/lit16 p1, v2, 0x200

    if-ne p1, v3, :cond_4

    .line 14165
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 14167
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14168
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x28 -> :sswitch_6
        0x32 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14041
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$AckCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 14048
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 14498
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 14041
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14900()Z
    .locals 1

    .line 14041
    sget-boolean v0, Lcom/avos/avoscloud/Messages$AckCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15102(Lcom/avos/avoscloud/Messages$AckCommand;I)I
    .locals 0

    .line 14041
    iput p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->code_:I

    return p1
.end method

.method static synthetic access$15200(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15202(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15300(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15302(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15400(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15402(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/avos/avoscloud/Messages$AckCommand;J)J
    .locals 0

    .line 14041
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->t_:J

    return-wide p1
.end method

.method static synthetic access$15600(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15602(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15702(Lcom/avos/avoscloud/Messages$AckCommand;J)J
    .locals 0

    .line 14041
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->fromts_:J

    return-wide p1
.end method

.method static synthetic access$15802(Lcom/avos/avoscloud/Messages$AckCommand;J)J
    .locals 0

    .line 14041
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->tots_:J

    return-wide p1
.end method

.method static synthetic access$15900(Lcom/avos/avoscloud/Messages$AckCommand;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15902(Lcom/avos/avoscloud/Messages$AckCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14041
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16000(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 14041
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$16002(Lcom/avos/avoscloud/Messages$AckCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 14041
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/avos/avoscloud/Messages$AckCommand;I)I
    .locals 0

    .line 14041
    iput p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->appCode_:I

    return p1
.end method

.method static synthetic access$16202(Lcom/avos/avoscloud/Messages$AckCommand;I)I
    .locals 0

    .line 14041
    iput p1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$16300(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 14041
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1

    .line 15713
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$AckCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14173
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$14500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 14797
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->toBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 14800
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->toBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14771
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 14772
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14778
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 14779
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14739
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14745
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14784
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 14785
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14791
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 14792
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14759
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 14760
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14766
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 14767
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14728
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14734
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14749
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14755
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$AckCommand;",
            ">;"
        }
    .end annotation

    .line 15727
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 14604
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$AckCommand;

    if-nez v1, :cond_1

    .line 14605
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 14607
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$AckCommand;

    .line 14610
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCode()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 14611
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 14612
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getCode()I

    move-result v1

    .line 14613
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 14615
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasReason()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasReason()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 14616
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 14617
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 14618
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 14620
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasMid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasMid()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 14621
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasMid()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 14622
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 14623
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 14625
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCid()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 14626
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 14627
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 14628
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 14630
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasT()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasT()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 14631
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasT()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 14632
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getT()J

    move-result-wide v1

    .line 14633
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getT()J

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

    .line 14635
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasUid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasUid()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 14636
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasUid()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 14637
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 14638
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getUid()Ljava/lang/String;

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

    .line 14640
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasFromts()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasFromts()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 14641
    :goto_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasFromts()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 14642
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getFromts()J

    move-result-wide v1

    .line 14643
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getFromts()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 14645
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasTots()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasTots()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 14646
    :goto_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasTots()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 14647
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getTots()J

    move-result-wide v1

    .line 14648
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getTots()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 14650
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasType()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    .line 14651
    :goto_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 14652
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getType()Ljava/lang/String;

    move-result-object v1

    .line 14653
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 14655
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 14656
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_1e

    .line 14657
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasAppCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->hasAppCode()Z

    move-result v2

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    .line 14658
    :goto_13
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasAppCode()Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v1, :cond_1f

    .line 14659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getAppCode()I

    move-result v1

    .line 14660
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand;->getAppCode()I

    move-result v2

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_14

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_14
    if-eqz v1, :cond_21

    .line 14662
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_15

    :cond_21
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getAppCode()I
    .locals 1

    .line 14495
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->appCode_:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 14295
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    .line 14296
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14297
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14299
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14301
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14302
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14303
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 14313
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    .line 14314
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14315
    check-cast v0, Ljava/lang/String;

    .line 14316
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14318
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 14321
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 14196
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->code_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1

    .line 15736
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$AckCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    return-object v0
.end method

.method public getFromts()J
    .locals 2

    .line 14394
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->fromts_:J

    return-wide v0
.end method

.method public getIds(I)Ljava/lang/String;
    .locals 1

    .line 14473
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14480
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getIdsCount()I
    .locals 1

    .line 14467
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 14461
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getIdsList()Ljava/util/List;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 14253
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    .line 14254
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14255
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14257
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14259
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14260
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14261
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 14271
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    .line 14272
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14273
    check-cast v0, Ljava/lang/String;

    .line 14274
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14276
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    return-object v0

    .line 14279
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
            "Lcom/avos/avoscloud/Messages$AckCommand;",
            ">;"
        }
    .end annotation

    .line 15732
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 14211
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    .line 14212
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14213
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14215
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14217
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14218
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14219
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 14229
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    .line 14230
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14231
    check-cast v0, Ljava/lang/String;

    .line 14232
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14234
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    return-object v0

    .line 14237
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 14547
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14551
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 14552
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->code_:I

    .line 14553
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 14555
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 14556
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14558
    :cond_2
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 14559
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14561
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 14562
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14564
    :cond_4
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 14565
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$AckCommand;->t_:J

    .line 14566
    invoke-static {v3, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 14568
    :cond_5
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    .line 14569
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14571
    :cond_6
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x7

    .line 14572
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$AckCommand;->fromts_:J

    .line 14573
    invoke-static {v3, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 14575
    :cond_7
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 14576
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->tots_:J

    .line 14577
    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 14579
    :cond_8
    iget v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_9

    const/16 v3, 0x9

    .line 14580
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    const/4 v3, 0x0

    .line 14584
    :goto_1
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 14585
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/Messages$AckCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    add-int/2addr v0, v3

    .line 14588
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 14590
    iget v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 14591
    iget v2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->appCode_:I

    .line 14592
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14594
    :cond_b
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 14595
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedSize:I

    return v0
.end method

.method public getT()J
    .locals 2

    .line 14337
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->t_:J

    return-wide v0
.end method

.method public getTots()J
    .locals 2

    .line 14409
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->tots_:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 14424
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    .line 14425
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14426
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14428
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14430
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14431
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14432
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 14442
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    .line 14443
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14444
    check-cast v0, Ljava/lang/String;

    .line 14445
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14447
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    return-object v0

    .line 14450
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .line 14352
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    .line 14353
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14354
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14356
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14358
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14359
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14360
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 14370
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    .line 14371
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14372
    check-cast v0, Ljava/lang/String;

    .line 14373
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14375
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    return-object v0

    .line 14378
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 14067
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppCode()Z
    .locals 2

    .line 14489
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 14289
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14190
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14388
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14247
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14205
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14331
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14403
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14418
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

    .line 14346
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 14668
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 14669
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 14672
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14673
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 14675
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14677
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 14679
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14681
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasMid()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 14683
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14685
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 14687
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14689
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasT()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 14692
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getT()J

    move-result-wide v1

    .line 14691
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 14694
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasUid()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14696
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14698
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasFromts()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 14701
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getFromts()J

    move-result-wide v1

    .line 14700
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 14703
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasTots()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 14706
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getTots()J

    move-result-wide v1

    .line 14705
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 14708
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasType()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 14710
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14712
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getIdsCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 14714
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14716
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->hasAppCode()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->getAppCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x1d

    .line 14720
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14721
    iput v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14178
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$14600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$AckCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 14179
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 14500
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 14504
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 14795
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 2

    .line 14810
    new-instance v0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14041
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 2

    .line 14803
    sget-object v0, Lcom/avos/avoscloud/Messages$AckCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$AckCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 14804
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->toBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$AckCommand;->toBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

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

    .line 14510
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 14511
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->code_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14513
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 14514
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->reason_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14516
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 14517
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->mid_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14519
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 14520
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14522
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 14523
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->t_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14525
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 14526
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->uid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14528
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 14529
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$AckCommand;->fromts_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14531
    :cond_6
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 14532
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->tots_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14534
    :cond_7
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 14535
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->type_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    const/4 v0, 0x0

    .line 14537
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xa

    .line 14538
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$AckCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14540
    :cond_9
    iget v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 14541
    iget v1, p0, Lcom/avos/avoscloud/Messages$AckCommand;->appCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14543
    :cond_a
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$AckCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
