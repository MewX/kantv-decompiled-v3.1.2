.class public final Lcom/avos/avoscloud/Messages$SessionCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0xc

.field public static final CONFIGBITMAP_FIELD_NUMBER:I = 0x13

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$SessionCommand;

.field public static final DETAIL_FIELD_NUMBER:I = 0x10

.field public static final DEVICEID_FIELD_NUMBER:I = 0x7

.field public static final DEVICETOKEN_FIELD_NUMBER:I = 0xe

.field public static final LASTPATCHTIME_FIELD_NUMBER:I = 0x12

.field public static final LASTUNREADNOTIFTIME_FIELD_NUMBER:I = 0x11

.field public static final N_FIELD_NUMBER:I = 0x2

.field public static final ONLINESESSIONPEERIDS_FIELD_NUMBER:I = 0x9

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$SessionCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REASON_FIELD_NUMBER:I = 0xd

.field public static final R_FIELD_NUMBER:I = 0x5

.field public static final SESSIONPEERIDS_FIELD_NUMBER:I = 0x8

.field public static final SP_FIELD_NUMBER:I = 0xf

.field public static final STTTL_FIELD_NUMBER:I = 0xb

.field public static final ST_FIELD_NUMBER:I = 0xa

.field public static final S_FIELD_NUMBER:I = 0x3

.field public static final TAG_FIELD_NUMBER:I = 0x6

.field public static final T_FIELD_NUMBER:I = 0x1

.field public static final UA_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:I

.field private configBitmap_:J

.field private volatile detail_:Ljava/lang/Object;

.field private volatile deviceId_:Ljava/lang/Object;

.field private volatile deviceToken_:Ljava/lang/Object;

.field private lastPatchTime_:J

.field private lastUnreadNotifTime_:J

.field private memoizedIsInitialized:B

.field private volatile n_:Ljava/lang/Object;

.field private onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private r_:Z

.field private volatile reason_:Ljava/lang/Object;

.field private volatile s_:Ljava/lang/Object;

.field private sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private sp_:Z

.field private stTtl_:I

.field private volatile st_:Ljava/lang/Object;

.field private t_:J

.field private volatile tag_:Ljava/lang/Object;

