.class public final Lcom/avos/avoscloud/Messages$PatchItem;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatchItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    }
.end annotation


# static fields
.field public static final BINARYMSG_FIELD_NUMBER:I = 0x8

.field public static final CID_FIELD_NUMBER:I = 0x1

.field public static final DATA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchItem;

.field public static final FROM_FIELD_NUMBER:I = 0x7

.field public static final MENTIONALL_FIELD_NUMBER:I = 0x9

.field public static final MENTIONPIDS_FIELD_NUMBER:I = 0xa

.field public static final MID_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATCHTIMESTAMP_FIELD_NUMBER:I = 0x6

.field public static final RECALL_FIELD_NUMBER:I = 0x4

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private binaryMsg_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private volatile data_:Ljava/lang/Object;

.field private volatile from_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private mentionAll_:Z

.field private mentionPids_:Lcom/google/protobuf/LazyStringList;

.field private volatile mid_:Ljava/lang/Object;

.field private patchTimestamp_:J

.field private recall_:Z

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33071
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchItem;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PatchItem;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchItem;

    .line 33079
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchItem$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PatchItem$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 31559
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 31958
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedIsInitialized:B

    const-string v0, ""

    .line 31560
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    .line 31561
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 31562
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->timestamp_:J

    const/4 v3, 0x0

    .line 31563
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->recall_:Z

    .line 31564
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    .line 31565
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->patchTimestamp_:J

    .line 31566
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    .line 31567
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 31568
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionAll_:Z

    .line 31569
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31581
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchItem;-><init>()V

    .line 31584
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x200

    if-nez v1, :cond_3

    .line 31588
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 31594
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$PatchItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 31650
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    and-int/lit16 v5, v2, 0x200

    if-eq v5, v3, :cond_1

    .line 31652
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x200

    .line 31655
    :cond_1
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 31645
    :sswitch_1
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31646
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionAll_:Z

    goto :goto_0

    .line 31640
    :sswitch_2
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31641
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->binaryMsg_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 31634
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 31635
    iget v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31636
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    goto :goto_0

    .line 31629
    :sswitch_4
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31630
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->patchTimestamp_:J

    goto :goto_0

    .line 31623
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 31624
    iget v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31625
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    goto :goto_0

    .line 31618
    :sswitch_6
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->recall_:Z

    goto :goto_0

    .line 31613
    :sswitch_7
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->timestamp_:J

    goto/16 :goto_0

    .line 31607
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 31608
    iget v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31609
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 31601
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 31602
    iget v6, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    .line 31603
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;
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
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 31663
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 31664
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 31661
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x200

    if-ne p2, v3, :cond_2

    .line 31667
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 31669
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 31670
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->makeExtensionsImmutable()V

    throw p1

    :cond_3
    and-int/lit16 p1, v2, 0x200

    if-ne p1, v3, :cond_4

    .line 31667
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 31669
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 31670
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31550
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 31557
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 31958
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 31550
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$34200()Z
    .locals 1

    .line 31550
    sget-boolean v0, Lcom/avos/avoscloud/Messages$PatchItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$34400(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$34402(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34500(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$34502(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34602(Lcom/avos/avoscloud/Messages$PatchItem;J)J
    .locals 0

    .line 31550
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$34702(Lcom/avos/avoscloud/Messages$PatchItem;Z)Z
    .locals 0

    .line 31550
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->recall_:Z

    return p1
.end method

.method static synthetic access$34800(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$34802(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34902(Lcom/avos/avoscloud/Messages$PatchItem;J)J
    .locals 0

    .line 31550
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->patchTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$35000(Lcom/avos/avoscloud/Messages$PatchItem;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$35002(Lcom/avos/avoscloud/Messages$PatchItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31550
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35102(Lcom/avos/avoscloud/Messages$PatchItem;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 31550
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$35202(Lcom/avos/avoscloud/Messages$PatchItem;Z)Z
    .locals 0

    .line 31550
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionAll_:Z

    return p1
.end method

.method static synthetic access$35300(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 31550
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$35302(Lcom/avos/avoscloud/Messages$PatchItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 31550
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$35402(Lcom/avos/avoscloud/Messages$PatchItem;I)I
    .locals 0

    .line 31550
    iput p1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    return p1
.end method

.method static synthetic access$35500(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 31550
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1

    .line 33075
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 31675
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$33800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32243
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchItem;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->toBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32246
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchItem;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchItem;->toBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32217
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 32218
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32224
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 32225
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32185
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32191
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32230
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 32231
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32237
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 32238
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32205
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 32206
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32212
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 32213
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32174
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32180
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32195
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 32201
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation

    .line 33089
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 32058
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$PatchItem;

    if-nez v1, :cond_1

    .line 32059
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 32061
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem;

    .line 32064
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasCid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 32065
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 32066
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 32067
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getCid()Ljava/lang/String;

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

    .line 32069
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMid()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 32070
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMid()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 32071
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 32072
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getMid()Ljava/lang/String;

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

    .line 32074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 32075
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 32076
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getTimestamp()J

    move-result-wide v1

    .line 32077
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getTimestamp()J

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

    .line 32079
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasRecall()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasRecall()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 32080
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasRecall()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 32081
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getRecall()Z

    move-result v1

    .line 32082
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getRecall()Z

    move-result v2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 32084
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasData()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 32085
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasData()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 32086
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getData()Ljava/lang/String;

    move-result-object v1

    .line 32087
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getData()Ljava/lang/String;

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

    .line 32089
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasPatchTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasPatchTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 32090
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasPatchTimestamp()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 32091
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v1

    .line 32092
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 32094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasFrom()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasFrom()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 32095
    :goto_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasFrom()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 32096
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 32097
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getFrom()Ljava/lang/String;

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

    .line 32099
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasBinaryMsg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasBinaryMsg()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 32100
    :goto_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasBinaryMsg()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 32101
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 32102
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 32104
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMentionAll()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMentionAll()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    .line 32105
    :goto_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMentionAll()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 32106
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionAll()Z

    move-result v1

    .line 32107
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionAll()Z

    move-result v2

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 32109
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 32110
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

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

    .line 32111
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public getBinaryMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 31911
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 31698
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    .line 31699
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31700
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 31702
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31704
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31705
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31706
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 31716
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    .line 31717
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31718
    check-cast v0, Ljava/lang/String;

    .line 31719
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31721
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    return-object v0

    .line 31724
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 31812
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    .line 31813
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31814
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 31816
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31818
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31819
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31820
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 31830
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    .line 31831
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31832
    check-cast v0, Ljava/lang/String;

    .line 31833
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31835
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    return-object v0

    .line 31838
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1

    .line 33098
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 31550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 31550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchItem;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 31869
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    .line 31870
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31871
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 31873
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31875
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31876
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31877
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 31887
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    .line 31888
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31889
    check-cast v0, Ljava/lang/String;

    .line 31890
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31892
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    return-object v0

    .line 31895
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentionAll()Z
    .locals 1

    .line 31926
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionAll_:Z

    return v0
.end method

.method public getMentionPids(I)Ljava/lang/String;
    .locals 1

    .line 31948
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMentionPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 31955
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMentionPidsCount()I
    .locals 1

    .line 31942
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 31936
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getMentionPidsList()Ljava/util/List;
    .locals 1

    .line 31550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 31740
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    .line 31741
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31742
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 31744
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31746
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31747
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31748
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 31758
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    .line 31759
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31760
    check-cast v0, Ljava/lang/String;

    .line 31761
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31763
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    return-object v0

    .line 31766
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
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation

    .line 33094
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 31854
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->patchTimestamp_:J

    return-wide v0
.end method

.method public getRecall()Z
    .locals 1

    .line 31797
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->recall_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 32004
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 32008
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 32009
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 32011
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 32012
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 32014
    :cond_2
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 32015
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$PatchItem;->timestamp_:J

    .line 32016
    invoke-static {v3, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 32018
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 32019
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->recall_:Z

    .line 32020
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    .line 32022
    :cond_4
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 32023
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 32025
    :cond_5
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    .line 32026
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$PatchItem;->patchTimestamp_:J

    .line 32027
    invoke-static {v3, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 32029
    :cond_6
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x7

    .line 32030
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 32032
    :cond_7
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 32033
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 32034
    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 32036
    :cond_8
    iget v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_9

    const/16 v3, 0x9

    .line 32037
    iget-boolean v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionAll_:Z

    .line 32038
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    const/4 v3, 0x0

    .line 32042
    :goto_1
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 32043
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/Messages$PatchItem;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    add-int/2addr v0, v3

    .line 32046
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 32048
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 32049
    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 31782
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 31575
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBinaryMsg()Z
    .locals 2

    .line 31905
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

    .line 31692
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasData()Z
    .locals 2

    .line 31806
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

.method public hasFrom()Z
    .locals 2

    .line 31863
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

.method public hasMentionAll()Z
    .locals 2

    .line 31920
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

.method public hasMid()Z
    .locals 2

    .line 31734
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 31848
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

.method public hasRecall()Z
    .locals 2

    .line 31791
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 31776
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 32117
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 32118
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 32121
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 32124
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32126
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMid()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 32128
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32130
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 32133
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getTimestamp()J

    move-result-wide v1

    .line 32132
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 32135
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasRecall()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 32138
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getRecall()Z

    move-result v1

    .line 32137
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 32140
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasData()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 32142
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32144
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasPatchTimestamp()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 32147
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getPatchTimestamp()J

    move-result-wide v1

    .line 32146
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 32149
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 32151
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32153
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasBinaryMsg()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 32155
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32157
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->hasMentionAll()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 32160
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionAll()Z

    move-result v1

    .line 32159
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 32162
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionPidsCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 32164
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 32166
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32167
    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 31680
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$33900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PatchItem;

    const-class v2, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    .line 31681
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 31960
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 31964
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 1

    .line 32241
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchItem;->newBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2

    .line 32256
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 31550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->newBuilderForType()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31550
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchItem;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 31550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->newBuilderForType()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;
    .locals 2

    .line 32249
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchItem;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 32250
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PatchItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchItem;)Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 31550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->toBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 31550
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchItem;->toBuilder()Lcom/avos/avoscloud/Messages$PatchItem$Builder;

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

    .line 31970
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 31971
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31973
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 31974
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31976
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 31977
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$PatchItem;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31979
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 31980
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->recall_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31982
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 31983
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->data_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31985
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 31986
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$PatchItem;->patchTimestamp_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31988
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 31989
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->from_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31991
    :cond_6
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 31992
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->binaryMsg_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31994
    :cond_7
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 31995
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionAll_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_8
    const/4 v0, 0x0

    .line 31997
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xa

    .line 31998
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32000
    :cond_9
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
