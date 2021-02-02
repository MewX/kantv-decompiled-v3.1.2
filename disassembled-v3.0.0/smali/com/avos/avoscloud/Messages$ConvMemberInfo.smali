.class public final Lcom/avos/avoscloud/Messages$ConvMemberInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConvMemberInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

.field public static final INFOID_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PID_FIELD_NUMBER:I = 0x1

.field public static final ROLE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile infoId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile pid_:Ljava/lang/Object;

.field private volatile role_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5808
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 5816
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5013
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5216
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 5014
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    .line 5015
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    .line 5016
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5028
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;-><init>()V

    .line 5031
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 5035
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 5041
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5060
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 5061
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    .line 5062
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    goto :goto_0

    .line 5054
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 5055
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    .line 5056
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    goto :goto_0

    .line 5048
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 5049
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    .line 5050
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;
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

    .line 5070
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5071
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5068
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5073
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->makeExtensionsImmutable()V

    throw p1

    .line 5073
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5004
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5011
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5216
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 5004
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$5300()Z
    .locals 1

    .line 5004
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 5004
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/avos/avoscloud/Messages$ConvMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5004
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 5004
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5602(Lcom/avos/avoscloud/Messages$ConvMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5004
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Ljava/lang/Object;
    .locals 0

    .line 5004
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/avos/avoscloud/Messages$ConvMemberInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5004
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/avos/avoscloud/Messages$ConvMemberInfo;I)I
    .locals 0

    .line 5004
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$5900(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 5004
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1

    .line 5812
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5079
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$4900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5385
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->toBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5388
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->toBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5359
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5360
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5366
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5367
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5327
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5333
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5372
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5373
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5379
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5380
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5347
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5348
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5354
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5355
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5316
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5322
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5337
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5343
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfo;",
            ">;"
        }
    .end annotation

    .line 5826
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5264
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-nez v1, :cond_1

    .line 5265
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5267
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 5270
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasPid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasPid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5271
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasPid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 5272
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    .line 5273
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getPid()Ljava/lang/String;

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

    .line 5275
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasRole()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasRole()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 5276
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasRole()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 5277
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getRole()Ljava/lang/String;

    move-result-object v1

    .line 5278
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getRole()Ljava/lang/String;

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

    .line 5280
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasInfoId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasInfoId()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 5281
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasInfoId()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 5282
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getInfoId()Ljava/lang/String;

    move-result-object v1

    .line 5283
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getInfoId()Ljava/lang/String;

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

    .line 5285
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1

    .line 5835
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInfoId()Ljava/lang/String;
    .locals 2

    .line 5186
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    .line 5187
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5188
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5190
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5192
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5193
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5194
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getInfoIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5204
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    .line 5205
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5206
    check-cast v0, Ljava/lang/String;

    .line 5207
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5209
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    return-object v0

    .line 5212
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
            "Lcom/avos/avoscloud/Messages$ConvMemberInfo;",
            ">;"
        }
    .end annotation

    .line 5831
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 2

    .line 5102
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    .line 5103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5104
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5106
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5108
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5109
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5110
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5120
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    .line 5121
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5122
    check-cast v0, Ljava/lang/String;

    .line 5123
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5125
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    return-object v0

    .line 5128
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 2

    .line 5144
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    .line 5145
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5146
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5148
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5150
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5151
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5152
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getRoleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5162
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    .line 5163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5164
    check-cast v0, Ljava/lang/String;

    .line 5165
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5167
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    return-object v0

    .line 5170
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5241
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5245
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5246
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5248
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5249
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5251
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 5252
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5254
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5255
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5022
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasInfoId()Z
    .locals 2

    .line 5180
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

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

    .line 5096
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRole()Z
    .locals 2

    .line 5138
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

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
    .locals 2

    .line 5291
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 5292
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 5295
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5296
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasPid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 5298
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5300
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasRole()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5302
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5304
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->hasInfoId()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5306
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getInfoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 5308
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5309
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5084
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$5000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    const-class v2, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    .line 5085
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5218
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5222
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 1

    .line 5383
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->newBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 2

    .line 5398
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->newBuilderForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5004
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->newBuilderForType()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 2

    .line 5391
    sget-object v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 5392
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->toBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->toBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5228
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5229
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->pid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5231
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5232
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->role_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5234
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 5235
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->infoId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5237
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