.field private volatile ua_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9805
    new-instance v0, Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 9813
    new-instance v0, Lcom/avos/avoscloud/Messages$SessionCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$SessionCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 7136
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7885
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedIsInitialized:B

    const-wide/16 v0, 0x0

    .line 7137
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->t_:J

    const-string v2, ""

    .line 7138
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    .line 7139
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    .line 7140
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7141
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->r_:Z

    .line 7142
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    .line 7143
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    .line 7144
    sget-object v4, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 7145
    sget-object v4, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 7146
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    .line 7147
    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->stTtl_:I

    .line 7148
    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->code_:I

    .line 7149
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    .line 7150
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    .line 7151
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sp_:Z

    .line 7152
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    .line 7153
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastUnreadNotifTime_:J

    .line 7154
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastPatchTime_:J

    .line 7155
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->configBitmap_:J

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7167
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;-><init>()V

    .line 7170
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x100

    const/16 v4, 0x80

    if-nez v1, :cond_5

    .line 7174
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    .line 7180
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/avos/avoscloud/Messages$SessionCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 7294
    :sswitch_0
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7295
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->configBitmap_:J

    goto :goto_0

    .line 7289
    :sswitch_1
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7290
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastPatchTime_:J

    goto :goto_0

    .line 7284
    :sswitch_2
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7285
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastUnreadNotifTime_:J

    goto :goto_0

    .line 7278
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7279
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7280
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    goto :goto_0

    .line 7273
    :sswitch_4
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7274
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sp_:Z

    goto :goto_0

    .line 7267
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7268
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7269
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    goto :goto_0

    .line 7261
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7262
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7263
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    goto :goto_0

    .line 7256
    :sswitch_7
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7257
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->code_:I

    goto :goto_0

    .line 7251
    :sswitch_8
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7252
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->stTtl_:I

    goto/16 :goto_0

    .line 7245
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7246
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/2addr v6, v4

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7247
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7236
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    and-int/lit16 v6, v2, 0x100

    if-eq v6, v3, :cond_1

    .line 7238
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x100

    .line 7241
    :cond_1
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 7227
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    and-int/lit16 v6, v2, 0x80

    if-eq v6, v4, :cond_2

    .line 7229
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x80

    .line 7232
    :cond_2
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 7221
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7222
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7223
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7215
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7216
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7217
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7210
    :sswitch_e
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7211
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->r_:Z

    goto/16 :goto_0

    .line 7204
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7205
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7206
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7198
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7199
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7200
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7192
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 7193
    iget v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7194
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 7187
    :sswitch_12
    iget v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    .line 7188
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->t_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_13
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

    .line 7303
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 7304
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7301
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x80

    if-ne p2, v4, :cond_3

    .line 7307
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    :cond_3
    and-int/lit16 p2, v2, 0x100

    if-ne p2, v3, :cond_4

    .line 7310
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 7312
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7313
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v4, :cond_6

    .line 7307
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    :cond_6
    and-int/lit16 p1, v2, 0x100

    if-ne p1, v3, :cond_7

    .line 7310
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 7312
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7313
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x12 -> :sswitch_11
        0x1a -> :sswitch_10
        0x22 -> :sswitch_f
        0x28 -> :sswitch_e
        0x32 -> :sswitch_d
        0x3a -> :sswitch_c
        0x42 -> :sswitch_b
        0x4a -> :sswitch_a
        0x52 -> :sswitch_9
        0x58 -> :sswitch_8
        0x60 -> :sswitch_7
        0x6a -> :sswitch_6
        0x72 -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x88 -> :sswitch_2
        0x90 -> :sswitch_1
        0x98 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7127
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7134
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7885
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 7127
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$7800()Z
    .locals 1

    .line 7127
    sget-boolean v0, Lcom/avos/avoscloud/Messages$SessionCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/avos/avoscloud/Messages$SessionCommand;J)J
    .locals 0

    .line 7127
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->t_:J

    return-wide p1
.end method

