.class public final Lcom/avos/avoscloud/Messages$RcpCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RcpCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RcpCommand;

.field public static final FROM_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$RcpCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READ_FIELD_NUMBER:I = 0x4

.field public static final T_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private volatile from_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private read_:Z

.field private t_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27076
    new-instance v0, Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 27084
    new-instance v0, Lcom/avos/avoscloud/Messages$RcpCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$RcpCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 26123
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 26368
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedIsInitialized:B

    const-string v0, ""

    .line 26124
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    .line 26125
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 26126
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->t_:J

    const/4 v1, 0x0

    .line 26127
    iput-boolean v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->read_:Z

    .line 26128
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26140
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;-><init>()V

    .line 26143
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 26147
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4

    const/16 v4, 0x18

    if-eq v2, v4, :cond_3

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 26153
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$RcpCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 26182
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 26183
    iget v3, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    .line 26184
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    goto :goto_0

    .line 26177
    :cond_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    .line 26178
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->read_:Z

    goto :goto_0

    .line 26172
    :cond_3
    iget v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    .line 26173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->t_:J

    goto :goto_0

    .line 26166
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 26167
    iget v3, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    .line 26168
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    goto :goto_0

    .line 26160
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 26161
    iget v4, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    .line 26162
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26192
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 26193
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 26190
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26195
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 26196
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->makeExtensionsImmutable()V

    throw p1

    .line 26195
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 26196
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26114
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$RcpCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 26121
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 26368
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 26114
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$26700()Z
    .locals 1

    .line 26114
    sget-boolean v0, Lcom/avos/avoscloud/Messages$RcpCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$26900(Lcom/avos/avoscloud/Messages$RcpCommand;)Ljava/lang/Object;
    .locals 0

    .line 26114
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26902(Lcom/avos/avoscloud/Messages$RcpCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26114
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27000(Lcom/avos/avoscloud/Messages$RcpCommand;)Ljava/lang/Object;
    .locals 0

    .line 26114
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27002(Lcom/avos/avoscloud/Messages$RcpCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26114
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27102(Lcom/avos/avoscloud/Messages$RcpCommand;J)J
    .locals 0

    .line 26114
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->t_:J

    return-wide p1
.end method

.method static synthetic access$27202(Lcom/avos/avoscloud/Messages$RcpCommand;Z)Z
    .locals 0

    .line 26114
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->read_:Z

    return p1
.end method

.method static synthetic access$27300(Lcom/avos/avoscloud/Messages$RcpCommand;)Ljava/lang/Object;
    .locals 0

    .line 26114
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27302(Lcom/avos/avoscloud/Messages$RcpCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26114
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27402(Lcom/avos/avoscloud/Messages$RcpCommand;I)I
    .locals 0

    .line 26114
    iput p1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$27500(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 26114
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1

    .line 27080
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26201
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$26300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26571
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26574
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26545
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 26546
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26552
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 26553
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26513
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26519
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26558
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 26559
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26565
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 26566
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26533
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 26534
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26540
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 26541
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26502
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26508
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26523
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26529
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$RcpCommand;",
            ">;"
        }
    .end annotation

    .line 27094
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 26430
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$RcpCommand;

    if-nez v1, :cond_1

    .line 26431
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 26433
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 26436
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasId()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 26437
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasId()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 26438
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getId()Ljava/lang/String;

    move-result-object v1

    .line 26439
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getId()Ljava/lang/String;

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

    .line 26441
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasCid()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 26442
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 26443
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 26444
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getCid()Ljava/lang/String;

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

    .line 26446
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasT()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasT()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 26447
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasT()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 26448
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getT()J

    move-result-wide v1

    .line 26449
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getT()J

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

    .line 26451
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasRead()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasRead()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 26452
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasRead()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 26453
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getRead()Z

    move-result v1

    .line 26454
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getRead()Z

    move-result v2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 26456
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasFrom()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasFrom()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 26457
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasFrom()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 26458
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 26459
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->getFrom()Ljava/lang/String;

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

    .line 26461
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 26266
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    .line 26267
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26268
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 26270
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26272
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26273
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26274
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 26284
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    .line 26285
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26286
    check-cast v0, Ljava/lang/String;

    .line 26287
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26289
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 26292
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1

    .line 27103
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 26114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 26114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 26338
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    .line 26339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26340
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 26342
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26344
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26345
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26346
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 26356
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    .line 26357
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26358
    check-cast v0, Ljava/lang/String;

    .line 26359
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26361
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    return-object v0

    .line 26364
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 26224
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    .line 26225
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26226
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 26228
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 26230
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26231
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26232
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 26242
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    .line 26243
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26244
    check-cast v0, Ljava/lang/String;

    .line 26245
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26247
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    return-object v0

    .line 26250
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
            "Lcom/avos/avoscloud/Messages$RcpCommand;",
            ">;"
        }
    .end annotation

    .line 27099
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRead()Z
    .locals 1

    .line 26323
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->read_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 26399
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 26403
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 26404
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26406
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 26407
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26409
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 26410
    iget-wide v3, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->t_:J

    .line 26411
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26413
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 26414
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->read_:Z

    .line 26415
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26417
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 26418
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26420
    :cond_5
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 26421
    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedSize:I

    return v0
.end method

.method public getT()J
    .locals 2

    .line 26308
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->t_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 26134
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 26260
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

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

    .line 26332
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 26218
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRead()Z
    .locals 2

    .line 26317
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

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

.method public hasT()Z
    .locals 2

    .line 26302
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

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

    .line 26467
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 26468
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 26471
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26472
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 26474
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26476
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 26478
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26480
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasT()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 26483
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getT()J

    move-result-wide v1

    .line 26482
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 26485
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasRead()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 26488
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getRead()Z

    move-result v1

    .line 26487
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26490
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 26492
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 26494
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26495
    iput v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 26206
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$26400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$RcpCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    .line 26207
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 26370
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 26374
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 1

    .line 26569
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->newBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 2

    .line 26584
    new-instance v0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 26114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 26114
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 26114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 2

    .line 26577
    sget-object v0, Lcom/avos/avoscloud/Messages$RcpCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$RcpCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 26578
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 26114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 26114
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$RcpCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

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

    .line 26380
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 26381
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->id_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26383
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 26384
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26386
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 26387
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->t_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26389
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 26390
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->read_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 26392
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 26393
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->from_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 26395
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$RcpCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
