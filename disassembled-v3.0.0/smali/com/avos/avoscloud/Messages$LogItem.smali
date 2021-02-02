.class public final Lcom/avos/avoscloud/Messages$LogItem;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$LogItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$LogItem$Builder;
    }
.end annotation


# static fields
.field public static final ACKAT_FIELD_NUMBER:I = 0x5

.field public static final BIN_FIELD_NUMBER:I = 0xa

.field public static final CONVTYPE_FIELD_NUMBER:I = 0xb

.field public static final DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogItem;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field public static final MENTIONALL_FIELD_NUMBER:I = 0x8

.field public static final MENTIONPIDS_FIELD_NUMBER:I = 0x9

.field public static final MSGID_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATCHTIMESTAMP_FIELD_NUMBER:I = 0x7

.field public static final READAT_FIELD_NUMBER:I = 0x6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private ackAt_:J

.field private bin_:Z

.field private bitField0_:I

.field private convType_:I

.field private volatile data_:Ljava/lang/Object;

.field private volatile from_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private mentionAll_:Z

.field private mentionPids_:Lcom/google/protobuf/LazyStringList;

.field private volatile msgId_:Ljava/lang/Object;

.field private patchTimestamp_:J

.field private readAt_:J

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4923
    new-instance v0, Lcom/avos/avoscloud/Messages$LogItem;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$LogItem;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$LogItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogItem;

    .line 4931
    new-instance v0, Lcom/avos/avoscloud/Messages$LogItem$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$LogItem$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 3407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3799
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3408
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    .line 3409
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 3410
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->timestamp_:J

    .line 3411
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    .line 3412
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->ackAt_:J

    .line 3413
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->readAt_:J

    .line 3414
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->patchTimestamp_:J

    const/4 v0, 0x0

    .line 3415
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionAll_:Z

    .line 3416
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 3417
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bin_:Z

    .line 3418
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->convType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3430
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$LogItem;-><init>()V

    .line 3433
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x100

    if-nez v1, :cond_3

    .line 3437
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 3443
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$LogItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 3507
    :sswitch_0
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3508
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->convType_:I

    goto :goto_0

    .line 3502
    :sswitch_1
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3503
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bin_:Z

    goto :goto_0

    .line 3493
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    and-int/lit16 v5, v2, 0x100

    if-eq v5, v3, :cond_1

    .line 3495
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x100

    .line 3498
    :cond_1
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 3488
    :sswitch_3
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3489
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionAll_:Z

    goto :goto_0

    .line 3483
    :sswitch_4
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3484
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->patchTimestamp_:J

    goto :goto_0

    .line 3478
    :sswitch_5
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3479
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->readAt_:J

    goto :goto_0

    .line 3473
    :sswitch_6
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3474
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->ackAt_:J

    goto :goto_0

    .line 3467
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3468
    iget v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3469
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3462
    :sswitch_8
    iget v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3463
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->timestamp_:J

    goto/16 :goto_0

    .line 3456
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3457
    iget v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3458
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3450
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3451
    iget v6, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    .line 3452
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;
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

    .line 3516
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3517
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3514
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x100

    if-ne p2, v3, :cond_2

    .line 3520
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 3522
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3523
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->makeExtensionsImmutable()V

    throw p1

    :cond_3
    and-int/lit16 p1, v2, 0x100

    if-ne p1, v3, :cond_4

    .line 3520
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 3522
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3523
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
        0x22 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
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

    .line 3398
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$LogItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3405
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3799
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 3398
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    .line 3398
    sget-boolean v0, Lcom/avos/avoscloud/Messages$LogItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/avos/avoscloud/Messages$LogItem;)Ljava/lang/Object;
    .locals 0

    .line 3398
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/avos/avoscloud/Messages$LogItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3398
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/avos/avoscloud/Messages$LogItem;)Ljava/lang/Object;
    .locals 0

    .line 3398
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/avos/avoscloud/Messages$LogItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3398
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/avos/avoscloud/Messages$LogItem;J)J
    .locals 0

    .line 3398
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/avos/avoscloud/Messages$LogItem;)Ljava/lang/Object;
    .locals 0

    .line 3398
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/avos/avoscloud/Messages$LogItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3398
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/avos/avoscloud/Messages$LogItem;J)J
    .locals 0

    .line 3398
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->ackAt_:J

    return-wide p1
.end method

.method static synthetic access$4002(Lcom/avos/avoscloud/Messages$LogItem;J)J
    .locals 0

    .line 3398
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->readAt_:J

    return-wide p1
