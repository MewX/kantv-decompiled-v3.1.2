.class public final Lcom/avos/avoscloud/Messages$DirectCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    }
.end annotation


# static fields
.field public static final BINARYMSG_FIELD_NUMBER:I = 0x13

.field public static final CID_FIELD_NUMBER:I = 0xb

.field public static final CONVTYPE_FIELD_NUMBER:I = 0x16

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DirectCommand;

.field public static final DT_FIELD_NUMBER:I = 0xe

.field public static final FROMPEERID_FIELD_NUMBER:I = 0x3

.field public static final HASMORE_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0xc

.field public static final MENTIONALL_FIELD_NUMBER:I = 0x15

.field public static final MENTIONPIDS_FIELD_NUMBER:I = 0x14

.field public static final MSG_FIELD_NUMBER:I = 0x1

.field public static final OFFLINE_FIELD_NUMBER:I = 0x5

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$DirectCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATCHTIMESTAMP_FIELD_NUMBER:I = 0x12

.field public static final PUSHDATA_FIELD_NUMBER:I = 0x10

.field public static final ROOMID_FIELD_NUMBER:I = 0xf

.field public static final R_FIELD_NUMBER:I = 0xa

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x4

.field public static final TOPEERIDS_FIELD_NUMBER:I = 0x7

.field public static final TRANSIENT_FIELD_NUMBER:I = 0xd

.field public static final UID_FIELD_NUMBER:I = 0x2

.field public static final WILL_FIELD_NUMBER:I = 0x11

.field private static final serialVersionUID:J


# instance fields
.field private binaryMsg_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private convType_:I

.field private volatile dt_:Ljava/lang/Object;

.field private volatile fromPeerId_:Ljava/lang/Object;

.field private hasMore_:Z

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private mentionAll_:Z

.field private mentionPids_:Lcom/google/protobuf/LazyStringList;

.field private volatile msg_:Ljava/lang/Object;

.field private offline_:Z

.field private patchTimestamp_:J

.field private volatile pushData_:Ljava/lang/Object;

.field private r_:Z

.field private volatile roomId_:Ljava/lang/Object;

.field private timestamp_:J

.field private toPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private transient_:Z

.field private volatile uid_:Ljava/lang/Object;