.method static synthetic access$8100(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8102(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8202(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8300(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8302(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/avos/avoscloud/Messages$SessionCommand;Z)Z
    .locals 0

    .line 7127
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->r_:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8502(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8602(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$8702(Lcom/avos/avoscloud/Messages$SessionCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$8802(Lcom/avos/avoscloud/Messages$SessionCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$8900(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8902(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/avos/avoscloud/Messages$SessionCommand;I)I
    .locals 0

    .line 7127
    iput p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->stTtl_:I

    return p1
.end method

.method static synthetic access$9102(Lcom/avos/avoscloud/Messages$SessionCommand;I)I
    .locals 0

    .line 7127
    iput p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->code_:I

    return p1
.end method

.method static synthetic access$9200(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9202(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9302(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/avos/avoscloud/Messages$SessionCommand;Z)Z
    .locals 0

    .line 7127
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sp_:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9502(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7127
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/avos/avoscloud/Messages$SessionCommand;J)J
    .locals 0

    .line 7127
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastUnreadNotifTime_:J

    return-wide p1
.end method

.method static synthetic access$9702(Lcom/avos/avoscloud/Messages$SessionCommand;J)J
    .locals 0

    .line 7127
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastPatchTime_:J

    return-wide p1
.end method

.method static synthetic access$9802(Lcom/avos/avoscloud/Messages$SessionCommand;J)J
    .locals 0

    .line 7127
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->configBitmap_:J

    return-wide p1
.end method

.method static synthetic access$9902(Lcom/avos/avoscloud/Messages$SessionCommand;I)I
    .locals 0

    .line 7127
    iput p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1

    .line 9809
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7318
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$7400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8312
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->toBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8315
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->toBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8286
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 8287
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8293
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 8294
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8254
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8260
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8299
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 8300
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8306
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 8307
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8274
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 8275
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8281
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 8282
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8243
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8249
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8264
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8270
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$SessionCommand;",
            ">;"
        }
    .end annotation

    .line 9823
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8047
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$SessionCommand;

    if-nez v1, :cond_1

    .line 8048
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8050
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 8053
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasT()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasT()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8054
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasT()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 8055
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getT()J

    move-result-wide v1

    .line 8056
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getT()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 8058
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasN()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasN()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 8059
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasN()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 8060
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getN()Ljava/lang/String;

    move-result-object v1

    .line 8061
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getN()Ljava/lang/String;

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

    .line 8063
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasS()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasS()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 8064
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasS()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 8065
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getS()Ljava/lang/String;

    move-result-object v1

    .line 8066
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getS()Ljava/lang/String;

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

    .line 8068
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasUa()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasUa()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 8069
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasUa()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 8070
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getUa()Ljava/lang/String;

    move-result-object v1

    .line 8071
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getUa()Ljava/lang/String;

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

    .line 8073
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasR()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasR()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 8074
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasR()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 8075
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getR()Z

    move-result v1

    .line 8076
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getR()Z

    move-result v2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 8078
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasTag()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasTag()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 8079
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasTag()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 8080
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 8081
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getTag()Ljava/lang/String;

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

    .line 8083
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceId()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 8084
    :goto_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 8085
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 8086
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceId()Ljava/lang/String;

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

    .line 8088
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 8089
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_18

    .line 8090
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 8091
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_19

    .line 8092
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSt()Z

    move-result v2

    if-ne v1, v2, :cond_19

    const/4 v1, 0x1

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    .line 8093
    :goto_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSt()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v1, :cond_1a

    .line 8094
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSt()Ljava/lang/String;

    move-result-object v1

    .line 8095
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_11
    if-eqz v1, :cond_1c

    .line 8097
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasStTtl()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasStTtl()Z

    move-result v2

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    .line 8098
    :goto_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasStTtl()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v1, :cond_1d

    .line 8099
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getStTtl()I

    move-result v1

    .line 8100
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getStTtl()I

    move-result v2

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_13

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_13
    if-eqz v1, :cond_1f

    .line 8102
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasCode()Z

    move-result v2

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_14

    :cond_1f
    const/4 v1, 0x0

    .line 8103
    :goto_14
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasCode()Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz v1, :cond_20

    .line 8104
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getCode()I

    move-result v1

    .line 8105
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_15
    if-eqz v1, :cond_22

    .line 8107
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasReason()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasReason()Z

    move-result v2

    if-ne v1, v2, :cond_22

    const/4 v1, 0x1

    goto :goto_16

    :cond_22
    const/4 v1, 0x0

    .line 8108
    :goto_16
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_24

    if-eqz v1, :cond_23

    .line 8109
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 8110
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_17

    :cond_23
    const/4 v1, 0x0

    :cond_24
    :goto_17
    if-eqz v1, :cond_25

    .line 8112
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceToken()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceToken()Z

    move-result v2

    if-ne v1, v2, :cond_25

    const/4 v1, 0x1

    goto :goto_18

    :cond_25
    const/4 v1, 0x0

    .line 8113
    :goto_18
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceToken()Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v1, :cond_26

    .line 8114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    .line 8115
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_19

    :cond_26
    const/4 v1, 0x0

    :cond_27
    :goto_19
    if-eqz v1, :cond_28

    .line 8117
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSp()Z

    move-result v2

    if-ne v1, v2, :cond_28

    const/4 v1, 0x1

    goto :goto_1a

    :cond_28
    const/4 v1, 0x0

    .line 8118
    :goto_1a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSp()Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v1, :cond_29

    .line 8119
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSp()Z

    move-result v1

    .line 8120
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSp()Z

    move-result v2

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    goto :goto_1b

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_1b
    if-eqz v1, :cond_2b

    .line 8122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDetail()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDetail()Z

    move-result v2

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v1, 0x0

    .line 8123
    :goto_1c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDetail()Z

    move-result v2

    if-eqz v2, :cond_2d

    if-eqz v1, :cond_2c

    .line 8124
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDetail()Ljava/lang/String;

    move-result-object v1

    .line 8125
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_2c
    const/4 v1, 0x0

    :cond_2d
    :goto_1d
    if-eqz v1, :cond_2e

    .line 8127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastUnreadNotifTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastUnreadNotifTime()Z

    move-result v2

    if-ne v1, v2, :cond_2e

    const/4 v1, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v1, 0x0

    .line 8128
    :goto_1e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastUnreadNotifTime()Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v1, :cond_2f

    .line 8129
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastUnreadNotifTime()J

    move-result-wide v1

    .line 8130
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastUnreadNotifTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_2f

    const/4 v1, 0x1

    goto :goto_1f

    :cond_2f
    const/4 v1, 0x0

    :cond_30
    :goto_1f
    if-eqz v1, :cond_31

    .line 8132
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastPatchTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastPatchTime()Z

    move-result v2

    if-ne v1, v2, :cond_31

    const/4 v1, 0x1

    goto :goto_20

    :cond_31
    const/4 v1, 0x0

    .line 8133
    :goto_20
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastPatchTime()Z

    move-result v2

    if-eqz v2, :cond_33

    if-eqz v1, :cond_32

    .line 8134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastPatchTime()J

    move-result-wide v1

    .line 8135
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastPatchTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_32

    const/4 v1, 0x1

    goto :goto_21

    :cond_32
    const/4 v1, 0x0

    :cond_33
    :goto_21
    if-eqz v1, :cond_34

    .line 8137
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasConfigBitmap()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasConfigBitmap()Z

    move-result v2

    if-ne v1, v2, :cond_34

    const/4 v1, 0x1

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    .line 8138
    :goto_22
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasConfigBitmap()Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz v1, :cond_35

    .line 8139
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getConfigBitmap()J

    move-result-wide v1

    .line 8140
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getConfigBitmap()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_35

    const/4 v1, 0x1

    goto :goto_23

    :cond_35
    const/4 v1, 0x0

    :cond_36
    :goto_23
    if-eqz v1, :cond_37

    .line 8142
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_24

    :cond_37
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 7696
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->code_:I

    return v0
.end method

.method public getConfigBitmap()J
    .locals 2

    .line 7882
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->configBitmap_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1

    .line 9832
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 2

    .line 7810
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    .line 7811
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7812
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7814
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7816
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7817
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7818
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7828
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    .line 7829
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7830
    check-cast v0, Ljava/lang/String;

    .line 7831
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7833
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    return-object v0

    .line 7836
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 7539
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    .line 7540
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7541
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7543
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7545
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7546
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7547
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7557
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    .line 7558
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7559
    check-cast v0, Ljava/lang/String;

    .line 7560
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7562
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 7565
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 2

    .line 7753
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    .line 7754
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7755
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7757
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7759
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7760
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7761
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7771
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    .line 7772
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7773
    check-cast v0, Ljava/lang/String;

    .line 7774
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7776
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    return-object v0

    .line 7779
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastPatchTime()J
    .locals 2

    .line 7867
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastPatchTime_:J

    return-wide v0
.end method

.method public getLastUnreadNotifTime()J
    .locals 2

    .line 7852
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastUnreadNotifTime_:J

    return-wide v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 7356
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    .line 7357
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7358
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7360
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7362
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7363
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7364
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7374
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    .line 7375
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7376
    check-cast v0, Ljava/lang/String;

    .line 7377
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7379
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    return-object v0

    .line 7382
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOnlineSessionPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 7617
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOnlineSessionPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7624
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOnlineSessionPeerIdsCount()I
    .locals 1

    .line 7611
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 7605
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getOnlineSessionPeerIdsList()Ljava/util/List;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$SessionCommand;",
            ">;"
        }
    .end annotation

    .line 9828
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getR()Z
    .locals 1

    .line 7482
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->r_:Z

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 7711
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    .line 7712
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7713
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7715
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7717
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7718
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7719
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7729
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    .line 7730
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7731
    check-cast v0, Ljava/lang/String;

    .line 7732
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7734
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    return-object v0

    .line 7737
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 7398
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    .line 7399
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7400
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7402
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7404
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7405
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7406
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7416
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    .line 7417
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7418
    check-cast v0, Ljava/lang/String;

    .line 7419
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7421
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    return-object v0

    .line 7424
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 7958
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7962
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 7963
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->t_:J

    .line 7964
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7966
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 7967
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7969
    :cond_2
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 7970
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7972
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 7973
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7975
    :cond_4
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    .line 7976
    iget-boolean v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->r_:Z

    .line 7977
    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    .line 7979
    :cond_5
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v5, 0x20

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_6

    const/4 v3, 0x6

    .line 7980
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7982
    :cond_6
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v5, 0x40

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_7

    const/4 v3, 0x7

    .line 7983
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 7987
    :goto_1
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 7988
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/avos/avoscloud/Messages$SessionCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    add-int/2addr v0, v5

    .line 7991
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 7995
    :goto_2
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 7996
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$SessionCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v3

    .line 7999
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 8001
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 8002
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8004
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 8005
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->stTtl_:I

    .line 8006
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8008
    :cond_b
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    .line 8009
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->code_:I

    .line 8010
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8012
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    .line 8013
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8015
    :cond_d
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    .line 8016
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8018
    :cond_e
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    const/16 v1, 0xf

    .line 8019
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sp_:Z

    .line 8020
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8022
    :cond_f
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    .line 8023
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8025
    :cond_10
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_11

    const/16 v1, 0x11

    .line 8026
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastUnreadNotifTime_:J

    .line 8027
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8029
    :cond_11
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    const/16 v1, 0x12

    .line 8030
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastPatchTime_:J

    .line 8031
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8033
    :cond_12
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/16 v1, 0x13

    .line 8034
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->configBitmap_:J

    .line 8035
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8037
    :cond_13
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 8038
    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedSize:I

    return v0
.end method

.method public getSessionPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 7588
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSessionPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7595
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSessionPeerIdsCount()I
    .locals 1

    .line 7582
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 7576
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getSessionPeerIdsList()Ljava/util/List;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getSp()Z
    .locals 1

    .line 7795
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sp_:Z

    return v0
.end method

.method public getSt()Ljava/lang/String;
    .locals 2

    .line 7639
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    .line 7640
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7641
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7643
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7645
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7646
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7647
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getStBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7657
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    .line 7658
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7659
    check-cast v0, Ljava/lang/String;

    .line 7660
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7662
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    return-object v0

    .line 7665
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStTtl()I
    .locals 1

    .line 7681
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->stTtl_:I

    return v0
.end method

.method public getT()J
    .locals 2

    .line 7341
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->t_:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 7497
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    .line 7498
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7499
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7501
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7503
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7504
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7505
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTagBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7515
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    .line 7516
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7517
    check-cast v0, Ljava/lang/String;

    .line 7518
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7520
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    return-object v0

    .line 7523
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 2

    .line 7440
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    .line 7441
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7442
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 7444
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7446
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7447
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7448
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7458
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    .line 7459
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7460
    check-cast v0, Ljava/lang/String;

    .line 7461
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7463
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    return-object v0

    .line 7466
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 7161
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    .line 7690
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasConfigBitmap()Z
    .locals 2

    .line 7876
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasDetail()Z
    .locals 2

    .line 7804
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .line 7533
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasDeviceToken()Z
    .locals 2

    .line 7747
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasLastPatchTime()Z
    .locals 2

    .line 7861
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasLastUnreadNotifTime()Z
    .locals 2

    .line 7846
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasN()Z
    .locals 2

    .line 7350
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .line 7476
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasReason()Z
    .locals 2

    .line 7705
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasS()Z
    .locals 2

    .line 7392
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasSp()Z
    .locals 2

    .line 7789
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasSt()Z
    .locals 2

    .line 7633
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasStTtl()Z
    .locals 2

    .line 7675
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

    .line 7335
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTag()Z
    .locals 2

    .line 7491
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hasUa()Z
    .locals 2

    .line 7434
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 8148
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 8149
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 8152
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8153
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasT()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 8156
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getT()J

    move-result-wide v1

    .line 8155
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 8158
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasN()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 8160
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8162
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasS()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8164
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8166
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasUa()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8168
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getUa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8170
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasR()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 8173
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getR()Z

    move-result v1

    .line 8172
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8175
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8177
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8179
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceId()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 8181
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8183
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSessionPeerIdsCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 8185
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8187
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getOnlineSessionPeerIdsCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 8189
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8191
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSt()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 8193
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8195
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasStTtl()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 8197
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getStTtl()I

    move-result v1

    add-int/2addr v0, v1

    .line 8199
    :cond_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 8201
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8203
    :cond_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 8205
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8207
    :cond_d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceToken()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 8209
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8211
    :cond_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSp()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 8214
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSp()Z

    move-result v1

    .line 8213
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8216
    :cond_f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDetail()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 8218
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8220
    :cond_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastUnreadNotifTime()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 8223
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastUnreadNotifTime()J

    move-result-wide v1

    .line 8222
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 8225
    :cond_11
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastPatchTime()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 8228
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastPatchTime()J

    move-result-wide v1

    .line 8227
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 8230
    :cond_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasConfigBitmap()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 8233
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getConfigBitmap()J

    move-result-wide v1

    .line 8232
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    mul-int/lit8 v0, v0, 0x1d

    .line 8235
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8236
    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 7323
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$7500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$SessionCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 7324
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7887
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7891
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8310
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->newBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 8325
    new-instance v0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7127
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 8318
    sget-object v0, Lcom/avos/avoscloud/Messages$SessionCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$SessionCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 8319
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->toBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand;->toBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

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

    .line 7897
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7898
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->t_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7900
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7901
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->n_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7903
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7904
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->s_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7906
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 7907
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->ua_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7909
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 7910
    iget-boolean v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->r_:Z

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7912
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    const/4 v0, 0x6

    .line 7913
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->tag_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7915
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x7

    .line 7916
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceId_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 7918
    :goto_0
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 7919
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7921
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    const/16 v2, 0x9

    .line 7922
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7924
    :cond_8
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_9

    const/16 v0, 0xa

    .line 7925
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->st_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7927
    :cond_9
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_a

    const/16 v0, 0xb

    .line 7928
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->stTtl_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7930
    :cond_a
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_b

    const/16 v0, 0xc

    .line 7931
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->code_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7933
    :cond_b
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    const/16 v0, 0xd

    .line 7934
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->reason_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7936
    :cond_c
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    const/16 v0, 0xe

    .line 7937
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->deviceToken_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7939
    :cond_d
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    const/16 v0, 0xf

    .line 7940
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->sp_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7942
    :cond_e
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_f

    .line 7943
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->detail_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7945
    :cond_f
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_10

    const/16 v0, 0x11

    .line 7946
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastUnreadNotifTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7948
    :cond_10
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    const/16 v0, 0x12

    .line 7949
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->lastPatchTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7951
    :cond_11
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    const/16 v0, 0x13

    .line 7952
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->configBitmap_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7954
    :cond_12
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
