.class public final Lcom/avos/avoscloud/Messages$UnreadTuple;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnreadTuple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    }
.end annotation


# static fields
.field public static final BINARYMSG_FIELD_NUMBER:I = 0x9

.field public static final CID_FIELD_NUMBER:I = 0x1

.field public static final CONVTYPE_FIELD_NUMBER:I = 0xa

.field public static final DATA_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadTuple;

.field public static final FROM_FIELD_NUMBER:I = 0x5

.field public static final MENTIONED_FIELD_NUMBER:I = 0x8

.field public static final MID_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATCHTIMESTAMP_FIELD_NUMBER:I = 0x7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x4

.field public static final UNREAD_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private binaryMsg_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private convType_:I

.field private volatile data_:Ljava/lang/Object;

.field private volatile from_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private mentioned_:Z

.field private volatile mid_:Ljava/lang/Object;

.field private patchTimestamp_:J

.field private timestamp_:J

.field private unread_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3235
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadTuple;

    .line 3243
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadTuple$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1801
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2179
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1802
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1803
    iput v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unread_:I

    .line 1804
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 1805
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->timestamp_:J

    .line 1806
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    .line 1807
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    .line 1808
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->patchTimestamp_:J

    .line 1809
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mentioned_:Z

    .line 1810
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 1811
    iput v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->convType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1823
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;-><init>()V

    .line 1826
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1830
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 1836
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$UnreadTuple;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 1892
    :sswitch_0
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1893
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->convType_:I

    goto :goto_0

    .line 1887
    :sswitch_1
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1888
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->binaryMsg_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1882
    :sswitch_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1883
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mentioned_:Z

    goto :goto_0

    .line 1877
    :sswitch_3
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1878
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->patchTimestamp_:J

    goto :goto_0

    .line 1871
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1872
    iget v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1873
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    goto :goto_0

    .line 1865
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1866
    iget v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1867
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    goto :goto_0

    .line 1860
    :sswitch_6
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1861
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->timestamp_:J

    goto :goto_0

    .line 1854
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1855
    iget v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1856
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    goto :goto_0

    .line 1849
    :sswitch_8
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1850
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unread_:I

    goto/16 :goto_0

    .line 1843
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1844
    iget v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    .line 1845
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1901
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1902
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1899
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1904
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1905
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->makeExtensionsImmutable()V

    throw p1

    .line 1904
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1905
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x10 -> :sswitch_8
        0x1a -> :sswitch_7
        0x20 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x4a -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1792
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadTuple;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1799
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2179
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 1792
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 1792
    sget-boolean v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/avos/avoscloud/Messages$UnreadTuple;I)I
    .locals 0

    .line 1792
    iput p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unread_:I

    return p1
.end method

.method static synthetic access$1800(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/avos/avoscloud/Messages$UnreadTuple;J)J
    .locals 0

    .line 1792
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/avos/avoscloud/Messages$UnreadTuple;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/avos/avoscloud/Messages$UnreadTuple;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/avos/avoscloud/Messages$UnreadTuple;J)J
    .locals 0

    .line 1792
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->patchTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/avos/avoscloud/Messages$UnreadTuple;Z)Z
    .locals 0

    .line 1792
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mentioned_:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/avos/avoscloud/Messages$UnreadTuple;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/avos/avoscloud/Messages$UnreadTuple;I)I
    .locals 0

    .line 1792
    iput p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->convType_:I

    return p1
.end method

.method static synthetic access$2602(Lcom/avos/avoscloud/Messages$UnreadTuple;I)I
    .locals 0

    .line 1792
    iput p1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    return p1
.end method