.field private will_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13868
    new-instance v0, Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 13876
    new-instance v0, Lcom/avos/avoscloud/Messages$DirectCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$DirectCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 11189
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 11931
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedIsInitialized:B

    const-string v0, ""

    .line 11190
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    .line 11191
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    .line 11192
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 11193
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->timestamp_:J

    const/4 v3, 0x0

    .line 11194
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->offline_:Z

    .line 11195
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMore_:Z

    .line 11196
    sget-object v4, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 11197
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->r_:Z

    .line 11198
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    .line 11199
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    .line 11200
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->transient_:Z

    .line 11201
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    .line 11202
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    .line 11203
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    .line 11204
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->will_:Z

    .line 11205
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->patchTimestamp_:J

    .line 11206
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 11207
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 11208
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionAll_:Z

    .line 11209
    iput v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->convType_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11221
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;-><init>()V

    .line 11224
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/high16 v3, 0x20000

    const/16 v4, 0x40

    if-nez v1, :cond_5

    .line 11228
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    .line 11234
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/avos/avoscloud/Messages$DirectCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 11352
    :sswitch_0
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11353
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->convType_:I

    goto :goto_0

    .line 11347
    :sswitch_1
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11348
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionAll_:Z

    goto :goto_0

    .line 11338
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    and-int v6, v2, v3

    if-eq v6, v3, :cond_1

    .line 11340
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    or-int/2addr v2, v3

    .line 11343
    :cond_1
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 11333
    :sswitch_3
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11334
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->binaryMsg_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 11328
    :sswitch_4
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11329
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->patchTimestamp_:J

    goto :goto_0

    .line 11323
    :sswitch_5
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11324
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->will_:Z

    goto :goto_0

    .line 11317
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11318
    iget v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11319
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    goto :goto_0

    .line 11311
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11312
    iget v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11313
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11305
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11306
    iget v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11307
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11300
    :sswitch_9
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11301
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->transient_:Z

    goto/16 :goto_0

    .line 11294
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11295
    iget v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11296
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11288
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11289
    iget v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11290
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11283
    :sswitch_c
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11284
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->r_:Z

    goto/16 :goto_0

    .line 11274
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    and-int/lit8 v6, v2, 0x40

    if-eq v6, v4, :cond_2

    .line 11276
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x40

    .line 11279
    :cond_2
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 11269
    :sswitch_e
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11270
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMore_:Z

    goto/16 :goto_0

    .line 11264
    :sswitch_f
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->offline_:Z

    goto/16 :goto_0

    .line 11259
    :sswitch_10
    iget v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11260
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->timestamp_:J

    goto/16 :goto_0

    .line 11253
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11254
    iget v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11255
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11247
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11248
    iget v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11249
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11241
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 11242
    iget v7, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    .line 11243
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_14
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

    .line 11361
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 11362
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11359
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x40

    if-ne p2, v4, :cond_3

    .line 11365
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    :cond_3
    and-int p2, v2, v3

    if-ne p2, v3, :cond_4

    .line 11368
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 11370
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11371
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x40

    if-ne p1, v4, :cond_6

    .line 11365
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    :cond_6
    and-int p1, v2, v3

    if-ne p1, v3, :cond_7

    .line 11368
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    .line 11370
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11371
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0xa -> :sswitch_13
        0x12 -> :sswitch_12
        0x1a -> :sswitch_11
        0x20 -> :sswitch_10
        0x28 -> :sswitch_f
        0x30 -> :sswitch_e
        0x3a -> :sswitch_d
        0x50 -> :sswitch_c
        0x5a -> :sswitch_b
        0x62 -> :sswitch_a
        0x68 -> :sswitch_9
        0x72 -> :sswitch_8
        0x7a -> :sswitch_7
        0x82 -> :sswitch_6
        0x88 -> :sswitch_5
        0x90 -> :sswitch_4
        0x9a -> :sswitch_3
        0xa2 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xb0 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11180
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DirectCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 11187
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 11931
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 11180
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$12000()Z
    .locals 1

    .line 11180
    sget-boolean v0, Lcom/avos/avoscloud/Messages$DirectCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12200(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12202(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12302(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12400(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12402(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/avos/avoscloud/Messages$DirectCommand;J)J
    .locals 0

    .line 11180
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$12602(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z
    .locals 0

    .line 11180
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->offline_:Z

    return p1
.end method

.method static synthetic access$12702(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z
    .locals 0

    .line 11180
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMore_:Z

    return p1
.end method

.method static synthetic access$12800(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$12802(Lcom/avos/avoscloud/Messages$DirectCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z
    .locals 0

    .line 11180
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->r_:Z

    return p1
.end method

.method static synthetic access$13000(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13002(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13102(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13202(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z
    .locals 0

    .line 11180
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->transient_:Z

    return p1
.end method

.method static synthetic access$13300(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13302(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13400(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13402(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13500(Lcom/avos/avoscloud/Messages$DirectCommand;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13502(Lcom/avos/avoscloud/Messages$DirectCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13602(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z
    .locals 0

    .line 11180
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->will_:Z

    return p1
.end method

.method static synthetic access$13702(Lcom/avos/avoscloud/Messages$DirectCommand;J)J
    .locals 0

    .line 11180
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->patchTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$13802(Lcom/avos/avoscloud/Messages$DirectCommand;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$13900(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$13902(Lcom/avos/avoscloud/Messages$DirectCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 11180
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/avos/avoscloud/Messages$DirectCommand;Z)Z
    .locals 0

    .line 11180
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionAll_:Z

    return p1
.end method

.method static synthetic access$14102(Lcom/avos/avoscloud/Messages$DirectCommand;I)I
    .locals 0

    .line 11180
    iput p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->convType_:I

    return p1
.end method

.method static synthetic access$14202(Lcom/avos/avoscloud/Messages$DirectCommand;I)I
    .locals 0

    .line 11180
    iput p1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$14300(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 11180
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1

    .line 13872
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11376
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$11600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12377
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12380
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12351
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 12352
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12358
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 12359
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12319
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12325
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12364
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 12365
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12371
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 12372
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12339
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 12340
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12346
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 12347
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12308
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12314
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12329
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12335
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$DirectCommand;",
            ">;"
        }
    .end annotation

    .line 13886
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12101
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$DirectCommand;

    if-nez v1, :cond_1

    .line 12102
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12104
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 12107
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMsg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMsg()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 12108
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMsg()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 12109
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 12110
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMsg()Ljava/lang/String;

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

    .line 12112
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasUid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasUid()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 12113
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasUid()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 12114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 12115
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getUid()Ljava/lang/String;

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

    .line 12117
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasFromPeerId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasFromPeerId()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 12118
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasFromPeerId()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 12119
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getFromPeerId()Ljava/lang/String;

    move-result-object v1

    .line 12120
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getFromPeerId()Ljava/lang/String;

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

    .line 12122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 12123
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 12124
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTimestamp()J

    move-result-wide v1

    .line 12125
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTimestamp()J

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

    .line 12127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasOffline()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasOffline()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 12128
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasOffline()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 12129
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getOffline()Z

    move-result v1

    .line 12130
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getOffline()Z

    move-result v2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 12132
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasHasMore()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasHasMore()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 12133
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasHasMore()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 12134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getHasMore()Z

    move-result v1

    .line 12135
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getHasMore()Z

    move-result v2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 12137
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 12138
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_15

    .line 12139
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasR()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasR()Z

    move-result v2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    .line 12140
    :goto_d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasR()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v1, :cond_16

    .line 12141
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getR()Z

    move-result v1

    .line 12142
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getR()Z

    move-result v2

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_e
    if-eqz v1, :cond_18

    .line 12144
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasCid()Z

    move-result v2

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    .line 12145
    :goto_f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_19

    .line 12146
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 12147
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_10
    if-eqz v1, :cond_1b

    .line 12149
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasId()Z

    move-result v2

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    .line 12150
    :goto_11
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1c

    .line 12151
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getId()Ljava/lang/String;

    move-result-object v1

    .line 12152
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_12
    if-eqz v1, :cond_1e

    .line 12154
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTransient()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTransient()Z

    move-result v2

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    .line 12155
    :goto_13
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTransient()Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v1, :cond_1f

    .line 12156
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTransient()Z

    move-result v1

    .line 12157
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTransient()Z

    move-result v2

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_14

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_14
    if-eqz v1, :cond_21

    .line 12159
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasDt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasDt()Z

    move-result v2

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    .line 12160
    :goto_15
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasDt()Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz v1, :cond_22

    .line 12161
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDt()Ljava/lang/String;

    move-result-object v1

    .line 12162
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_16

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_16
    if-eqz v1, :cond_24

    .line 12164
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasRoomId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasRoomId()Z

    move-result v2

    if-ne v1, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_17

    :cond_24
    const/4 v1, 0x0

    .line 12165
    :goto_17
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasRoomId()Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz v1, :cond_25

    .line 12166
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getRoomId()Ljava/lang/String;

    move-result-object v1

    .line 12167
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_18

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_18
    if-eqz v1, :cond_27

    .line 12169
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPushData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPushData()Z

    move-result v2

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    goto :goto_19

    :cond_27
    const/4 v1, 0x0

    .line 12170
    :goto_19
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPushData()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v1, :cond_28

    .line 12171
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPushData()Ljava/lang/String;

    move-result-object v1

    .line 12172
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPushData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1a

    :cond_28
    const/4 v1, 0x0

    :cond_29
    :goto_1a
    if-eqz v1, :cond_2a

    .line 12174
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasWill()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasWill()Z

    move-result v2

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v1, 0x0

    .line 12175
    :goto_1b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasWill()Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v1, :cond_2b

    .line 12176
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getWill()Z

    move-result v1

    .line 12177
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getWill()Z

    move-result v2

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v1, 0x0

    :cond_2c
    :goto_1c
    if-eqz v1, :cond_2d

    .line 12179
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPatchTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPatchTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v1, 0x0

    .line 12180
    :goto_1d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPatchTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eqz v1, :cond_2e

    .line 12181
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPatchTimestamp()J

    move-result-wide v1

    .line 12182
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPatchTimestamp()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_2e

    const/4 v1, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v1, 0x0

    :cond_2f
    :goto_1e
    if-eqz v1, :cond_30

    .line 12184
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasBinaryMsg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasBinaryMsg()Z

    move-result v2

    if-ne v1, v2, :cond_30

    const/4 v1, 0x1

    goto :goto_1f

    :cond_30
    const/4 v1, 0x0

    .line 12185
    :goto_1f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasBinaryMsg()Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v1, :cond_31

    .line 12186
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 12187
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    goto :goto_20

    :cond_31
    const/4 v1, 0x0

    :cond_32
    :goto_20
    if-eqz v1, :cond_33

    .line 12189
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 12190
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    goto :goto_21

    :cond_33
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_34

    .line 12191
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMentionAll()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMentionAll()Z

    move-result v2

    if-ne v1, v2, :cond_34

    const/4 v1, 0x1

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    .line 12192
    :goto_22
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMentionAll()Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz v1, :cond_35

    .line 12193
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionAll()Z

    move-result v1

    .line 12194
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionAll()Z

    move-result v2

    if-ne v1, v2, :cond_35

    const/4 v1, 0x1

    goto :goto_23

    :cond_35
    const/4 v1, 0x0

    :cond_36
    :goto_23
    if-eqz v1, :cond_37

    .line 12196
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasConvType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasConvType()Z

    move-result v2

    if-ne v1, v2, :cond_37

    const/4 v1, 0x1

    goto :goto_24

    :cond_37
    const/4 v1, 0x0

    .line 12197
    :goto_24
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasConvType()Z

    move-result v2

    if-eqz v2, :cond_39

    if-eqz v1, :cond_38

    .line 12198
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getConvType()I

    move-result v1

    .line 12199
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->getConvType()I

    move-result v2

    if-ne v1, v2, :cond_38

    const/4 v1, 0x1

    goto :goto_25

    :cond_38
    const/4 v1, 0x0

    :cond_39
    :goto_25
    if-eqz v1, :cond_3a

    .line 12201
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_26

    :cond_3a
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public getBinaryMsg()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11869
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->binaryMsg_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 11614
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    .line 11615
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11616
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11618
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11620
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11621
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11622
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11632
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    .line 11633
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11634
    check-cast v0, Ljava/lang/String;

    .line 11635
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11637
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 11640
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getConvType()I
    .locals 1

    .line 11928
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->convType_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1

    .line 13895
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDt()Ljava/lang/String;
    .locals 2

    .line 11713
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    .line 11714
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11715
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11717
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11719
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11720
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11721
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDtBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11731
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    .line 11732
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11733
    check-cast v0, Ljava/lang/String;

    .line 11734
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11736
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    return-object v0

    .line 11739
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFromPeerId()Ljava/lang/String;
    .locals 2

    .line 11483
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    .line 11484
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11485
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11487
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11489
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11490
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11491
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getFromPeerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11501
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    .line 11502
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11503
    check-cast v0, Ljava/lang/String;

    .line 11504
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11506
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    return-object v0

    .line 11509
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 11555
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMore_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 11656
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    .line 11657
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11658
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11660
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11662
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11663
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11664
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11674
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    .line 11675
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11676
    check-cast v0, Ljava/lang/String;

    .line 11677
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11679
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    return-object v0

    .line 11682
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMentionAll()Z
    .locals 1

    .line 11913
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionAll_:Z

    return v0
.end method

.method public getMentionPids(I)Ljava/lang/String;
    .locals 1

    .line 11891
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMentionPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11898
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMentionPidsCount()I
    .locals 1

    .line 11885
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 11879
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getMentionPidsList()Ljava/util/List;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    .line 11399
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    .line 11400
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11401
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11403
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11405
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11406
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11407
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11417
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    .line 11418
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11419
    check-cast v0, Ljava/lang/String;

    .line 11420
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11422
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    return-object v0

    .line 11425
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOffline()Z
    .locals 1

    .line 11540
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->offline_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$DirectCommand;",
            ">;"
        }
    .end annotation

    .line 13891
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPatchTimestamp()J
    .locals 2

    .line 11854
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->patchTimestamp_:J

    return-wide v0
.end method

.method public getPushData()Ljava/lang/String;
    .locals 2

    .line 11797
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    .line 11798
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11799
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11801
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11803
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11804
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11805
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPushDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11815
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    .line 11816
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11817
    check-cast v0, Ljava/lang/String;

    .line 11818
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11820
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    return-object v0

    .line 11823
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getR()Z
    .locals 1

    .line 11599
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->r_:Z

    return v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 2

    .line 11755
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    .line 11756
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11757
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11759
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11761
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11762
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11763
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11773
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    .line 11774
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11775
    check-cast v0, Ljava/lang/String;

    .line 11776
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11778
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    return-object v0

    .line 11781
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 12007
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12011
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 12012
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 12014
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 12015
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 12017
    :cond_2
    iget v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/4 v5, 0x4

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    const/4 v3, 0x3

    .line 12018
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 12020
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v6, 0x8

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_4

    .line 12021
    iget-wide v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->timestamp_:J

    .line 12022
    invoke-static {v5, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 12024
    :cond_4
    iget v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v5, 0x10

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_5

    const/4 v3, 0x5

    .line 12025
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->offline_:Z

    .line 12026
    invoke-static {v3, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    .line 12028
    :cond_5
    iget v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v6, 0x20

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_6

    const/4 v3, 0x6

    .line 12029
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMore_:Z

    .line 12030
    invoke-static {v3, v6}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 12034
    :goto_1
    iget-object v7, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 12035
    iget-object v7, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/Messages$DirectCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v0, v6

    .line 12038
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 12040
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    const/16 v1, 0xa

    .line 12041
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->r_:Z

    .line 12042
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12044
    :cond_8
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    const/16 v1, 0xb

    .line 12045
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12047
    :cond_9
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    const/16 v1, 0xc

    .line 12048
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12050
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    const/16 v1, 0xd

    .line 12051
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->transient_:Z

    .line 12052
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12054
    :cond_b
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_c

    const/16 v1, 0xe

    .line 12055
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12057
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    const/16 v1, 0xf

    .line 12058
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12060
    :cond_d
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_e

    .line 12061
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12063
    :cond_e
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_f

    const/16 v1, 0x11

    .line 12064
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->will_:Z

    .line 12065
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12067
    :cond_f
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_10

    const/16 v1, 0x12

    .line 12068
    iget-wide v5, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->patchTimestamp_:J

    .line 12069
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12071
    :cond_10
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_11

    const/16 v1, 0x13

    .line 12072
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->binaryMsg_:Lcom/google/protobuf/ByteString;

    .line 12073
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    const/4 v1, 0x0

    .line 12077
    :goto_2
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 12078
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/Messages$DirectCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_12
    add-int/2addr v0, v1

    .line 12081
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 12083
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/16 v1, 0x15

    .line 12084
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionAll_:Z

    .line 12085
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12087
    :cond_13
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    const/16 v1, 0x16

    .line 12088
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->convType_:I

    .line 12089
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12091
    :cond_14
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12092
    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 11525
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->timestamp_:J

    return-wide v0
.end method

.method public getToPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 11577
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getToPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11584
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getToPeerIdsCount()I
    .locals 1

    .line 11571
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 11565
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getToPeerIdsList()Ljava/util/List;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getTransient()Z
    .locals 1

    .line 11698
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->transient_:Z

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .line 11441
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    .line 11442
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11443
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11445
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11447
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11448
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11449
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11459
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    .line 11460
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11461
    check-cast v0, Ljava/lang/String;

    .line 11462
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11464
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    return-object v0

    .line 11467
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 11215
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWill()Z
    .locals 1

    .line 11839
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->will_:Z

    return v0
.end method

.method public hasBinaryMsg()Z
    .locals 2

    .line 11863
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 11608
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasConvType()Z
    .locals 2

    .line 11922
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasDt()Z
    .locals 2

    .line 11707
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasFromPeerId()Z
    .locals 2

    .line 11477
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasHasMore()Z
    .locals 2

    .line 11549
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 11650
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasMentionAll()Z
    .locals 2

    .line 11907
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasMsg()Z
    .locals 2

    .line 11393
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOffline()Z
    .locals 2

    .line 11534
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasPatchTimestamp()Z
    .locals 2

    .line 11848
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasPushData()Z
    .locals 2

    .line 11791
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .line 11593
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasRoomId()Z
    .locals 2

    .line 11749
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 11519
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasTransient()Z
    .locals 2

    .line 11692
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasUid()Z
    .locals 2

    .line 11435
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hasWill()Z
    .locals 2

    .line 11833
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 12207
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 12208
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 12211
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12212
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMsg()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 12214
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12216
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasUid()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 12218
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12220
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasFromPeerId()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 12222
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getFromPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12224
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 12227
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTimestamp()J

    move-result-wide v1

    .line 12226
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 12229
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasOffline()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12232
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getOffline()Z

    move-result v1

    .line 12231
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12234
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasHasMore()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12237
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getHasMore()Z

    move-result v1

    .line 12236
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12239
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getToPeerIdsCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 12241
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getToPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12243
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasR()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 12246
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getR()Z

    move-result v1

    .line 12245
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12248
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 12250
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12252
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasId()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 12254
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12256
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasTransient()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 12259
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getTransient()Z

    move-result v1

    .line 12258
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12261
    :cond_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasDt()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 12263
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12265
    :cond_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasRoomId()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 12267
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12269
    :cond_d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPushData()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 12271
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPushData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12273
    :cond_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasWill()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 12276
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getWill()Z

    move-result v1

    .line 12275
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12278
    :cond_f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasPatchTimestamp()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 12281
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getPatchTimestamp()J

    move-result-wide v1

    .line 12280
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 12283
    :cond_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasBinaryMsg()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 12285
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getBinaryMsg()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12287
    :cond_11
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionPidsCount()I

    move-result v1

    if-lez v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 12289
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12291
    :cond_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMentionAll()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 12294
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getMentionAll()Z

    move-result v1

    .line 12293
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12296
    :cond_13
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->hasConvType()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 12298
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->getConvType()I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    mul-int/lit8 v0, v0, 0x1d

    .line 12300
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12301
    iput v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 11381
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$11700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$DirectCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 11382
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 11933
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 11937
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 12375
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->newBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 12390
    new-instance v0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11180
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 2

    .line 12383
    sget-object v0, Lcom/avos/avoscloud/Messages$DirectCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DirectCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 12384
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DirectCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

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

    .line 11943
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 11944
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->msg_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11946
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 11947
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->uid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11949
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 11950
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->fromPeerId_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11952
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11953
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11955
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 11956
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->offline_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11958
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x6

    .line 11959
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->hasMore_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 11961
    :goto_0
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    const/4 v3, 0x7

    .line 11962
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->toPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11964
    :cond_6
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    const/16 v2, 0xa

    .line 11965
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->r_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11967
    :cond_7
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    const/16 v2, 0xb

    .line 11968
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11970
    :cond_8
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0xc

    .line 11971
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->id_:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11973
    :cond_9
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_a

    const/16 v2, 0xd

    .line 11974
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->transient_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11976
    :cond_a
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_b

    const/16 v2, 0xe

    .line 11977
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->dt_:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11979
    :cond_b
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_c

    const/16 v2, 0xf

    .line 11980
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->roomId_:Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11982
    :cond_c
    iget v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v3, 0x1000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 11983
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->pushData_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11985
    :cond_d
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0x11

    .line 11986
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->will_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11988
    :cond_e
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    const/16 v1, 0x12

    .line 11989
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->patchTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11991
    :cond_f
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    const/16 v1, 0x13

    .line 11992
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->binaryMsg_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11994
    :cond_10
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/16 v1, 0x14

    .line 11995
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11997
    :cond_11
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    const/16 v0, 0x15

    .line 11998
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->mentionAll_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12000
    :cond_12
    iget v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    const/16 v0, 0x16

    .line 12001
    iget v1, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->convType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12003
    :cond_13
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DirectCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
