.class public final Lcom/avos/avoscloud/Messages$RoomCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoomCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    }
.end annotation


# static fields
.field public static final BYPEERID_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RoomCommand;

.field public static final N_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$RoomCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROOMID_FIELD_NUMBER:I = 0x1

.field public static final ROOMPEERIDS_FIELD_NUMBER:I = 0x6

.field public static final S_FIELD_NUMBER:I = 0x2

.field public static final TRANSIENT_FIELD_NUMBER:I = 0x5

.field public static final T_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile byPeerId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile n_:Ljava/lang/Object;

.field private volatile roomId_:Ljava/lang/Object;

.field private roomPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private volatile s_:Ljava/lang/Object;

.field private t_:J

.field private transient_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23710
    new-instance v0, Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 23718
    new-instance v0, Lcom/avos/avoscloud/Messages$RoomCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$RoomCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 22437
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 22773
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedIsInitialized:B

    const-string v0, ""

    .line 22438
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    .line 22439
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 22440
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->t_:J

    .line 22441
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 22442
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->transient_:Z

    .line 22443
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 22444
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22456
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;-><init>()V

    .line 22459
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x20

    if-nez v1, :cond_b

    .line 22463
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    const/16 v6, 0xa

    if-eq v4, v6, :cond_8

    const/16 v6, 0x12

    if-eq v4, v6, :cond_7

    const/16 v6, 0x18

    if-eq v4, v6, :cond_6

    const/16 v6, 0x22

    if-eq v4, v6, :cond_5

    const/16 v6, 0x28

    if-eq v4, v6, :cond_4

    const/16 v6, 0x32

    if-eq v4, v6, :cond_2

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_1

    .line 22469
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$RoomCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 22513
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 22514
    iget v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    .line 22515
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    goto :goto_0

    .line 22504
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v2, 0x20

    if-eq v5, v3, :cond_3

    .line 22506
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x20

    .line 22509
    :cond_3
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 22499
    :cond_4
    iget v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    .line 22500
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->transient_:Z

    goto :goto_0

    .line 22493
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 22494
    iget v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    .line 22495
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    goto :goto_0

    .line 22488
    :cond_6
    iget v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    .line 22489
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->t_:J

    goto :goto_0

    .line 22482
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 22483
    iget v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    .line 22484
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 22476
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 22477
    iget v6, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    .line 22478
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22523
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 22524
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 22521
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v3, :cond_a

    .line 22527
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 22529
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v3, :cond_c

    .line 22527
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 22529
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22530
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22428
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RoomCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 22435
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 22773
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 22428
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$22700()Z
    .locals 1

    .line 22428
    sget-boolean v0, Lcom/avos/avoscloud/Messages$RoomCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$22900(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$22902(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23000(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$23002(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23102(Lcom/avos/avoscloud/Messages$RoomCommand;J)J
    .locals 0

    .line 22428
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->t_:J

    return-wide p1
.end method

.method static synthetic access$23200(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$23202(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23302(Lcom/avos/avoscloud/Messages$RoomCommand;Z)Z
    .locals 0

    .line 22428
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->transient_:Z

    return p1
.end method

.method static synthetic access$23400(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 22428
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$23402(Lcom/avos/avoscloud/Messages$RoomCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 22428
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$23500(Lcom/avos/avoscloud/Messages$RoomCommand;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$23502(Lcom/avos/avoscloud/Messages$RoomCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22428
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23602(Lcom/avos/avoscloud/Messages$RoomCommand;I)I
    .locals 0

    .line 22428
    iput p1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$23700(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 22428
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1

    .line 23714
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 22535
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$22300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23008
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23011
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22982
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 22983
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22989
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 22990
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22950
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22956
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22995
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 22996
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23002
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 23003
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22970
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 22971
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22977
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 22978
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22939
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22945
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22960
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22966
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$RoomCommand;",
            ">;"
        }
    .end annotation

    .line 23728
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22852
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$RoomCommand;

    if-nez v1, :cond_1

    .line 22853
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 22855
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 22858
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasRoomId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasRoomId()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 22859
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasRoomId()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 22860
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomId()Ljava/lang/String;

    move-result-object v1

    .line 22861
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomId()Ljava/lang/String;

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

    .line 22863
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasS()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasS()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 22864
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasS()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 22865
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getS()Ljava/lang/String;

    move-result-object v1

    .line 22866
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getS()Ljava/lang/String;

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

    .line 22868
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasT()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasT()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 22869
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasT()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 22870
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getT()J

    move-result-wide v1

    .line 22871
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getT()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 22873
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasN()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasN()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 22874
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasN()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 22875
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getN()Ljava/lang/String;

    move-result-object v1

    .line 22876
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getN()Ljava/lang/String;

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

    .line 22878
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasTransient()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasTransient()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 22879
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasTransient()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 22880
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getTransient()Z

    move-result v1

    .line 22881
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getTransient()Z

    move-result v2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 22883
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 22884
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_12

    .line 22885
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasByPeerId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasByPeerId()Z

    move-result v2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 22886
    :goto_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasByPeerId()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v1, :cond_13

    .line 22887
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getByPeerId()Ljava/lang/String;

    move-result-object v1

    .line 22888
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->getByPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_c
    if-eqz v1, :cond_15

    .line 22890
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getByPeerId()Ljava/lang/String;
    .locals 2

    .line 22743
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    .line 22744
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22745
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22747
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22749
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22750
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22751
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getByPeerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22761
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    .line 22762
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22763
    check-cast v0, Ljava/lang/String;

    .line 22764
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22766
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    return-object v0

    .line 22769
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1

    .line 23737
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 22428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 22428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 22657
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    .line 22658
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22659
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22661
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22663
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22664
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22665
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22675
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    .line 22676
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22677
    check-cast v0, Ljava/lang/String;

    .line 22678
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22680
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    return-object v0

    .line 22683
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
            "Lcom/avos/avoscloud/Messages$RoomCommand;",
            ">;"
        }
    .end annotation

    .line 23733
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 2

    .line 22558
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    .line 22559
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22560
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22562
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22564
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22565
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22566
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22576
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    .line 22577
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22578
    check-cast v0, Ljava/lang/String;

    .line 22579
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22581
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    return-object v0

    .line 22584
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRoomPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 22721
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRoomPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 22728
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRoomPeerIdsCount()I
    .locals 1

    .line 22715
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 22709
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getRoomPeerIdsList()Ljava/util/List;
    .locals 1

    .line 22428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 22600
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    .line 22601
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22602
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22604
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22606
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22607
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22608
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 22618
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    .line 22619
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22620
    check-cast v0, Ljava/lang/String;

    .line 22621
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22623
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    return-object v0

    .line 22626
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 22810
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 22814
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 22815
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22817
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 22818
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 22820
    :cond_2
    iget v3, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 22821
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->t_:J

    .line 22822
    invoke-static {v3, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 22824
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 22825
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 22827
    :cond_4
    iget v3, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 22828
    iget-boolean v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->transient_:Z

    .line 22829
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    const/4 v3, 0x0

    .line 22833
    :goto_1
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 22834
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/Messages$RoomCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v3

    .line 22837
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 22839
    iget v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 22840
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22842
    :cond_7
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 22843
    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedSize:I

    return v0
.end method

.method public getT()J
    .locals 2

    .line 22642
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->t_:J

    return-wide v0
.end method

.method public getTransient()Z
    .locals 1

    .line 22699
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->transient_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 22450
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasByPeerId()Z
    .locals 2

    .line 22737
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

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

.method public hasN()Z
    .locals 2

    .line 22651
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

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

.method public hasRoomId()Z
    .locals 2

    .line 22552
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasS()Z
    .locals 2

    .line 22594
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

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

    .line 22636
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

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

.method public hasTransient()Z
    .locals 2

    .line 22693
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

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

    .line 22896
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 22897
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 22900
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22901
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasRoomId()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 22903
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22905
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasS()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 22907
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22909
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasT()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 22912
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getT()J

    move-result-wide v1

    .line 22911
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 22914
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasN()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 22916
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22918
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasTransient()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 22921
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getTransient()Z

    move-result v1

    .line 22920
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22923
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomPeerIdsCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 22925
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getRoomPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22927
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->hasByPeerId()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 22929
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->getByPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 22931
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22932
    iput v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 22540
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$22400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$RoomCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    .line 22541
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 22775
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 22779
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 1

    .line 23006
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->newBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 2

    .line 23021
    new-instance v0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 22428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 22428
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 22428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 2

    .line 23014
    sget-object v0, Lcom/avos/avoscloud/Messages$RoomCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RoomCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 23015
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 22428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 22428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RoomCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

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

    .line 22785
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 22786
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomId_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22788
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 22789
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->s_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22791
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 22792
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->t_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22794
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 22795
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->n_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22797
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 22798
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->transient_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_4
    const/4 v0, 0x0

    .line 22800
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 22801
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->roomPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22803
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 22804
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->byPeerId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 22806
    :cond_6
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RoomCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