.method static synthetic access$2700(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1792
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1

    .line 3239
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1910
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2470
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadTuple;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2473
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadTuple;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2444
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 2445
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2451
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 2452
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2412
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2418
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2457
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 2458
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2464
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 2465
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2432
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 2433
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2439
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 2440
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2401
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2407
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2422
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2428
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation

    .line 3253
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2283
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    if-nez v1, :cond_1

    .line 2284
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2286
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    .line 2289
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasCid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2290
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 2291
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 2292
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getCid()Ljava/lang/String;

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

    .line 2294
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasUnread()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasUnread()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 2295
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasUnread()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 2296
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getUnread()I

    move-result v1

    .line 2297
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getUnread()I

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 2299
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMid()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 2300
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMid()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 2301
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 2302
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMid()Ljava/lang/String;

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

    .line 2304
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 2305
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 2306
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getTimestamp()J

    move-result-wide v1

    .line 2307
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getTimestamp()J

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

    .line 2309
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasFrom()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasFrom()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 2310
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasFrom()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 2311
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 2312
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 2314
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasData()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 2315
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasData()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 2316
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getData()Ljava/lang/String;

    move-result-object v1

    .line 2317
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getData()Ljava/lang/String;

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

    .line 2319
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasPatchTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasPatchTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 2320
    :goto_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasPatchTimestamp()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 2321
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getPatchTimestamp()J

    move-result-wide v1

    .line 2322
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getPatchTimestamp()J

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

    .line 2324
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMentioned()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMentioned()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 2325
    :goto_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMentioned()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 2326
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMentioned()Z

    move-result v1

    .line 2327
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMentioned()Z

    move-result v2

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 2329
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasBinaryMsg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasBinaryMsg()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    .line 2330
    :goto_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasBinaryMsg()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 2331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2332
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 2334
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasConvType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasConvType()Z

    move-result v2

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    .line 2335
    :goto_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasConvType()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1e

    .line 2336
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getConvType()I

    move-result v1

    .line 2337
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getConvType()I

    move-result v2

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 2339
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getBinaryMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2161
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 1933
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    .line 1934
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1935
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1937
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1939
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1940
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1941
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1951
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    .line 1952
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1953
    check-cast v0, Ljava/lang/String;

    .line 1954
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1956
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    return-object v0

    .line 1959
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getConvType()I
    .locals 1

    .line 2176
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->convType_:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 2089
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    .line 2090
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2091
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2093
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2095
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2096
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2107
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    .line 2108
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2109
    check-cast v0, Ljava/lang/String;

    .line 2110
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2112
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    return-object v0

    .line 2115
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1

    .line 3262
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 2047
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    .line 2048
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2049
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2051
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2053
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2054
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2055
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2065
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    .line 2066
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2067
    check-cast v0, Ljava/lang/String;

    .line 2068
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2070
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    return-object v0

    .line 2073
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentioned()Z
    .locals 1

    .line 2146
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mentioned_:Z

    return v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 1990
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    .line 1991
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1992
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1994
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1996
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1997
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1998
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2008
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    .line 2009
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2010
    check-cast v0, Ljava/lang/String;

    .line 2011
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2013
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    return-object v0

    .line 2016
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
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation

    .line 3258
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 2131
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->patchTimestamp_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 2233
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2237
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2238
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2240
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2241
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unread_:I

    .line 2242
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2244
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 2245
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2247
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2248
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->timestamp_:J

    .line 2249
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2251
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 2252
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2254
    :cond_5
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 2255
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2257
    :cond_6
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 2258
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->patchTimestamp_:J

    .line 2259
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2261
    :cond_7
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 2262
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mentioned_:Z

    .line 2263
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2265
    :cond_8
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 2266
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 2267
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2269
    :cond_9
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 2270
    iget v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->convType_:I

    .line 2271
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2273
    :cond_a
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2274
    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 2032
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1817
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUnread()I
    .locals 1

    .line 1975
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unread_:I

    return v0
.end method

.method public hasBinaryMsg()Z
    .locals 2

    .line 2155
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 1927
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasConvType()Z
    .locals 2

    .line 2170
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasData()Z
    .locals 2

    .line 2083
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasFrom()Z
    .locals 2

    .line 2041
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasMentioned()Z
    .locals 2

    .line 2140
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasMid()Z
    .locals 2

    .line 1984
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 2125
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 2026
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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

.method public hasUnread()Z
    .locals 2

    .line 1969
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

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
    .locals 3

    .line 2345
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2346
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2349
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2350
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2352
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2354
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasUnread()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 2356
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getUnread()I

    move-result v1

    add-int/2addr v0, v1

    .line 2358
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMid()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 2360
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2362
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 2365
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getTimestamp()J

    move-result-wide v1

    .line 2364
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 2367
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 2369
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2371
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasData()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 2373
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2375
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasPatchTimestamp()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 2378
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getPatchTimestamp()J

    move-result-wide v1

    .line 2377
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 2380
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasMentioned()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 2383
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getMentioned()Z

    move-result v1

    .line 2382
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 2385
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasBinaryMsg()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 2387
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2389
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasConvType()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 2391
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->getConvType()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 2393
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2394
    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1915
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$1100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    const-class v2, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    .line 1916
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 2181
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2185
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasCid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2186
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedIsInitialized:B

    return v2

    .line 2189
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->hasUnread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2190
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedIsInitialized:B

    return v2

    .line 2193
    :cond_3
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 1

    .line 2468
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadTuple;->newBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2

    .line 2483
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->newBuilderForType()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1792
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadTuple;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->newBuilderForType()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;
    .locals 2

    .line 2476
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadTuple;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 2477
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadTuple;)Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadTuple$Builder;

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

    .line 2199
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2202
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2203
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unread_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2205
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2206
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mid_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2208
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2209
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->timestamp_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2211
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 2212
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->from_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2214
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 2215
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->data_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2217
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 2218
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->patchTimestamp_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2220
    :cond_6
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 2221
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->mentioned_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2223
    :cond_7
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 2224
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->binaryMsg_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2226
    :cond_8
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 2227
    iget v1, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->convType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2229
    :cond_9
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
