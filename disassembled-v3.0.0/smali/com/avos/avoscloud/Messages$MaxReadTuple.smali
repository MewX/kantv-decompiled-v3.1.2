.class public final Lcom/avos/avoscloud/Messages$MaxReadTuple;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaxReadTuple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$MaxReadTuple;

.field public static final MAXACKTIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final MAXREADTIMESTAMP_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private maxAckTimestamp_:J

.field private maxReadTimestamp_:J

.field private memoizedIsInitialized:B

.field private volatile pid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28622
    new-instance v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$MaxReadTuple;

    .line 28630
    new-instance v0, Lcom/avos/avoscloud/Messages$MaxReadTuple$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27971
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 28118
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedIsInitialized:B

    const-string v0, ""

    .line 27972
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 27973
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxAckTimestamp_:J

    .line 27974
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxReadTimestamp_:J

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27986
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;-><init>()V

    .line 27989
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 27993
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    .line 27999
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 28017
    :cond_1
    iget v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    .line 28018
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxReadTimestamp_:J

    goto :goto_0

    .line 28012
    :cond_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    .line 28013
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxAckTimestamp_:J

    goto :goto_0

    .line 28006
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 28007
    iget v4, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    .line 28008
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;
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

    .line 28026
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 28027
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28024
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28029
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28030
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->makeExtensionsImmutable()V

    throw p1

    .line 28029
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28030
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27962
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 27969
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 28118
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 27962
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$29300()Z
    .locals 1

    .line 27962
    sget-boolean v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$29500(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Ljava/lang/Object;
    .locals 0

    .line 27962
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$29502(Lcom/avos/avoscloud/Messages$MaxReadTuple;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27962
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29602(Lcom/avos/avoscloud/Messages$MaxReadTuple;J)J
    .locals 0

    .line 27962
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxAckTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$29702(Lcom/avos/avoscloud/Messages$MaxReadTuple;J)J
    .locals 0

    .line 27962
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxReadTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$29802(Lcom/avos/avoscloud/Messages$MaxReadTuple;I)I
    .locals 0

    .line 27962
    iput p1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    return p1
.end method

.method static synthetic access$29900(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 27962
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1

    .line 28626
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28035
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$28900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28291
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$MaxReadTuple;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28294
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$MaxReadTuple;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28265
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 28266
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28272
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 28273
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28233
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28239
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28278
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 28279
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28285
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 28286
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28253
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 28254
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28260
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 28261
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28222
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28228
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28243
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28249
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation

    .line 28640
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28168
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    if-nez v1, :cond_1

    .line 28169
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 28171
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    .line 28174
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasPid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasPid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 28175
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasPid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 28176
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getPid()Ljava/lang/String;

    move-result-object v1

    .line 28177
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getPid()Ljava/lang/String;

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

    .line 28179
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxAckTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxAckTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 28180
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxAckTimestamp()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 28181
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxAckTimestamp()J

    move-result-wide v1

    .line 28182
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxAckTimestamp()J

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

    .line 28184
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxReadTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxReadTimestamp()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 28185
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxReadTimestamp()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 28186
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxReadTimestamp()J

    move-result-wide v1

    .line 28187
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxReadTimestamp()J

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

    .line 28189
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1

    .line 28649
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 27962
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 27962
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAckTimestamp()J
    .locals 2

    .line 28100
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxAckTimestamp_:J

    return-wide v0
.end method

.method public getMaxReadTimestamp()J
    .locals 2

    .line 28115
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxReadTimestamp_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation

    .line 28645
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 2

    .line 28058
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    .line 28059
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28060
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28062
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28064
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28065
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28066
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 28076
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    .line 28077
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28078
    check-cast v0, Ljava/lang/String;

    .line 28079
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28081
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    return-object v0

    .line 28084
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 28143
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 28147
    iget v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 28148
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28150
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 28151
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxAckTimestamp_:J

    .line 28152
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28154
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 28155
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxReadTimestamp_:J

    .line 28156
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28158
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 28159
    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 27980
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMaxAckTimestamp()Z
    .locals 2

    .line 28094
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

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

.method public hasMaxReadTimestamp()Z
    .locals 2

    .line 28109
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

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

.method public hasPid()Z
    .locals 2

    .line 28052
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 28195
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 28196
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 28199
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28200
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasPid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 28202
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28204
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxAckTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 28207
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxAckTimestamp()J

    move-result-wide v1

    .line 28206
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 28209
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->hasMaxReadTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 28212
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getMaxReadTimestamp()J

    move-result-wide v1

    .line 28211
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 28214
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28215
    iput v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 28040
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$29000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    const-class v2, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    .line 28041
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 28120
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 28124
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 28289
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->newBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2

    .line 28304
    new-instance v0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27962
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->newBuilderForType()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 27962
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27962
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->newBuilderForType()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2

    .line 28297
    sget-object v0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$MaxReadTuple;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 28298
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 27962
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 27962
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->toBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

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

    .line 28130
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 28131
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->pid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28133
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 28134
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxAckTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28136
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 28137
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->maxReadTimestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28139
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$MaxReadTuple;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
