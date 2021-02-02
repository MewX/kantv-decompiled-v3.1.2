.class public final Lcom/avos/avoscloud/Messages$ReadTuple;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadTuple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadTuple;

.field public static final MID_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile mid_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27891
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadTuple;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ReadTuple;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadTuple;

    .line 27899
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadTuple$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ReadTuple$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 27161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 27336
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedIsInitialized:B

    const-string v0, ""

    .line 27162
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 27163
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->timestamp_:J

    .line 27164
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27176
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;-><init>()V

    .line 27179
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 27183
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 27189
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$ReadTuple;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 27207
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 27208
    iget v3, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    .line 27209
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    goto :goto_0

    .line 27202
    :cond_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    .line 27203
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->timestamp_:J

    goto :goto_0

    .line 27196
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 27197
    iget v4, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    .line 27198
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27217
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 27218
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 27215
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27220
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 27221
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->makeExtensionsImmutable()V

    throw p1

    .line 27220
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 27221
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27152
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadTuple;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 27159
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 27336
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 27152
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$28100()Z
    .locals 1

    .line 27152
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ReadTuple;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$28300(Lcom/avos/avoscloud/Messages$ReadTuple;)Ljava/lang/Object;
    .locals 0

    .line 27152
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28302(Lcom/avos/avoscloud/Messages$ReadTuple;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27152
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28402(Lcom/avos/avoscloud/Messages$ReadTuple;J)J
    .locals 0

    .line 27152
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$28500(Lcom/avos/avoscloud/Messages$ReadTuple;)Ljava/lang/Object;
    .locals 0

    .line 27152
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28502(Lcom/avos/avoscloud/Messages$ReadTuple;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27152
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28602(Lcom/avos/avoscloud/Messages$ReadTuple;I)I
    .locals 0

    .line 27152
    iput p1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    return p1
.end method

.method static synthetic access$28700(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 27152
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1

    .line 27895
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27226
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$27700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27511
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadTuple;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27514
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadTuple;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27485
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 27486
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27492
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 27493
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27453
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27459
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27498
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 27499
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27505
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 27506
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27473
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 27474
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27480
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 27481
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27442
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27448
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27463
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27469
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation

    .line 27909
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 27389
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$ReadTuple;

    if-nez v1, :cond_1

    .line 27390
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 27392
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple;

    .line 27395
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasCid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 27396
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 27397
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 27398
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->getCid()Ljava/lang/String;

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

    .line 27400
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 27401
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 27402
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getTimestamp()J

    move-result-wide v1

    .line 27403
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->getTimestamp()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 27405
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasMid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasMid()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 27406
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasMid()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 27407
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 27408
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->getMid()Ljava/lang/String;

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

    .line 27410
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 27249
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    .line 27250
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27251
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 27253
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27255
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27256
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27257
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 27267
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    .line 27268
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27269
    check-cast v0, Ljava/lang/String;

    .line 27270
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27272
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    return-object v0

    .line 27275
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1

    .line 27918
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 27152
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27152
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .line 27306
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    .line 27307
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27308
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 27310
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27312
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27313
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27314
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 27324
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    .line 27325
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27326
    check-cast v0, Ljava/lang/String;

    .line 27327
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27329
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    return-object v0

    .line 27332
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
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation

    .line 27914
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 27365
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 27369
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 27370
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27372
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 27373
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->timestamp_:J

    .line 27374
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 27376
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 27377
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27379
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 27380
    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 27291
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 27170
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 27243
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMid()Z
    .locals 2

    .line 27300
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 27285
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

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

    .line 27416
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 27417
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 27420
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27421
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 27423
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27425
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 27428
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getTimestamp()J

    move-result-wide v1

    .line 27427
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 27430
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasMid()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 27432
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 27434
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27435
    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 27231
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$27800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ReadTuple;

    const-class v2, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    .line 27232
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 27338
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 27342
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->hasCid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27343
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedIsInitialized:B

    return v2

    .line 27346
    :cond_2
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 1

    .line 27509
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadTuple;->newBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 2

    .line 27524
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27152
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->newBuilderForType()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27152
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadTuple;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27152
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->newBuilderForType()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;
    .locals 2

    .line 27517
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadTuple;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 27518
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadTuple;)Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27152
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27152
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$ReadTuple$Builder;

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

    .line 27352
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 27353
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 27355
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 27356
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 27358
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 27359
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->mid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 27361
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