.end method

.method static synthetic access$4102(Lcom/avos/avoscloud/Messages$LogItem;J)J
    .locals 0

    .line 3398
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->patchTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$4202(Lcom/avos/avoscloud/Messages$LogItem;Z)Z
    .locals 0

    .line 3398
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionAll_:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 3398
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/avos/avoscloud/Messages$LogItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 3398
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/avos/avoscloud/Messages$LogItem;Z)Z
    .locals 0

    .line 3398
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->bin_:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/avos/avoscloud/Messages$LogItem;I)I
    .locals 0

    .line 3398
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->convType_:I

    return p1
.end method

.method static synthetic access$4602(Lcom/avos/avoscloud/Messages$LogItem;I)I
    .locals 0

    .line 3398
    iput p1, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    return p1
.end method

.method static synthetic access$4700(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3398
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1

    .line 4927
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3528
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4103
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogItem;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogItem;->toBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4106
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogItem;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$LogItem;->toBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4077
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 4078
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4084
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 4085
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4045
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4051
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4090
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 4091
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4097
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 4098
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4065
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 4066
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4072
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 4073
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4034
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4040
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4055
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4061
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogItem;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;"
        }
    .end annotation

    .line 4941
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3907
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$LogItem;

    if-nez v1, :cond_1

    .line 3908
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3910
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$LogItem;

    .line 3913
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasFrom()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasFrom()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3914
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasFrom()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 3915
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 3916
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getFrom()Ljava/lang/String;

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

    .line 3918
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasData()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 3919
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasData()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 3920
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getData()Ljava/lang/String;

    move-result-object v1

    .line 3921
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getData()Ljava/lang/String;

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

    .line 3923
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 3924
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 3925
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getTimestamp()J

    move-result-wide v1

    .line 3926
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getTimestamp()J

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

    .line 3928
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasMsgId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasMsgId()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 3929
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasMsgId()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 3930
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMsgId()Ljava/lang/String;

    move-result-object v1

    .line 3931
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getMsgId()Ljava/lang/String;

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

    .line 3933
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasAckAt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasAckAt()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 3934
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasAckAt()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 3935
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getAckAt()J

    move-result-wide v1

    .line 3936
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getAckAt()J

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

    .line 3938
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasReadAt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasReadAt()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 3939
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasReadAt()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 3940
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getReadAt()J

    move-result-wide v1

    .line 3941
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getReadAt()J

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

    .line 3943
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasPatchTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasPatchTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 3944
    :goto_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasPatchTimestamp()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 3945
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getPatchTimestamp()J

    move-result-wide v1

    .line 3946
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getPatchTimestamp()J

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

    .line 3948
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasMentionAll()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasMentionAll()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 3949
    :goto_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasMentionAll()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 3950
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionAll()Z

    move-result v1

    .line 3951
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionAll()Z

    move-result v2

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 3953
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 3954
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_1b

    .line 3955
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasBin()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasBin()Z

    move-result v2

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    .line 3956
    :goto_11
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasBin()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1c

    .line 3957
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getBin()Z

    move-result v1

    .line 3958
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getBin()Z

    move-result v2

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_12
    if-eqz v1, :cond_1e

    .line 3960
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasConvType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->hasConvType()Z

    move-result v2

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    .line 3961
    :goto_13
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasConvType()Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v1, :cond_1f

    .line 3962
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getConvType()I

    move-result v1

    .line 3963
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogItem;->getConvType()I

    move-result v2

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_14

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_14
    if-eqz v1, :cond_21

    .line 3965
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_15

    :cond_21
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getAckAt()J
    .locals 2

    .line 3692
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->ackAt_:J

    return-wide v0
.end method

.method public getBin()Z
    .locals 1

    .line 3781
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bin_:Z

    return v0
.end method

.method public getConvType()I
    .locals 1

    .line 3796
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->convType_:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 3593
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    .line 3594
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3595
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3597
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3599
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3600
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3601
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3611
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    .line 3612
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3613
    check-cast v0, Ljava/lang/String;

    .line 3614
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3616
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    return-object v0

    .line 3619
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogItem;
    .locals 1

    .line 4950
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$LogItem;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 3551
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    .line 3552
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3553
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3555
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3557
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3558
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3559
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3569
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    .line 3570
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3571
    check-cast v0, Ljava/lang/String;

    .line 3572
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3574
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    return-object v0

    .line 3577
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentionAll()Z
    .locals 1

    .line 3737
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionAll_:Z

    return v0
.end method

.method public getMentionPids(I)Ljava/lang/String;
    .locals 1

    .line 3759
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMentionPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3766
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMentionPidsCount()I
    .locals 1

    .line 3753
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 3747
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getMentionPidsList()Ljava/util/List;
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 2

    .line 3650
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    .line 3651
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3652
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3654
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3656
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3657
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3658
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMsgIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3668
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    .line 3669
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3670
    check-cast v0, Ljava/lang/String;

    .line 3671
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3673
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    return-object v0

    .line 3676
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
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;"
        }
    .end annotation

    .line 4946
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 3722
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->patchTimestamp_:J

    return-wide v0
.end method

.method public getReadAt()J
    .locals 2

    .line 3707
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->readAt_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 3848
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3852
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3853
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3855
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 3856
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 3858
    :cond_2
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 3859
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$LogItem;->timestamp_:J

    .line 3860
    invoke-static {v3, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 3862
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 3863
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 3865
    :cond_4
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 3866
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$LogItem;->ackAt_:J

    .line 3867
    invoke-static {v3, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 3869
    :cond_5
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    .line 3870
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$LogItem;->readAt_:J

    .line 3871
    invoke-static {v3, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 3873
    :cond_6
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x7

    .line 3874
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$LogItem;->patchTimestamp_:J

    .line 3875
    invoke-static {v3, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 3877
    :cond_7
    iget v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 3878
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionAll_:Z

    .line 3879
    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_8
    const/4 v3, 0x0

    .line 3883
    :goto_1
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 3884
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/Messages$LogItem;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    add-int/2addr v0, v3

    .line 3887
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 3889
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 3890
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$LogItem;->bin_:Z

    .line 3891
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3893
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 3894
    iget v2, p0, Lcom/avos/avoscloud/Messages$LogItem;->convType_:I

    .line 3895
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3897
    :cond_b
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3898
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 3635
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3424
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAckAt()Z
    .locals 2

    .line 3686
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

.method public hasBin()Z
    .locals 2

    .line 3775
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

.method public hasConvType()Z
    .locals 2

    .line 3790
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

    .line 3587
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

.method public hasFrom()Z
    .locals 2

    .line 3545
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMentionAll()Z
    .locals 2

    .line 3731
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

.method public hasMsgId()Z
    .locals 2

    .line 3644
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 3716
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

.method public hasReadAt()Z
    .locals 2

    .line 3701
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 3629
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

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

    .line 3971
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3972
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 3975
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3976
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3978
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3980
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasData()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3982
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3984
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3987
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getTimestamp()J

    move-result-wide v1

    .line 3986
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 3989
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasMsgId()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3991
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3993
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasAckAt()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 3996
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getAckAt()J

    move-result-wide v1

    .line 3995
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 3998
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasReadAt()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 4001
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getReadAt()J

    move-result-wide v1

    .line 4000
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4003
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasPatchTimestamp()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 4006
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getPatchTimestamp()J

    move-result-wide v1

    .line 4005
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 4008
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasMentionAll()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 4011
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionAll()Z

    move-result v1

    .line 4010
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 4013
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionPidsCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 4015
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4017
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasBin()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 4020
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getBin()Z

    move-result v1

    .line 4019
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 4022
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->hasConvType()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 4024
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->getConvType()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x1d

    .line 4026
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4027
    iput v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3533
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$3000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$LogItem;

    const-class v2, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    .line 3534
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3801
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3805
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 1

    .line 4101
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogItem;->newBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 4116
    new-instance v0, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->newBuilderForType()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3398
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$LogItem;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->newBuilderForType()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;
    .locals 2

    .line 4109
    sget-object v0, Lcom/avos/avoscloud/Messages$LogItem;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$LogItem;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$LogItem$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$LogItem$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 4110
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$LogItem$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogItem;)Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->toBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogItem;->toBuilder()Lcom/avos/avoscloud/Messages$LogItem$Builder;

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

    .line 3811
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3812
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->from_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3814
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3815
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->data_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3817
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3818
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$LogItem;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3820
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3821
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->msgId_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3823
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 3824
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->ackAt_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3826
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 3827
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->readAt_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3829
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 3830
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$LogItem;->patchTimestamp_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3832
    :cond_6
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 3833
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionAll_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_7
    const/4 v0, 0x0

    .line 3835
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    .line 3836
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$LogItem;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3838
    :cond_8
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 3839
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->bin_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3841
    :cond_9
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 3842
    iget v1, p0, Lcom/avos/avoscloud/Messages$LogItem;->convType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3844
    :cond_a
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$LogItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
